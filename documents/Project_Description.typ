#import "lib/common.typ": doc, firstPage, socialLink, horizontalSection, verticalSection, linkList, orange

#set document(
  title: "DreamSpot - Business idea report",
  author: "The DreamSpot team",
  description: "This document contains the preliminary analysis for the business project",
  date: auto,
)

#firstPage([*Business idea \ report*], studentName: true)

#doc("Business idea report")[

  = Introduction

  During the course of years, thanks to better economic conditions and the higher income, people started to travel around the world. Currently, in 2025, the travel market is one of the most profitable markets, but it has a problem: the trip organization.

  Thanks to the Internet, organizing a travel has become easier than before: nowadays there is no need for most of the travels to involve a 3#super("rd") party agency that organizes all for them; browsing the web is sufficient to get all the needed information and book the entire travel, sometimes without the necessity to even call the hotel. However the Internet evolved, millions of websites that do the same manual work of research exist, sometimes without giving the cheapest option or providing confusing and outdated data. Additionally, the relevant number of travel-related websites can easily cause boredom and fatigue in the user, who has to read the majority of them trying to understand useful tips about his/her travel, often fighting against inconvenient cookie pop-ups. Finally, organizing all the documents, such as bookings, train tickets, plane tickets, museum entry passes, etc., can easily become difficult to manage, especially when the user will need those documents during the travel.

  Our idea is DreamSpot, an all-in-one platform that, with the help of Artificial Intelligence, will guide the user into creating his/her very personal travel by providing suggestions, feasible modifications and adequate accommodations.

  The platform will be supported by non-intrusive advertisement banners in order to be freely accessible by everyone: users can decide to pay a small per-travel fee in order to enjoy an advertisement-free experience and the possibility to quickly organize all the travel documents.

  In the following chapter, the DreamSpot team will discuss in more detail the exploitable problem, the possible customers, the problem-customer-solution validation, and the other market and project-related activities discussed during the course.

  = Problem and Customers

  A business idea is something that merges together personal interests, capabilities and business capabilities. Before starting to invest huge amounts of money, however, it is necessary to test the basis of our idea. After all, not all solutions have a problem and not all the problems have customers.

  Therefore, the DreamSpot team need to validate customers, problem and the proposed solution with the help of the *lean method*.

  == Problem analysis

  When talking about holiday travels, both short (2 to 7 days) and long (from 2 to about 3 weeks), some platforms that look for the best prices of flight tickets already exist, as well as those for hotel bookings. Some websites or forums are also well focused on presenting points of interest and most popular attractions. However, searching all information on your own becomes very dispersive and frustrating. The *latent problem* our solution is willing to solve is about inefficient preparation of holiday travels. Specifically, the problem can be more accurately described in the following "sub-problems" which a customer could selectively have:

  - *time saving and personalization* - thus the process of searching for information on the Internet could require a significant amount of time, especially when looking for points of interest in places the traveler is unfamiliar with, often causing boredom and various difficulties. Moreover, sometimes it is difficult for the user to compare alternatives or creating a personalized itinerary;

  - *money saving* - scheduling the trip day-by-day can be particularly challenging, especially if finding the cheaper option is an important requirement for the user (for example, it could be difficult for the user to organize the desired trip while a certain museum offers special discounts); 

  - *information organization* - because of the relevant quantity of bookings, ticket reservations and other similar services, keeping track of everything can result in a difficult task to achieve efficiently. Users may struggle to find an efficient way to organize all the various data.

  DreamSpot aims to bundle the existing services into an all-in-one platform in order to improve the travel experience and make this type of activity more affordable while still keeping a good balance between prices and quality.

  #pagebreak()

  == Customers analysis

  One of the most important topics to address when developing a business idea is identifying the potential customers. Without them, the idea cannot have any possibility of success, since customers are the people who ultimately determine the economic success of the to-be-developed platform.

  Besides *end users*, also *influencers*, *recommenders*, *economic buyers* and *decision makers* are customers of a product/serive. Each one of them has to be carefully identified in order to maximize the possibilities of success.

  After careful considerations, the DreamSpot team identified the following customers described in the respective chapters.

  === End users <end_users>

  End users are people with the economic possibilities to organize a trip, travel or journey, but who are also interested in saving money where possible without the burden of organizing in depth every single detail. Travel agencies can ease users's responsibilities, however they may require an expensive commission that could be unaffordable for a significant portion of travelers.

  Specifically, end users are young adults (between 20 and 34 years old) and adults (between 35 and 54 years old) with those characteristics and who are willing to organize a holiday alone, with friends and/or with their families.

  === Influencers

  Influencers, defined as people who can particularly influence people's buying decisions, could be national and international content creators on various social networks (e.g. YouTube, Instagram, etc.) whose main covered topic is centered on travel suggestions and abroad experiences.

  Some examples are provided below:

  #table(
    columns: (35%, 35%, 35%),
    align: (x, y) => {
      if y == 0 {
        center + horizon
      } else {
        left + horizon
      }
    },

    table.header([*Username*], [*Platforms*], [*Description*]),
    [Zane Travel],
    [#socialLink(type: "yt",res: "https://www.youtube.com/@zanetravel") #socialLink(type: "ig",res: "https://www.instagram.com/zane.jpegs/")],
    [Zane Travel, pseudonym for Zane Sensenig, is a popular content creator who shared its travels to Japan, Korea, the Philippines, India, the United States of America and many others with its 138.000 worldwide subscribers],

    [Currently Hannah],
    [#socialLink(type: "yt",res: "https://www.youtube.com/@CurrentlyHannah") #socialLink(type: "ig",res: "https://www.instagram.com/currently.hannah/")],
    [Currently Hannah is a YouTube channel with over 561.000 subscribers mainly centered in Japan but also with content regarding Taiwan and Australia.],
  )

  Other additional potential influencers can be found in the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Annex.pdf#api")[Report Annex document].

  #pagebreak()

  === Recommenders

  Recommenders are defined as people who can influence service usage in both a positive and negative way. They could be identified as content creators who will receive early access to the platform in order to provide a review, or sellers who are willing to create a partnership with the platform for selling premium plans.
  
  Lastly, other users of the platform itself could recommend or not the provided service.

  === Economic buyers <eb>

  Economic buyers, defined as the people who have the power to approve the purchase and/or the use of the service, could be identified in friends who together are trying to organize a group trip. They could suggest or deny the use of the platform.

  End-users, described in @end_users, can also be economic buyers if they travel alone.

  Family members could also represent a potential economic buyer for the same reason, more importantly for the end users identified as young adults, who could need the platform in order to find the cheapest solutions possible.

  === Decision makers

  Decision buyers, identified as people who ultimately decide to acquire and/or use the platform, correspond to the journey organizers, who can find in our platform the best efficient solution.

  #pagebreak()

  == Validation

  To validate our problem and customers hypothesis, we conducted an extensive series of interviews with our target users to thoroughly assess whether the identified problem and customers truly exist.

  This qualitative research was aimed at gathering detailed insights and authentic feedback to ensure that our solution addresses a real and pressing need among our final users.
  Before actively starting the interview process, we rigorously prepared by studying techniques to maximize the information extracted from our interviewees and wrote a small interview guide with a structured list of *core* questions.
  
  Additionally, we considered recruiting participants that best represented our user personas to ensure meaningful insights. This preparation helped us to exactly understand what to ask and how to create a comfortable environment conducive to honest and comprehensive responses, ultimately enhancing the quality and usefulness of the interviews.

  === Questions

  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_How old are you?_],
    [*Goal*], [Verify if the age falls within the expected range.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_Have you ever holiday-traveled in the past?_ <q3>],
    [*Goal*], [Check if a person has previous experience in journey organization, and so has previous experience.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*,], [_Why did not you travel before?_],
    [*Goal*],
    [Investigate why the individual has not traveled before, specifically examining if common challenges related to organizing and finding reliable information are significant barriers.],

    [*Linked to*], [#link(<q3>)[_Have you ever traveled in the past?_]],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_Do you prefer to travel solo or in group?_],
    [*Goal*],
    [This is mainly to make the person feel more comfortable and to determine whether they were involved in organizing the journey.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_Do you like to take initiative and try to make an itinerary?_<q5>],
    [*Goal*], [Determine whether the person organizes the entire journey or most of it, helps validate end users and to understand whether finding the cheapest option is a priority or not.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_Why do not you like to take initiative?_],
    [*Goal*],
    [Check why the person does not like to take initiative because of a boring/difficult information searching process.],
    [*Linked to*], [#link(<q5>)[_Do you like to take initiative and try to make an itinerary?_]],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_How did you find all of the information you needed?_],
    [*Goal*], [Assess whether the process of gathering information was challenging or disorganized, therefore requiring a large amount of time.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_Was searching information difficult?_],
    [*Goal*], [Determining whether researching information was straightforward or not.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_How did you organize the journey?_],
    [*Goal*], [Understanding the steps the person follows during the process. Helps gather information about real difficulty and time spent.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_How much time did it take?_],
    [*Goal*], [Assess whether the process of finding information was lengthy and boring.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_Were you satisfied with what you organized?_],
    [*Goal*],
    [Determine whether the person settled due to time constraints or because they did not find anything of interest.],
  )
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    [*Question*], [_Was it easy to manage and keep track of all the travel tickets, passes and documents?_],
    [*Goal*],
    [Assess whether managing travel tickets caused user frustration and validate our hypothesis for the necessity of a feature that simplifies ticket handling.],
  )

  // TODO: bello ma specificare con asterisco --> scritto nel documento delle interview
  These are the most important questions, but to keep the conversation flowing naturally, we also include some minor questions to help the person feel more comfortable, encouraging honesty and potentially leading them to share additional insights. See the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf")[interviews document] for additional information.

  #pagebreak()

  === Interviews <interviews>

  All the made interviews are accessible on the #link("https://dreamspotai.github.io/")[project's website], where an _ad hoc_ #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf")[document] can be found. The team initially started the validation process by conducting interviews on young adults, reported in interviews 1 to 7. Some of them partially confuted the initial customers hypothesis (see @pivoting for more detailed information). A table containing a brief summary of the outcome and key points of the interview are retrievable from the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Annex.pdf#iok")[Report Annex document].

  === Pivoting <pivoting>

  As described in @interviews, the DreamSpot team firstly decided to validate the customer sector of young adults (see @end_users for a more detailed description).

  // TODO: non si può fare 2 vs 4?
  While the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i1")[first], #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i2")[second] and #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i6")[sixth] conducted interviews confirmed our customers and problems hypotheses, suggesting that this kind of potential customers could be affected by the analyzed issue, the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i3")[third], #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i4")[fourth], #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i5")[fifth] and #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i7")[seventh] interviews underlined how this was not present in the majority of young adults. This led the team to partially correct the initial hypotheses about customers by understanding that young adults could not be potential customers of the platform; therefore, they are removed from the end-users group (see @end_users) and family members are partially reconsidered as potential economic buyers (see @eb).

  = Solution

  After validating the problem and the identified customers, therefore assuring the presence of a market, it is also important to accurately validate the theorized solution before starting the development process. As for the customers and problem validation, the solution validation has also been conducted with the help of the *lean method*.

  == Solution analysis

  #figure(
    grid(
      columns: (50%,50%),
      column-gutter: 1em,
      [#image("assets/img/main.jpg")],
      [#image("assets/img/docs.jpg")],
    ),
    caption: [Sketches of the platform],
  )

  The platform will consist of a chatbot powered by Artificial Intelligence (AI) technology, which will have the purpose of guiding the user throughout the process of setting up his or her travel by comparing prices, providing suggestions, and proposing itineraries; it automatically supplies the user with the cheapest available options in accordance with the travel plan, therefore saving time and money.

  Specifically, the DreamSpot team wanted to initially use the Google Gemini API to provide the minimum required functionality. The solution would be provisional, with the idea of creating more customized web scraping software, along with training a custom machine learning model in the future.

  There are several advantages to the use of Google Gemini: the main one being the capabilities of the AI to interface with the Google search engine, therefore able of providing updated results regarding events and possible accommodations. The scope of the AI tool is to furnish suggestions about prices, locations and transports, not to complete purchases. This action would require partnerships with several companies for flights and accommodations booking, and public services such as public transportation and museums. Hence, links for finalizing the purchases should be supplied throughout the journey organization process.
  
  /*The guideline is composed by steps, for instance flights purchase followed by accommodations booking, thus the user can easily choose the best options for his or her travel assisted by an Artificial Intelligence (AI) tool.*/

  /*

  These are distribution channels, should they be in the business model

  Two type of platforms are designed for fully satisfying user needs:

  - *web site* - since the majority of travelers organize their trips using a computer, because of screens size and more flexibility of browsers, a web site is provided with all features necessary for setting up the journey;

  - *web application* or *mobile application* - after completing the organization process, all information are easily accessible on mobile devices which are more often used during travels.

  */
  
  Finally, the user can check all the reservations and the details of the entire itinerary on a dedicated page of the application, which will also give the possibility to automatically organize eventually provided documents.

  #pagebreak()

  == Minimum Viable Product for solution validation

  #figure(
    grid(
      column-gutter: 1em,
      columns: (50%,50%),
      [#image("assets/img/idea.png")],[#image("assets/img/sketch.png")],
      grid.cell(colspan: 2)[#v(1em) #image("assets/img/form.png", width: 50%)],
    ),
    caption: "Screenshots of the website"
  )

  In order to validate the proposed solution, the DreamSpot team decided to create a #link("https://dreamspotai.github.io/DreamSpot/")[landing page]#footnote(link("https://dreamspotai.github.io/DreamSpot/")).

  In order to adequately present the product to a wide number of people, the website is divided into three sections:
  
  - *idea section* - a section with a brief comparison between the normal procedure end-users usually adopt to create an itinerary and the simpler method made available by our service;
  
  - *gallery section* - a section that briefly presents, thanks to the presence of a three images carousel, the expected developed product complete with all functionalities. In other words, a sort of *sketch* of the future platform;

  - *form section* - a section in which users can let us know their interest in the project by simply pressing a button. Additionally, people can also choose to send their email in order to be kept updated about the platform development. This functionality allows the DreamSpot team to separate users who might be interested in the product and people who are really interested in the platform.

  The particular structure of the website guarantees that only interested people will eventually scroll until the last section, which also presents a publicly visible counter of people who manifested interest in the platform.

  == Validation

  The validation process for the solution aims to collect a minimum of 50 positive answers (50 visitors that pressed the landing page button), with at least 76% of them also deciding to provide their email. Currently the form received a total of 51 answers, with 39 of them (78%) being with an email: the solution is then to be considered validated.

  = Business Model

  The DreamSpot team deeply analyzed a suitable *Business Model* for the platform that will be discussed in the following section.

  == Business Model Canvas and Business Model Patterns <bmc>

  The _ingredients_, which can be viewed on the first attachment to this document (#link(label("at1"))[#text(fill: orange)[Attachment 1]]), of the _recipe_ reflect two important Business Model Patterns: the *Multi-Sided Platform* and *Freemium Business Model*. All currency refers to US $dollar$.

  Regarding the *Multi-Sided Platform*, DreamSpot heavily relies on two main groups of users: *advertisers* and *free users*. Advertisers have the capabilities, using our platform, to target the right audience for travel-related advertisements. The interest of businesses choosing our platform to display commercials really depends on the growing number of free users.

  A *subsidization* of free users will be *required*. Thus, the DreamSpot team decided to offer  a *lottery* of *premium plans* for the first three years of activity: *10 winners will be eligible* for a *free one-week premium plan* (see below). Moreover, to give people the possibility to easily try the platform, users have the chance to start organizing the trip without needing to create an account (up to 40 minutes per session).

  The platform also provides *two possible travel-based premium packets* for travel lovers, all of which include document organization functionalities and an ad-free experience: the *first plan* allows the use of the mentioned benefits for a *travel no longer than one week* in exchange for *$dollar$2,99*, while the *second one* allows to retain the benefits for a *travel longer than one week* at the cost of *$dollar$4,99*. 
  Customers will also be able to get a premium plan in electronic stores and supermarkets for *$dollar$3,99* and *$dollar$5,99* respectively.

  The reasons around this particular type of revenue model are explained in @fp.

  Free users, who we plan to be the vast majority of end users, will be financed by a portion of the revenue of the advertisements.

  All users can access, even without the need of connection, past conversations and already completed travels, but cannot access the documents organization feature, and three advertisement banners will be displayed in the chatbot interface.

  = Market size, trends and competition

  The DreamSpot platform is clearly part of an already existing market, the *travel market*. The DreamSpot team carefully analyzed the market size, its properties, and the competitors. Key results are reported in the chapters below.

  == Total Addressable Market, Served Addressable Market and Target Market

  The DreamSpot team identified its markets as follows (all data refer to US $dollar$):

  - *Total Addressable Market* - it considers the global outbound tourism market, namely the flow of travelers worldwide. In 2024 this market generated revenues of approximately $dollar$8879,2 billion;

    Source: #link("https://www.businessresearchinsights.com/market-reports/outbound-tourism-market-118431")[businessresearchinsights.com]

  - *Served Addressable Market* - the DreamSpot team decided to consider the USA outbound travel market due to this country's influence in the travel market; moreover, since the application is in English, the choice of the States allows to acquire customers without having language-related problems. The USA outbound travel market is projected to generate earnings up to $dollar$293,3 billion in 2025;

    Source: #link("https://www.futuremarketinsights.com/reports/united-states-outbound-travel-market")[futuremarketinsights.com]

  - *Target Market* - the DreamSpot team's target market corresponds to USA citizens, who are used to traveling and are between 35 and 54 years old, as validated using interviews in @interviews. Approximately 35% of travelers account for the target age, hence valuing the maximum possible earnings at $dollar$102,7 billion.

    Source: #link("https://novacancynews.com/u-s-millennials-most-likely-to-take-spend-more-on-vacations-this-year-next/")[novacancynews.com]

In general, finding information about the travel market was more difficult than expected: although it is true that a plethora of information and market reports for this market are available on the Internet, a big portion of them are accessible only under payment of a costly subscription and/or fee. /*Example of these are: //Insert some of the links we could not use*/Moreover, recent and accurate data about US travelers age has proven to be difficult to find; most of them turn out to be not freely available, inaccurate, and/or outdated (e.g., #link("https://www.bls.gov/opub/ted/2003/nov/wk1/art02.htm")[bls.gov]/*Insert other links*/).

Finally, according to #link("https://www.technavio.com/report/travel-market-industry-analysis?utm_source=prnewswire&utm_medium=pressrelease&utm_campaign=aitrend1_1_report_week05_2025&utm_content=IRTNTR71431")[technavio.com], the travel market size is suggested to increase by $dollar$2860.2 billion between 2023 and 2028, therefore qualifying as a significant growing market.

  == Competitors analysis

  By searching the web, the DreamSpot team found the following possible competitors, together with their respective advantages and disadvantages.

  #show table: set par(justify: false)
  #table(
    columns: (20%,30%,30%,20%),
    align: (x,y) => {
      if y==0 {
        center+horizon
      } else {
        left
      }
    },
    table.header([*Name or Type*], [*Advantages*], [*Disadvantages*], [*Usage data*]),
    [*Travel agencies*], [Easy way to organize a trip, various different packages are available. All the process requires minimal action from the customer], [An additional and substantial commission is often required. Personalization of travels is minimal. Document management is in charge of the customer], [According to #link("https://www.statista.com/topics/1859/travel-agencies/?srsltid=AfmBOoqdj3TlMLr1yeSE2LtSR8YyRBV8ORWGmjtmHotDJAweutI18mSV#topicOverview")[statista.com], the worldwide market of travel agencies generate 654 billion US $dollar$, according to #link("https://deepmarketinsights.com/vista/insights/travel-agency-market/united-states")[deepmarket insights.com], in the US the market has generated US $dollar$145,43 billion.],
    [*Traditional AI chatbots* \ e.g. ChatGPT], [Provides useful suggestions about possible travel destinations and places to visit, also day by day. Able to personalize the whole trip.], [Can be unoptimized for travels, therefore not providing useful suggestions. Does not guide between all the steps needed for the travel. No document organization functionality], [According to #link("https://openai.com/index/how-people-are-using-chatgpt/")[openai.com], as of September 15#super("th"), 2025, ChatGPT alone counts 700 million weekly active users],
    [#link("https://wanderlog.com/")[*Wanderlog*]], [Specialized travel organization app with AI functionality. Allows inserting documents, and a collaboration functionality is also available], [Trip optimization functionality and offline data visualization are limited to the paid version], [The app has been downloaded more than 1 million times from the #link("https://play.google.com/store/apps/details?id=com.wanderlog.android&hl=it&pli=1")[Play Store], achieving an evaluation of 4.9 out of 5 stars on both the Google Play store and the #link("https://apps.apple.com/it/app/wanderlog-viaggi-pianificatore/id1476732439")[App Store]],
    [#link("https://www.stippl.io/")[*Stippl*]], [An app that, with the help of an AI, helps with trip organization. Can partially organize bookings and travels], [AI functionality seems to be limited according to the provided screenshot of the app. According to a #link("https://www.wandrly.app/tools/stippl")[third party], offline visualization is not eligible for free users.], [The app counts more than 100 thousand downloads from the #link("https://play.google.com/store/apps/details?id=com.stippl.stippl&hl=it")[Play Store], achieving about 4.5 out of 5 stars on both the Play Store and the #link("https://apps.apple.com/it/app/stippl-pianificatore-viaggio/id6443617088")[App Store]],
  )

  Other possible competitors, which don't have reliable usage data, can be found in the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Annex.pdf#apc")[Report Annex document].

  #pagebreak()

  == Unique Selling Point
  
  By analyzing our competitors, it appears clear to the DreamSpot team that the key characteristics of our platform are the following:

  - truly personalized travels, with plenty of space for personalization that is accurate regarding the conversation topic (a characteristic that values our service over traditional travel agencies, chatbots and #link("https://dreamspotai.github.io/compiled/CompiledPDF/Annex.pdf#apc")[other competitors]);
  - offline access to past journey organizations, without needing to pay a subscription (this is what truly differentiates DreamSpot from our most relevant competitors, #link("https://wanderlog.com/")[Wanderlog] and #link("https://www.stippl.io/")[Stippl]);
  - complete travel document organization functionality (which is not available on #link("https://www.stippl.io/")[Stippl] or #link("https://dreamspotai.github.io/compiled/CompiledPDF/Annex.pdf#apc")[other competitors]).

  Additionally, our platform prices, described in @bmc and @fp, are not a subscription, unlike what happens with #link("https://wanderlog.com/pro")[Wanderlog], who charge US $dollar$39,99 for an entire year. Moreover, it does not limit the quality and/or quantity of the interactions with the chatbot, something that #link("https://wanderlog.com/pro")[Wanderlog] or #link("https://dreamspotai.github.io/compiled/CompiledPDF/Annex.pdf#apc")[other competitors] do.

  While it is realistically not difficult to add the functionality that makes our service unique, it also means, for our main competitors, significantly changing their revenue model, which can be quite difficult.

  With these considerations in mind, the DreamSpot team decided to create the following Unique Selling Point:

  #align(center)[#text(size: 1.3em)[*Your journeys, truly always with you*]]

  The first part underlines the personalization capabilities and the strong relation of suggestions with the conversation topic, while the second half highlights the free and offline access, in addition to the optional document organization functionality.

  = Financial plan <fp>

  In order to understand the economic feasibility of the platform, the DreamSpot team firstly analyzed the total number of users who will use the platform, assuming that each user will travel 1 or 2 times per year (an average of 1,5 travels per user). The team calculated to gain a total of 3300 active users the first year, with 330 of them buying a premium plan. Specifically, a maximum of 20 people will buy the premium plan in-store thanks to a collaboration with local supermarkets and electronic stores, which in exchange will get a 7% and 20% commission, respectively. Percentages are decided based on where end users are more prone to see the product. For the remaining premium users, the DreamSpot team predicts about 326 _one-week subscriptions_ and 139 _over-one-week subscriptions_ sold directly from the platform, accounting for a 2% credit card commission.

  As described in @bmc, one of the Business Model Patterns followed was the *Multi-Sided Platform*; as a result, the main income comes from advertisements. Thanks to the #link("https://adsense.google.com/start/")[Google AdSense revenue calculator], the DreamSpot team estimated a total earning of US $dollar$0,014 per advertisement. The total amount is calculated considering three banners on the main page, a total of three 40-minute sessions per free user (estimated necessary to organize a trip), and a 5-minute rotation per advertisement. Furthermore, non-registered users that take advantage of the 40-minute trial should also be taken into account. Thus, roughly three of these users will generate the same amount of money as a standard free user.

  Premium pricing, described in @bmc, has been chosen based on the minimum amount that made the total cash out financiable by investors in the first year. To partially cover the initial printing of physical premium cards, which code will be printed in the customers' receipt to allow reuse of the cards, in-store purchases are increased.

  Regarding relevant costs, the DreamSpot team decided to #link("www.marcaria.com/register/trademarkprices.asp?country=USA")[register its trademark] in the US and subsidize users with a lottery of 10 premium plans. Another significant outcomes are Google Gemini fees which have been approximated to US $dollar$0,00075 per request. This price is multiplied by 300, estimation of requests for a complete travel planning procedure.

  The in-depth details can be found in @at2[Attachment] and in the #link("https://docs.google.com/spreadsheets/d/1Rc_sHanO0h0rdAr99SsFMEA_FSssRvdaj7XuofoJZyE/edit?gid=157659979#gid=157659979")[spreadsheet].

  A marketing manager will be hired within the first two years to handle the marketing aspect. Moreover, since social media are so relevant nowadays, the DreamSpot team will establish partnerships with two influencers the first two years, and only one of them for the third year. This approach should guarantee for an increase in users; in particual the team expects to reach 3300, 6000 and 10400 users respectively for the first, the second and the third year. To handle the increase in users, a developer is planned to be hired in the third year.
  
  Finally, with an initial investment of US $dollar$54.200, the platform will become profitable from the third year, estimating a US $dollar$15.032 EBITDA.

  The mentioned lottery (see @bmc) should also help in acquiring users.

  #include("Personal.typ")

  #linkList()

  //Under here put attachments
  #horizontalSection(
    "Attachment 1: Business Model Canvas",
    labeltxt: "at1",
    [
      #figure(
        kind: image,
        image("assets/business-model.svg", width: 97%),
        caption: "Business Model Canvas"
    )
  ]
  )

  #verticalSection(
    "Attachment 2: Financial Plan",
    labeltxt: "at2",
    [
       #figure(
        image("assets/img/Plan2.png", width: 120%),
        caption: "Financial Plan"
      )
    ]
  )
 
  #horizontalSection(
    "Attachment 3: Cumulated Cash Flow",
    labeltxt: "at3",
    [
      #figure(
        image("assets/img/cashFlow.svg", width: 95%),
        caption: "Cumulated Cash Flow"
      )
    ]
  )

]
