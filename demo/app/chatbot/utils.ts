export function textToHtml(text: string): string {
    const lines = text.split('\n');
    let html = '';
    let currentIndentation = 0;

    const processInlineMarkdown = (line: string): string => {
        let processed = line.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (match, textContent, url) => {
            return `<a href="${url.trim()}" style="color:blue;" target="_blank">${textContent.trim()}</a>`;
        });
        processed = processed.replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>');
        return processed.trim();
    };

    const getIndentationLevel = (line: string): number => {
        const leadingChars = line.match(/^(\s|\t| )*/)?.[0] || '';
        let level = 0;
        // Assegna un peso: 2 per spazio standard/tab, 4 per spazio non-breaking (usato nel testo)
        for (const char of leadingChars) {
            if (char === ' ' || char === '\t') level += 1;
            else if (char === ' ') level += 4; // Spazio non-breaking (come *   )
        }
        return Math.floor(level / 4); // Livello di base per * è 0
    };

    const closeLists = (targetLevel: number) => {
        while (currentIndentation > targetLevel) {
            html += '</ul>\n';
            currentIndentation--;
        }
    };

    for (const rawLine of lines) {
        let line = rawLine.trim();
        const listItemMatch = rawLine.match(/^(\s|\t| )*(\*|\-)\s/);

        if (line === '') {
            if (rawLine.trim() === '') {
                closeLists(0);
                continue;
            }
        }

        // --- Regole Orizzontali ---
        if (line === '---') {
            closeLists(0);
            html += '<br><hr><br>\n';
            continue;
        }

        // --- Intestazioni ---
        if (line.startsWith('#### ')) {
            closeLists(0);
            html += `<h4>${processInlineMarkdown(line.substring(5))}</h4>\n`;
            continue;
        }
        if (line.startsWith('### ')) {
            closeLists(0);
            html += `<h3>${processInlineMarkdown(line.substring(4))}</h3>\n`;
            continue;
        }
        if (line.startsWith('## ')) {
            closeLists(0);
            html += `<h2>${processInlineMarkdown(line.substring(3))}</h2>\n`;
            continue;
        }

        // --- Gestione Liste Annidate ---
        if (listItemMatch) {
            let lineContent = rawLine.substring(listItemMatch[0].length).trim();
            const rawIndentation = rawLine.indexOf(listItemMatch[0]);

            // Definisce un livello basato sull'identazione (es. 0 per il primo *, 1 per il secondo)
            const newLevel = Math.floor(rawIndentation / 4);

            if (newLevel > currentIndentation) {
                // Nuova lista annidata
                html += '<ul>\n';
                currentIndentation++;
            } else {
                // Chiude liste se l'indentazione è inferiore
                closeLists(newLevel);
                currentIndentation = newLevel; // Allinea il livello
            }

            // Aggiunge l'elemento della lista
            html += `  <li>${processInlineMarkdown(lineContent)}</li>\n`;
            continue;
        }

        // Chiude liste aperte se la linea non è un elemento di lista
        closeLists(0);

        // --- Paragrafi ---
        const processedLine = processInlineMarkdown(line);
        if (processedLine) {
            html += `<p>${processedLine}</p>\n`;
        }
    }

    // Chiude qualsiasi lista rimasta aperta
    closeLists(0);

    return html;
}

export const requestAppend = " Prioritize comfort while minimizing costs as much as possible. give me all the direct links to book things and prices and give me the direct links to book things so i can avoid research on my own. Dont give me any disclamers"

export const prompt: string = "Propose a 10 - day itinerary, from the 3rd of January, for me and my wife to South Korea, including flight and hotel recommendations.We want to visit historic museums and major cities for shopping, with no city - to - city travel exceeding 2 hours.End each day at a fancy dinner restaurant not far from the place we are visiting."

export const response: string = "Here is your 10-day South Korea itinerary, starting January 3rd, with flight, hotel, and fancy dinner recommendations, including direct booking links and prices retrieved on December 10, 2023.\n\n---\n\n**Flight Recommendation (Los Angeles - Incheon, South Korea)**\n\n*   **Route:** Los Angeles (LAX) to Incheon (ICN)\n*   **Dates:** Depart January 2, 2024 (arrives Jan 3, 2024) - Return January 12, 2024\n*   **Airline:** Korean Air (Direct Flight)\n*   **Estimated Price:** $2,900 per person ($5,800 for two people) for economy class.\n*   **Booking Link:** [https://www.google.com/flights#flt=/m/04k7b.ICN.2024-01-02*ICN./m/04k7b.2024-01-12;c:USD;e:1;sd:1;t:f](https://www.google.com/flights#flt=/m/04k7b.ICN.2024-01-02*ICN./m/04k7b.2024-01-12;c:USD;e:1;sd:1;t:f) (Click on the Korean Air flight option to proceed to the airline's website for booking).\n\n---\n\n**Hotel Recommendations (for 2 adults)**\n\n**Seoul Hotel (8 nights: Jan 3-6 & Jan 9-11)**\n*   **Name:** L7 Myeongdong by Lotte\n*   **Location:** Myeongdong (Excellent for shopping, dining, and central metro access)\n*   **Estimated Price:** $180 - $250 per night (Total for 8 nights: ~$1,600 - $2,000)\n*   **Booking Link:** [https://www.booking.com/hotel/kr/l7-myeongdong.en.html](https://www.booking.com/hotel/kr/l7-myeongdong.en.html)\n\n**Gyeongju Hotel (2 nights: Jan 7-8)**\n*   **Name:** Hilton Gyeongju\n*   **Location:** Bomun Lake Resort (Scenic, convenient for historical sites by short taxi/bus ride)\n*   **Estimated Price:** $150 - $200 per night (Total for 2 nights: ~$300 - $400)\n*   **Booking Link:** [https://www.booking.com/hotel/kr/hilton-gyeongju.en.html](https://www.booking.com/hotel/kr/hilton-gyeongju.en.html)\n\n---\n\n**Local Transportation in Korea**\n\n*   **AREX Express Train (Airport to Seoul Station):** ~$8-10 per person, one-way.\n    *   **Booking Link:** [https://www.arex.or.kr/main.do](https://www.arex.or.kr/main.do) (Tickets can also be purchased upon arrival).\n*   **KTX (High-Speed Rail) for Seoul-Gyeongju:**\n    *   **Estimated Price:** ~$45-50 per person, one-way (Standard Class). Total for two, round trip: ~$180-200.\n    *   **Booking Link:** [https://www.letskorail.com/ebizbf/EbizbfIndex_eng.do](https://www.letskorail.com/ebizbf/EbizbfIndex_eng.do)\n*   **T-Money Card (Subway, Bus):** Purchase at convenience stores or metro stations, ~$4-5 per card, then load funds.\n\n---\n\n**10-Day South Korea Itinerary: January 3rd - January 12th**\n\n**Day 1: January 3rd (Arrival in Seoul & Myeongdong Exploration)**\n\n*   **Morning/Afternoon:** Arrive at Incheon International Airport (ICN). Take the AREX Express Train to Seoul Station, then transfer to the subway to L7 Myeongdong by Lotte. Check-in and settle into your room. Obtain a T-Money card.\n*   **Afternoon:** Begin your Seoul adventure by exploring the vibrant **Myeongdong** district. Enjoy street food, browse the numerous cosmetics and fashion shops.\n*   **Evening:**\n    *   **Fancy Dinner:** **Jungsik (정식당)** - Michelin 2-star, renowned for its innovative modern Korean cuisine.\n        *   **Cuisine:** Modern Korean Fine Dining\n        *   **Location:** Gangnam (approx. 15-20 minutes by subway from Myeongdong).\n        *   **Estimated Price:** ~$300-500 for two (tasting menu).\n        *   **Booking Link:** [https://www.jungsik.kr/](https://www.jungsik.kr/) (Click 'Reservation').\n\n**Day 2: January 4th (Palaces & Traditional Seoul)**\n\n*   **Morning:** Visit **Gyeongbokgung Palace**, the grandest of Seoul's five royal palaces. Witness the ceremonial changing of the guard (10 AM or 2 PM). Explore the National Folk Museum of Korea within the palace grounds.\n    *   **Admission:** Gyeongbokgung Palace ~$3 per person.\n*   **Afternoon:** Wander through the charming alleys of **Bukchon Hanok Village**, featuring traditional Korean houses. Enjoy a serene tea ceremony at a traditional tea house. Afterwards, explore the artisan shops and galleries of **Insadong**.\n*   **Evening:**\n    *   **Fancy Dinner:** **La Yeon (라연)** - Michelin 3-star, offering exquisite traditional Korean cuisine with elegant presentation.\n        *   **Cuisine:** Traditional Korean Fine Dining\n        *   **Location:** The Shilla Seoul hotel, near Dongguk University station (short taxi/subway ride from Insadong).\n        *   **Estimated Price:** ~$400-600 for two (tasting menu).\n        *   **Booking Link:** [https://www.shillareservations.com/reservation/main.do?lang=en&hosp=SEOUL&rest_seq=51](https://www.shillareservations.com/reservation/main.do?lang=en&hosp=SEOUL&rest_seq=51)\n\n**Day 3: January 5th (National History & War Memorial)**\n\n*   **Morning:** Delve into Korean history and culture at the **National Museum of Korea**, the country's largest museum with vast collections.\n    *   **Admission:** Free for permanent exhibitions.\n*   **Afternoon:** Visit the **War Memorial of Korea**, a comprehensive museum detailing Korea's military history, particularly focusing on the Korean War.\n    *   **Admission:** Free.\n*   **Evening:**\n    *   **Fancy Dinner:** **Kwon Sook Soo (권숙수)** - Michelin 2-star, known for its contemporary reinterpretation of Korean traditional cuisine.\n        *   **Cuisine:** Contemporary Korean Fine Dining\n        *   **Location:** Gangnam (accessible by subway/taxi from the War Memorial area).\n        *   **Estimated Price:** ~$300-450 for two (tasting menu).\n        *   **Booking Link:** [https://kwonsooksoo.com/reservation](https://kwonsooksoo.com/reservation) (Click 'Reservation').\n\n**Day 4: January 6th (Modern Seoul & Shopping)**\n\n*   **Morning:** Experience the trendy **Gangnam** district. Explore high-end shopping streets like Garosu-gil and Apgujeong Rodeo Street. Visit the stunning **Starfield Library** inside COEX Mall.\n*   **Afternoon:** Ascend the **Lotte World Tower** to **Seoul Sky** observation deck for breathtaking panoramic views of the city. Afterwards, explore the luxury shops within Lotte World Mall.\n    *   **Seoul Sky Admission:** ~$25-30 per person.\n*   **Evening:**\n    *   **Fancy Dinner:** **Bicena (비채나)** - Michelin 3-star, offering refined Korean cuisine on the 81st floor of Lotte World Tower, providing spectacular city views.\n        *   **Cuisine:** Korean Fine Dining\n        *   **Location:** Lotte World Tower, 81st floor (conveniently located after your activities).\n        *   **Estimated Price:** ~$400-600 for two (tasting menu).\n        *   **Booking Link:** [https://www.lottehotel.com/seoul-signiel/en/dining/restaurant-bicena.html](https://www.lottehotel.com/seoul-signiel/en/dining/restaurant-bicena.html) (Click 'Reservations').\n\n**Day 5: January 7th (Day Trip to Suwon's Fortress)**\n\n*   **Morning/Afternoon:** Take a comfortable subway/train ride to **Suwon** (Line 1 from Seoul Station, ~35-45 minutes, ~$2-3 per person). Explore **Hwaseong Fortress**, a UNESCO World Heritage site. Walk along its impressive walls, visit Hwaseong Haenggung Palace, and enjoy the historical ambiance.\n    *   **Admission:** Hwaseong Fortress ~$2 per person.\n*   **Evening (Back in Seoul):**\n    *   **Fancy Dinner:** **Gaon (가온)** - Michelin 3-star, offering an unparalleled traditional Korean dining experience with exquisite plating and service.\n        *   **Cuisine:** Traditional Korean Fine Dining\n        *   **Location:** Cheongdam-dong, Gangnam (accessible by subway/taxi).\n        *   **Estimated Price:** ~$500-800 for two (tasting menu).\n        *   **Booking Link:** [https://www.gaonkr.com/en/](https://www.gaonkr.com/en/) (Click 'Reservation').\n\n**Day 6: January 8th (Travel to Gyeongju & Bulguksa Temple)**\n\n*   **Morning:** Check out from your Seoul hotel. Take the KTX from Seoul Station to Singyeongju Station.\n    *   **KTX Travel Time:** ~2 hours.\n    *   **KTX Booking Link:** [https://www.letskorail.com/ebizbf/EbizbfIndex_eng.do](https://www.letskorail.com/ebizbf/EbizbfIndex_eng.do)\n*   **Afternoon:** Arrive in Singyeongju, then take a taxi to Hilton Gyeongju and check in. Visit **Bulguksa Temple**, a magnificent UNESCO World Heritage Buddhist temple and one of Korea's most iconic historical sites.\n    *   **Admission:** ~$5 per person.\n*   **Evening:**\n    *   **Fancy Dinner:** **Mingban (명반)** - A highly-rated restaurant in Gyeongju offering refined Korean dishes.\n        *   **Cuisine:** Korean\n        *   **Location:** Near Bomun Lake (short taxi ride from Hilton Gyeongju).\n        *   **Estimated Price:** ~$100-150 for two.\n        *   **Info (Naver Map link for location):** [https://map.naver.com/p/search/%EA%B2%BD%EC%A3%BC%20%EB%AA%85%EB%B0%98/place/17395632?c=15.00,0,0,0,dh](https://map.naver.com/p/search/%EA%B2%BD%EC%A3%BC%20%EB%AA%85%EB%B0%98/place/17395632?c=15.00,0,0,0,dh)\n\n**Day 7: January 9th (Gyeongju UNESCO Wonders)**\n\n*   **Morning:** Visit **Seokguram Grotto**, a UNESCO World Heritage site housing a monumental Buddha statue within a granite temple. Accessible by bus from Bulguksa or taxi.\n    *   **Admission:** ~$5 per person.\n*   **Afternoon:** Explore the **Daereungwon Tomb Complex (Tumuli Park)**, home to ancient Silla burial mounds, including the famous Cheonmachong Tomb. Afterwards, visit **Donggung Palace and Wolji Pond (Anapji Pond)**, especially beautiful as dusk falls.\n    *   **Admission:** Tumuli Park ~$3 per person, Anapji Pond ~$3 per person.\n*   **Evening:**\n    *   **Fancy Dinner:** **Yosukgung (요석궁)** - Enjoy a traditional Korean royal cuisine experience in an authentic Hanok (traditional Korean house) setting.\n        *   **Cuisine:** Traditional Korean Royal Cuisine\n        *   **Location:** Gyeongju city center (taxi from Bomun Lake).\n        *   **Estimated Price:** ~$150-250 for two.\n        *   **Info (Naver Map link for location):** [https://map.naver.com/p/search/%EA%B2%BD%EC%A3%BC%20%EC%9A%94%EC%84%9D%EA%B6%81/place/13350293?c=15.00,0,0,0,dh](https://map.naver.com/p/search/%EA%B2%BD%EC%A3%BC%20%EC%9A%94%EC%84%9D%EA%B6%81/place/13350293?c=15.00,0,0,0,dh)\n\n**Day 8: January 10th (Return to Seoul & Cultural Charm)**\n\n*   **Morning:** Check out from your Gyeongju hotel. Take the KTX from Singyeongju Station back to Seoul Station.\n    *   **KTX Travel Time:** ~2 hours.\n*   **Afternoon:** Arrive in Seoul and check back into L7 Myeongdong by Lotte. Visit **Changdeokgung Palace** and its exquisite **Secret Huwon Garden** (UNESCO World Heritage). It is recommended to book Huwon Garden tickets in advance.\n    *   **Admission:** Changdeokgung Palace ~$3 per person, Huwon Garden ~$5 per person.\n*   **Evening:**\n    *   **Fancy Dinner:** **Mingles (밍글스)** - Michelin 2-star, renowned for its modern Korean cuisine infused with global culinary influences.\n        *   **Cuisine:** Modern Korean Fine Dining\n        *   **Location:** Gangnam (accessible by subway/taxi).\n        *   **Estimated Price:** ~$350-500 for two (tasting menu).\n        *   **Booking Link:** [https://www.restaurantmingles.com/reservation](https://www.restaurantmingles.com/reservation)\n\n**Day 9: January 11th (Art, Fashion & Last-Minute Shopping)**\n\n*   **Morning:** Explore the youthful and trendy neighborhoods of **Hongdae** or **Ewha Womans University Street**. Discover unique fashion boutiques, charming cafes, and vibrant street art.\n*   **Afternoon:** Immerse yourselves in contemporary art at the **Leeum, Samsung Museum of Art** (booking may be required). Alternatively, revisit Myeongdong or Insadong for any last-minute souvenir shopping.\n    *   **Admission (Leeum):** ~$10-15 per person.\n*   **Evening:**\n    *   **Fancy Dinner:** **Onjium (온지음)** - Michelin 1-star, focusing on authentic traditional Korean imperial court cuisine, showcasing Korea's culinary heritage.\n        *   **Cuisine:** Traditional Korean Fine Dining\n        *   **Location:** Jongno (accessible by subway/taxi, relatively close to Insadong).\n        *   **Estimated Price:** ~$300-450 for two (tasting menu).\n        *   **Booking Link:** [https://www.onjium.org/dining](https://www.onjium.org/dining) (Click 'Reservation').\n\n**Day 10: January 12th (Departure)**\n\n*   **Morning:** Enjoy a final Korean breakfast. Depending on your flight schedule, you can do some last-minute souvenir shopping or revisit a favorite spot.\n*   **Late Morning/Noon:** Check out from L7 Myeongdong by Lotte.\n*   **Afternoon:** Take the AREX Express Train from Seoul Station to Incheon International Airport (ICN) for your departure home.\n\n---\n\n**Summary of Estimated Costs (for 2 people, based on prices retrieved December 10, 2023)**\n\n*   **Flights (LAX-ICN round trip):** ~$5,800\n*   **Hotels (10 nights):** ~$1,950\n*   **Inter-city KTX (Seoul-Gyeongju round trip):** ~$200\n*   **Local Transportation (AREX, subway, bus, taxis):** ~$150-200\n*   **Admissions to sites:** ~$100\n*   **Fancy Dinners (9 meals):** ~$2,250 - $4,500 (average $3,500)\n*   **Other Meals/Shopping/Miscellaneous:** ~$1,250 (estimated at $125 per day)\n\n**Total Estimated Cost for 2 people: ~$13,000**"