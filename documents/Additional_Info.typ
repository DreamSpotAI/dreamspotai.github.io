#import "lib/common.typ": doc, firstPage, socialLink, horizontalSection, orange

#set document(
  title: "DreamSpot - Report Annex",
  author: "The DreamSpot team",
  description: "This document contains the preliminary analysis for the business project",
  date: auto,
)

#firstPage([*Report Annex*], attachmentList: false, imageList: false)

#doc("Report Annex")[

  = Additional potential influencers <api>

  Regarding the customer segment, in order to expand the business and localize it in specific region, additional potential collaborators can be identifiable in:

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

    [Humansafari],
    [#socialLink(type: "yt",res: "https://www.youtube.com/@safariumano") #socialLink(type: "ig",res: "https://www.instagram.com/humansafari/")],
    [HumanSafari, also known as Nicolò Balini, is a popular Italian travel influencer with over a million subscribers on YouTube, where he shared his experience in both well-known countries and less attractive ones, like the Democratic People's Republic of Korea.],

    [Abroad in Japan],
    [#socialLink(type: "yt",res: "https://www.youtube.com/abroadinjapan") #socialLink(type: "ig",res: "https://www.instagram.com/abroadinjapan/")],
    [Abroad in Japan is a popular YouTube channel created by the British Chris Broad. He's one of the most important foreign content creators in Japan],
  )

  = Interview outcomes and key points <iok>

    Here will be reported a link to each one of the interviews for the reader's convenience, along with a summary of the key points of each interview.

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

  = Additional potential competitors <apc>

  During their research, the DreamSpot team found other potential competitors whose usage data are not directly available:

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
    [#link("https://www.canva.com/trip-planner-ai/")[*Canva Planner*]], [A functionality of Canvas that helps with trip planning. Offer collaboration functionalities], [Limited on the personalization and does not guide the user into the organization. Limited to a maximum of 50 organizations. No document organization functionality],
    [#link("https://www.aiplanner.ai/about")[*Aiplanner*]], [Web service that offer ai-powered trip organization services], [No document organization functionality. Usage is token-limited; therefore, personalization could be limited for free users],
    [#link("https://wonderplan.ai/")[*Wonderplan*]], [Free app for organizing trips using the help of AI], [As described by the developers themselves, the app could become partially or entirely premium at some point. Offline availability of trip data is possible via downloadable pdf only. No document organization functionality is available],
  )
]