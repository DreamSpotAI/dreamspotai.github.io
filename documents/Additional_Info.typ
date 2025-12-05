#import "lib/common.typ": doc, firstPage, socialLink, horizontalSection, orange

#set document(
  title: "DreamSpot - Report Annex",
  author: "The DreamSpot team",
  description: "This document contains the preliminary analysis for the business project",
  date: auto,
)

#firstPage([*Report Annex*], attachmentList: false, imageList: false)

#doc("Report Annex")[

  = Additional potential competitors <apc>

  During their researches, the DreamSpot team found other potential competitors which usage data are not directly available:

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
]