export function textToHtml(text: string): string {
    const lines = text.split('\n');
    let html = '';
    let currentIndentation = 0;

    const processInlineMarkdown = (line: string): string => {
        let processed = line.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (match, textContent, url) => {
            return `<a href="${url.trim()}" style="color:blue; text-decoration: underline;" target="_blank">${textContent.trim()}</a>`;
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

export const response1: string = 'For your 10-day journey to South Korea from January 3rd to January 13th, here are flight options prioritizing comfort (direct flights on major airlines) while minimizing costs for two adults, departing from Los Angeles (LAX).\n\n**Cheapest Direct Flight Option:**\n\n*   **Airline:** Asiana Airlines\n*   **Total Estimated Price for Two Adults:** Approximately $3,800 - $4,200\n*   **Details:**\n    *   **Departure:** Friday, January 3, 2025\n        *   Flight OZ203: Los Angeles (LAX) 12:30 PM → Seoul (ICN) 6:15 PM (January 4, 2025)\n    *   **Return:** Monday, January 13, 2025\n        *   Flight OZ204: Seoul (ICN) 7:40 PM → Los Angeles (LAX) 12:40 PM (January 13, 2025)\n*   **Direct Booking Link:** [https://flyasiana.com/C/US/EN/index](https://flyasiana.com/C/US/EN/index)\n    *   On the Asiana Airlines website, enter "Los Angeles (LAX)" as your departure, "Seoul (ICN)" as your destination, and your dates (Jan 3 - Jan 13) for two passengers to find and book this flight.\n\n**Alternative Direct Flight Option:**\n\n*   **Airline:** Korean Air\n*   **Total Estimated Price for Two Adults:** Approximately $4,000 - $4,500\n*   **Details:**\n    *   **Departure:** Friday, January 3, 2025\n        *   Flight KE012: Los Angeles (LAX) 11:30 PM → Seoul (ICN) 5:30 AM (January 5, 2025)\n    *   **Return:** Monday, January 13, 2025\n        *   Flight KE017: Seoul (ICN) 7:40 PM → Los Angeles (LAX) 12:10 PM (January 13, 2025)\n*   **Direct Booking Link:** [https://www.koreanair.com/global/en.html](https://www.koreanair.com/global/en.html)\n    *   On the Korean Air website, enter "Los Angeles (LAX)" as your departure, "Seoul (ICN)" as your destination, and your dates (Jan 3 - Jan 13) for two passengers to find and book this flight.\n\nThese direct options provide comfort for your journey with major carriers. Prices are estimates and subject to change based on booking time.'

export const response2: string = 'For your 10-day journey to South Korea from January 3rd to January 13th, here are accommodation options in Seoul prioritizing comfort while minimizing costs for two adults.\n\n**Cheapest Comfort Accommodation Option:**\n\n*   **Accommodation Name:** Hotel Icon\n*   **Total Estimated Price for Two Adults (10 Nights):** Approximately $650 - $800\n*   **Details:**\n    *   Comfortable double room with private bathroom and essential amenities.\n    *   Centrally located in Jongno, Seoul, offering excellent access to popular areas like Insadong, Gyeongbokgung Palace, and Bukchon Hanok Village.\n    *   **Check-in:** Friday, January 3, 2025\n    *   **Check-out:** Monday, January 13, 2025\n*   **Direct Booking Link:** [https://www.booking.com/hotel/kr/icon.en-gb.html](https://www.booking.com/hotel/kr/icon.en-gb.html)\n    *   On the Booking.com page, ensure "Seoul" is selected as the destination, "January 3 - January 13" as your dates, and "2 adults" for passengers to find and book a double room with a private bathroom.\n\n**Alternative Comfort Accommodation Option:**\n\n*   **Accommodation Name:** Hotel Skypark Myeongdong III\n*   **Total Estimated Price for Two Adults (10 Nights):** Approximately $750 - $900\n*   **Details:**\n    *   Standard double room with private bathroom, air conditioning, and a clean, modern design.\n    *   Located in the vibrant Myeongdong district, known for shopping, dining, and easy subway access to other parts of Seoul.\n    *   **Check-in:** Friday, January 3, 2025\n    *   **Check-out:** Monday, January 13, 2025\n*   **Direct Booking Link:** [https://www.booking.com/hotel/kr/skypark-myeongdong-iii.en-gb.html](https://www.booking.com/hotel/kr/skypark-myeongdong-iii.en-gb.html)\n    *   On the Booking.com page, ensure "Seoul" is selected as the destination, "January 3 - January 13" as your dates, and "2 adults" for passengers to find and book a double room with a private bathroom.'

const format: string = response1

export const prompt1: string = "I'd like to go on a journey to South Korea of 10 days starting from the 3rd of January. I will be with my wife, therefore I want to find the cheapest flights."
export const prompt2: string = "What about cheap accomodations?"


export const requestAppend = " Prioritize comfort while minimizing costs as much as possible. give me all the direct links to book things and prices and give me the direct links to book things so i can avoid research on my own. Dont give me any disclamers and limit your response to 500 words. And limit yourself to responding to my specific request. follow this type of format: " + format
