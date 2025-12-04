#import "lib/common.typ": doc, firstPage, socialLink, horizontalSection, orange

#set document(
  title: "DreamSpot - Business idea report",
  author: "The DreamSpot team",
  description: "This document contains the preliminary analysis for the business project",
  date: auto,
)

#firstPage([*Business idea \ report*])

#doc("Business idea report")[

  = Problem and Customers

  A business idea is something that merges together personal interests, capabilities and business capabilities.

  Before starting to invest huge amounts of money, however, it is necessary to test the basis of our idea: after all, not all solutions have a problem and not all the problems have customers.

  Therefore, it is easy to understand that before starting to implement, we, the DreamSpot team, need to validate our customers, our problem and, finally, our proposed solution with the help of the *lean method*.

  == Problem analysis

  When talking about holiday travels, both short (2 to 7 days) and long (from 2 to about 3 weeks), some platforms that look for the best prices of flight tickets already exist, as well as those for hotel bookings. Some websites or forums are also well focused on presenting points of interest and most popular attractions; however, searching all information on your own becomes very dispersive and frustrating. The *latent problem* our solution is willing to solve is about inefficient preparation of holiday travels. Specifically, the problem can be more accurately described in the following "sub-problems" which a customer could selectively have:

  - *Time saving and personalization* - thus the process of searching for information on the Internet could require a significant amount of time, especially when looking for points of interest in places the traveler is unfamiliar with, additionally causing boredom and various difficulties. Moreover, sometimes it is difficult for the user to compare alternatives or creating a personalized itinerary;

  - *Money saving* - scheduling the trip day-by-day can be particularly challenging, especially if finding the cheaper option is an important requirement for the user (for example, it could be difficult for the user to organize the desired trip while a certain museum offers special discounts); 

  - *Information organization* - because of the relevant quantity of booking, ticket reservation and other similar services, keeping track of everything can result in a difficult task to achieve efficiently, users struggle to find an efficient way to organize all the various data.

  _DreamSpot_ aims to bundle the existing services into an all-in-one platform in order to improve the travel experience and make this type of activity more affordable while still keeping a good balance between prices and quality.

  #pagebreak()

  == Customers analysis

  One of the most important topics to address when developing a business idea is identifying the potential customers: without them, the idea cannot have any possibility of success, since customers are the people who ultimately determine the economic success of the to-be-developed platform.

  Customers are not only the *end users* of our product/service, but *influencers*, *recommenders*, *economic buyers* and *decision makers* are customers too: each one of them has to be carefully identified in order to maximize the possibilities of success.

  After careful consideration, the DreamSpot team identified the following customers described in the respective chapters.

  === End users <end_users>

  End users are people with the economic possibilities to organize a trip, travel or journey, but who are also interested in saving money where possible without the burden of organizing in depth every single detail. Travel agencies can ease users's responsibilities, however they may require an expensive commission that could be unaffordable for a significant portion of travelers.

  Specifically, end users are young adults (20-34 years old) and adults (between 35 and 54 years old) with those characteristics and who are willing to organize a holiday alone, with friends and/or with their families.

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

    [Humansafari],
    [#socialLink(type: "yt",res: "https://www.youtube.com/@safariumano") #socialLink(type: "ig",res: "https://www.instagram.com/humansafari/")],
    [HumanSafari, also known as Nicolò Balini, is a popular Italian travel influencer with over a million subscribers on YouTube, where he shared his experience in both well-known countries and less attractive ones, like the Democratic People's Republic of Korea.],

    [Abroad in Japan],
    [#socialLink(type: "yt",res: "https://www.youtube.com/abroadinjapan") #socialLink(type: "ig",res: "https://www.instagram.com/abroadinjapan/")],
    [Abroad in Japan is a popular YouTube channel created by the British Chris Broad. He's one of the most important foreign content creators in Japan],

    [Currently Hannah],
    [#socialLink(type: "yt",res: "https://www.youtube.com/@CurrentlyHannah") #socialLink(type: "ig",res: "https://www.instagram.com/currently.hannah/")],
    [Currently Hannah is a YouTube channel with over 561.000 subscribers mainly centered in Japan but also with content regarding Taiwan and Australia.],
  )

  === Recommenders

  Recommenders, defined as people who can influence service usage in both a positive and negative way, could be identified as content creators who will receive early access to the platform in order for them to provide a review or sellers who are willing to create a partnership with the platform for selling premium plans.

  Lastly, other users of the platform itself could recommend or not the provided service.

  === Economic buyers <eb>

  Economic buyers, defined as the people who have the power to approve the purchase and/or the use of the service, could be identified in friends who together are trying to organize a group trip: they could suggest or deny the use of the platform.

  End-users, described in @end_users, can also be economic buyers if they travel alone.

  Family members could also represent a potential economic buyer for the same reason, more importantly for the end users identified as young adults, who could need the platform in order to find the cheapest solutions possible.

  === Decision makers

  Decision buyers, identified as people who ultimately decide to acquire and/or use the platform, have to be identified in the journey organizers, who can find in our platform the best efficient solution.

  #pagebreak()

  == Validation

  To validate our problem and customers hypothesis, we conducted an extensive series of interviews with our target users to thoroughly assess whether the identified problem and customers truly exist.

  This qualitative research was aimed at gathering detailed insights and authentic feedback to ensure that our solution addresses a real and pressing need among our final users.
  Before actively starting the interview process, we thoroughly prepared by studying techniques to maximize the information extracted from our interviewees and wrote a small interview guide with a structured list of *core* questions.
  
  Additionally, we considered recruiting participants that best represented our user personas to ensure meaningful insights. This preparation helped us understand exactly what to ask and how to create a comfortable environment conducive to honest and comprehensive responses, ultimately enhancing the quality and usefulness of the interviews.

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

  These are the most important questions, but to keep the conversation flowing naturally, we also include some minor questions to help the person feel more comfortable, encouraging honesty and potentially leading them to share additional insights. See the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf")[interviews document] for additional information.

  #pagebreak()

  === Interviews <interviews>

  All the made interviews are accessible on the #link("https://dreamspotai.github.io/")[project's website], where an _ad hoc_ #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf")[document] can be found.

  The team initially started the validation process by conducting interviews on young adults: these are interviews 1 to 7. Some of them partially confuted the initial customers hypothesis: see @pivoting for more detailed information.

  Here will be reported a link to each one of the interviews for the reader's convenience, among with a summary of the key points of each interview.

  #table(
    columns: (15%, 40%, 45%),
    stroke: black,
    align: (x, y) => {
      if (x == 0 or x==1) {
        center + horizon
      } else {
        left
      }
    },
    table.header([*Interview*], [*Target and outcome*], [*Key Points*]),
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i1")[Interview #1]], [Young adults, Positive], [Long time to organize, Difficult to keep track of documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i2")[Interview #2]], [Young adults, Positive], [Information research difficult, Like to personalize travels, Search for cheapest option, Difficult to keep track of documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i3")[Interview #3]], [Young adults, Negative], [Not difficult to search for information, Finding information does not require lot of time, Easy to keep track of documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i4")[Interview #4]], [Young adults, Negative], [Not difficult to search for information even for cheap accommodations, Finding information does not require lot of time, Easy to manage documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i5")[Interview #5]], [Young adults, Negative], [Not difficult to search for information, Finding information does not require lot of time, Easy to keep track of documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i6")[Interview #6]], [Young adults, Positive], [Difficult to find information, Searched for cheapest option, Finding information could be difficult, Difficult to keep track of documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i7")[Interview #7]], [Young adults, Negative], [Not interested into making itineraries: prefers to delegate, Finding information not difficult, Cheapest option is not a requirement, Nowadays keeping track of documents it is easy],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i8")[Interview #8]], [Adults, Positive], [Love to personalize itineraries but research process takes time, searching the cheapest option is difficult, No difficulties in keeping track of documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i9")[Interview #9]], [Adults, Positive], [Difficult to find information, Difficult to find promotions, Lot of time required, Difficult to keep track of documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i10")[Interview #10]], [Adults, Positive], [Search for cheapest option, Difficult to search information, Could require time to organize trip, Easy to keep track of documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i11")[Interview #11]], [Adults, Negative], [Not difficult to search for information even for cheap accommodations, Not much time required, Easy to keep track of information],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i12")[Interview #12]], [Adults, Positive], [Not difficult to find information but activity requires lot of time, Could be difficult to keep track of documents for long travels.],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i13")[Interview #13]], [Adults, Positive], [Finding information is boring and could not show all possibilities, Costs are a problem, Can require some time due to boring process, Document organization could be difficult],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i14")[Interview #14]], [Adults, Positive], [Organizing information could be difficult and time used could be optimize, Document organization could be time-consuming (not efficient)],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i15")[Interview #15]], [Adults, Positive], [Information research process is boring and difficult if not done properly trip could became a loss of money, No difficulties in organizing documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i16")[Interview #16]], [Adults, Positive], [Searching information and organization processes require time, Difficult to organize documents],
    [#link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i7")[Interview #17]], [Adults, Positive], [Searching information could be more efficient: can require some time, Not difficult to organize documents.],
  )

  === Pivoting <pivoting>

  As described in @interviews, the DreamSpot team firstly decided to validate the customer sector of young adults (see @end_users for a more detailed description).

  While the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i1")[first], #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i2")[second] and #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i6")[sixth] conducted interviews confirmed our customers and problems hypotheses, suggesting that this kind of potential customers could be affected by the analyzed issue, the #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i3")[third], #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i4")[fourth], #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i5")[fifth] and #link("https://dreamspotai.github.io/compiled/CompiledPDF/Interviews.pdf#i7")[seventh] interviews underlined how this was not present in the majority of young adults.
  
  This led the team to partially correct the initial hypotheses about customers by understanding that young adults could not be potential customers of the platform; therefore, they are removed from the end-users group (see @end_users) and family members are partially reconsidered as potential economic buyers (see @eb).

  = Solution

  After validating the problem and the identified customers, therefore assuring the presence of a market, it's also important to accurately validate the theorized solution before starting the development process.

  As for the customers and problem validation, the solution validation has also been conducted with the help of the *lean method*.

  == Solution analysis

  The platform will consist of a chatbot powered by Artificial Intelligence (AI) technology, which will have the purpose of guiding the user throughout the process of setting up his or her travel by comparing prices, providing suggestions, and proposing itineraries, automatically providing the user with the cheapest available options in accordance with the travel plan, therefore saving time and money.

  Specifically, the DreamSpot team wanted to initially use the Google Gemini API to provide the minimum required functionality. The solution would be provisional, with the idea of creating more customized web scraping software, along with training a custom machine learning model, in the future.

  There are several advantages to the use of Google Gemini, the main one being the capabilities of the AI to interface with the Google search engine, capable of providing updated results regarding events and possible accommodations.
  
  /*The guideline is composed by steps, for instance flights purchase followed by accommodations booking, thus the user can easily choose the best options for his or her travel assisted by an Artificial Intelligence (AI) tool.*/

  /*

  These are distribution channels, should they be in the business model

  Two type of platforms are designed for fully satisfying user needs:

  - *web site* - since the majority of travelers organize their trips using a computer, because of screens size and more flexibility of browsers, a web site is provided with all features necessary for setting up the journey;

  - *web application* or *mobile application* - after completing the organization process, all information are easily accessible on mobile devices which are more often used during travels.

  */

  The scope of the AI tool is to provide suggestions about prices, locations, and transport, not to complete purchases. This action would require partnerships with several companies for flights and accommodations booking, and public services such as public transportation and museums. Therefore, links for finalizing the purchases should be supplied throughout the journey organization process.
  
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
  - *Idea section*: a section with a brief comparison between the normal procedure end-users usually adopt to create an itinerary and the simpler method made available by our service;
  - *Gallery section*: a section that briefly presents, thanks to the presence of a carousel made by three images, the expected developed product complete with all functionalities. In other words, a sort of *sketch* of the future platform;
  - *Form section*: a section in which users can let us known their interest in the project by simply pressing a button. Additionally, people can also choose to send their email in order to be kept updated about the platform's development: this allows the DreamSpot team to separate users who might be interested in the product and people who are really interested in the platform.

  The particular structure of the website guarantees that only interested people will eventually scroll until the last section.

  The last section also present a publicly visible counter of people who manifested interest in the platform.

  == Validation

  The validation process for the solution aims to collect a minimum of 50 positive answers (50 visitors that pressed the landing page button), with at least 76% of them also deciding to provide their email.

  Currently the form received a total of 51 answers, with 39 of them (78%) being with an email: the solution is then to be considered validated.

  = Business Model

  The DreamSpot team deeply analyzed a suitable *Business Model* for the platform that will be discussed in the following section.

  == Business Model Canva and Business Model Patterns

  The _ingredients_, which can be viewed on the first attachment to this document (#link(label("at1"))[#text(fill: orange)[Attachment 1]]), of the _recipe_ reflect two important Business Model Patterns: the *Multi-Sided Platform* and *Freemium Business Model*.

  Regarding the *Multi-Sided Platform*, DreamSpot heavily relies on two main groups of users: *free users* and *advertisers*. *Advertisers* have the capabilities, using our platform, to target the right audience for travel-related advertisements. The interest of businesses choosing our platform to display commercials really depends on the growing number of free users.

  A subsidization of free users will be required; therefore, the DreamSpot team decided to:
  - offer users the possibility to use the *documents' organization functionality* for the *first travel* completely *free of charge*;
  - *unlock* the *documents' organization functionality* for another travel *every 10 other people* that *join* the platform using a referral link/code connected to the user's personal account.

  The platform also provides *two possible travel-based premium packets* for travel lovers, which *includes* *document organization* functionalities and an *ad-free* experience: the *first plan* allows the use of the mentioned benefits for a *travel not longer than one week* in exchange of *$dollar$1,99*, while the *second one* allows to retain the benefits for a *travel longer than a week* at the cost of *$dollar$3.49*. *Free users*, who we plan to be the vast majority of end users, will be *financed* by a portion of the revenue of the *advertisements*.

  Free-users can access, even without need of connection, past conversations and already completed travels, but cannot access the documents organization feature and three advertisement banners will be displayed in the chatbot interface.

  = Market size, trends and competition

  The DreamSpot platform is clearly part of an already *existing market*: the *travel market*. The DreamSpot team carefully analyzed the market size, the market properties and the competitors: key results are reported in the chapters below.

  == Total Addressable Market, Served Addressable Market and Target Market

  The DreamSpot team identified its markets as follows (all data refer to USD):

  - *Total Addressable Market* - it consider the global outbound tourism market, namely the flow of travelers worldwide. In 2024 the market size generated revenues for approximately $dollar$8879.2 billion;

    Source: #link("https://www.businessresearchinsights.com/market-reports/outbound-tourism-market-118431")[businessresearchinsights.com]

  - *Served Addressable Market* - it reduces TAM concentrating in the USA outbound travel market. The DreamSpot group chose to focus on this country due to its influence in the travel market; moreover, since the application is designed in english, the choice of USA increase the amount of end users. The USA outbound travel market is projected to rise up to $dollar$293.3 billion in 2025;

    Source: #link("https://www.futuremarketinsights.com/reports/united-states-outbound-travel-market")[futuremarketinsights.com]

  - *Target Market* - the DreamSpot team's target market corresponds to USA citizens, who are use to travel, in the age between 35 and 54 years old, as validated using interviews. Approximately 35% of travelers accounts for the target age, hence valuating to 102.7 billion.

    Source: #link("https://novacancynews.com/u-s-millennials-most-likely-to-take-spend-more-on-vacations-this-year-next/")[novacancynews.com]

In general, finding information about the travel market was more difficult than expected: although it's true than a plethora of information and market reports for this market is available on the Internet, a big portion of them are accessible only under payment of a costly subscription and/or fee. Example of these are: //Insert some of the links we could not use

Moreover, recent and accurate data about US travelers age demonstrated to be difficult to find: most of them result to be not freely available, inaccurate and/or outdated (e.g. #link("https://www.bls.gov/opub/ted/2003/nov/wk1/art02.htm")[bls.gov] /*Insert other links*/)

  == Competitors analysis

  By searching the web, the DreamSpot team found the following possible competitors, together with their respective advantages and disadvantages.

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
    [*Travel agencies*], [Easy way to organize a trip, various different packages are available. All of the process requires minimal action from the customer], [An additional and substantial commission is often required. Personalization of travels is minimal. Documents management is in charge of the customer], [According to #link("https://www.statista.com/topics/1859/travel-agencies/?srsltid=AfmBOoqdj3TlMLr1yeSE2LtSR8YyRBV8ORWGmjtmHotDJAweutI18mSV#topicOverview")[statista.com], the worldwide market of travel agencies generates 654 billion USD, according to #link("https://deepmarketinsights.com/vista/insights/travel-agency-market/united-states")[deepmarket insights.com], in the US the market has generated 145.43 billion USD.],
    [*Traditional AI chatbots* \ e.g. ChatGPT], [Provides useful suggestions about possible travel destination and places to visit, also day by day. Able to personalize the whole trip.], [Can be unoptimized for travels and provides not useful suggestion. Does not guide between all of the steps needed for the travel. No documents organization functionality], [According to #link("https://openai.com/index/how-people-are-using-chatgpt/")[openai.com], as for September 15#super("th"), 2025 ChatGPT alone count 700 million weekly active users],
    [#link("https://wanderlog.com/")[*Wanderlog*]], [Specialized travel organization app with AI functionality. Allow to insert documents and collaboration functionality are also available], [Trip optimization functionality and offline data visualization are limited to the paid version], [The app has been downloaded more than 1 million times from the #link("https://play.google.com/store/apps/details?id=com.wanderlog.android&hl=it&pli=1")[Play Store], achieving an evaluation of 4.9 out 5 stars on both the Google Play store and the #link("https://apps.apple.com/it/app/wanderlog-viaggi-pianificatore/id1476732439")[App Store]],
    [#link("https://www.stippl.io/")[*Stippl*]], [An app that, with the help of an AI, helps the trip organization. Can partially organize bookings and travels], [AI functionality seems to be limited according to provided screenshot of the app. According to third party, offline visualization is not eligible for free users], [The app count more than 100 thousand downloads from the #link("https://play.google.com/store/apps/details?id=com.stippl.stippl&hl=it")[Play Store], achieving about 4.5 out of 5 stars on both the Play Store and the #link("https://apps.apple.com/it/app/stippl-pianificatore-viaggio/id6443617088")[App Store]],
  )

  Other possible competitors, which doesn't have reliable usage data:

    #table(
    columns: (20%,40%,40%),
    align: (x,y) => {
      if y==0 {
        center+horizon
      } else {
        left
      }
    },
    table.header([*Name or Type*], [*Advantages*], [*Disadvantages*]),
    [#link("https://www.canva.com/trip-planner-ai/")[*Canva Planner*]], [A functionality of canvas that helps with trip planning. Offer collaboration functionalities], [Limited on the personalization and does not guide the user into the organization. Limited to a maximum of 50 organizations. No documents organization functionality],
    [#link("https://www.aiplanner.ai/about")[*Aiplanner*]], [Web service that offer ai-powered trip organization services], [No document organization functionality. Usage is token-limited, therefore, personalization could be limited for free users.],
    [#link("https://wonderplan.ai/")[*Wonderplan*]], [Free app for organizing trip using the help of AI], [As described by the developers themselves, the app could become partially or entirely premium at some point. Offline availability of trip data is possible via downloadable pdf only. No documents organization functionality is available.],
  )

  == Unique Selling Point


  //Under here put attachments

  #horizontalSection(
    "Attachment 1: Business Model Canva",
    labeltxt: "at1",
    [
      #figure(
        kind: image,
        image("assets/business-model.svg", width: 97%),
        caption: "Business Model Canva"
    )
  ]
  )

]
