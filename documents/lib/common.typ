#let orange = rgb("#f05000")

  #let socialLink(type: str, res: str) = {
    if (type=="yt") {
      grid(
        columns: (15%, auto),
        align: left,
        column-gutter: 0.3em,
        [#link(res)[#image("../assets/img/mdi--youtube.svg", width: 100%)]], [#link(res)[YouTube]]
      )
    } else if (type=="ig") {
      grid(
        columns: (15%, auto),
        align: left,
        column-gutter: 0.3em,
        [#link(res)[#image("../assets/img/mdi--instagram.svg", width: 100%)]], [#link(res)[Instagram]]
      )
    } else {
      panic("Not a supported social")
    }
  }

#let to-string(it) = {
  if type(it) == str {
    it
  } else if type(it) != content {
    str(it)
  } else if it.has("text") {
    it.text
  } else if it.has("children") {
    it.children.map(to-string).join()
  } else if it.has("body") {
    to-string(it.body)
  } else if it == [ ] {
    " "
  }
}

#let firstPage(title, imageList: true, attachmentList: true, studentName: false) = {
  set page(
    margin: (top: 0pt, left: 0pt, right: 0pt, bottom: 0pt)
  )
  /*align(top + center)[#image("../assets/mage--preview-circle-fill.svg", width: 20%) #text(
      size: 3em,
    )[*DreamSpot*]]

  align(horizon + center)[#text(size: 2em)[#title]]

  align(bottom + center)[$copyright$2025 The DreamSpot team]*/

  grid(
    columns: (35%, 65%),

    [#rect(fill: orange, width: 100%, height: 49%)],
    grid.cell(inset: (x: 2em, y: 1em))[
      #v(2em)
      #align(center)[#image("../assets/img/mage--preview-circle-fill.svg", width: 20%)]
      #v(-1em)
      #align(center)[#text(size: 3em)[*DreamSpot*]]
      #align(center)[#v(-1.8em)#text(size: 1em)[*Close your eyes, we map the magic*]]
    ],
    [#move(dy: -1pt)[#rect(height: 47%, width: 100%,fill: orange)]],
    grid.cell(inset: (x: 2em))[#align(right+top)[#text(3em)[#title]]
      #v(4em) 
      #table(
        stroke: none,
        table.vline(x: 1, start: if studentName {0} else {1}, stroke: orange),
        columns: (45%,auto),
        align: (x,y) => {
          if(x==0) {
            right
          } else {
            left
          }
        },
        table.cell(if studentName {[*Student*]} else {}),
        table.cell(if studentName {[Name (StudentId)]} else {}),
        [*DreamSpot team members*],[Andrea Precoma (267071)],
        [],[Andrea Jesus Soranzo Mendez (267339)],
        [], [Matteo Schievano (265989)],
      )
    ],
    grid.cell()[#place(dy: -2pt)[#rect(height: 5%, width: 100%,fill: orange)]],
    grid.cell(align: center+horizon)[$copyright$2025 The DreamSpot team]
)

  counter(page).update(1)

  set page(
    margin: auto,
    footer: [
      #align(center)[#context[#counter(page).display("1 of 1", both: true,)]] \
      #place(dx: -71pt, dy: -2pt)[#rect(height: 50%, width: 135%, stroke: none, fill: orange)]
    ]
  )
  
  pagebreak()

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    let secName = to-string(it.element.body)
    if type(secName) == str {
      if (secName.starts-with("Attachment") == false) {
        text(size: 1.2em)[*#it*]
      }
    }
  }
  outline(depth: 4, title: text(size: 2em)[#v(1em) Index #v(1em)], indent: 1em)
  if(imageList==true) {
    text(size: 2em)[#v(0.5em) *Images* #v(0.5em)]
    set text(1.2em)
    show grid: set block(spacing: 0.5em)
    context {
      let images = query(figure.where(kind: image)).enumerate()
      for (i,image) in images {
        let imageName = image.caption.body
        let imagePrefix = image.caption.supplement
        let location = image.location()
        let pageNumber = counter(page).at(location).at(0)
        grid(
              columns: (auto,auto,auto),
              [#link(location)[#imagePrefix #int(i+1): #imageName] ],[#link(location)[*#repeat(".", gap: 1pt)*]],[#link(location)[#pageNumber]]
        )
      }
    }
  }

  if(attachmentList==true) {
    text(size: 2em)[#v(0.5em) *Attachments* #v(0.5em)]
    show grid: set block(spacing: 0.5em)
    context {
      let chapters = query(heading.where(level: 1))
      for ch in chapters {
        let secName = to-string(ch.body)
        let location = ch.location()
        let pageNumber = counter(page).at(location).at(0)
        if type(secName) == str {
          if (secName.starts-with("Attachment") == true) {
            set text(1.2em)
            grid(
              columns: (auto,auto,3%),
              [#link(location)[#secName] #h(0.2em)],[#link(location)[*#repeat(".", gap: 1pt)*]],[#link(location)[#pageNumber]]
            )
          }
        }
      }
    }
  }

}

#let horizontalSection(title, labeltxt: str, body) = {
  set page(flipped: true)
  set heading(numbering: none)
  [
    #heading(level: 1)[#title]
    #hide(
      [#figure(kind: "hiddenFigure",supplement: "Hidden Figure",box(height: 0%)[ciao])#label(labeltxt)]
    ) 
  ]
  v(-1em)
  body
}


#let doc(title, body) = {

  show figure: set block(breakable: true)
  show link: it => underline(text(fill: blue)[#it])
  show ref: rf => underline(text(fill: orange)[#rf])
  set par(justify: true)
  set text(overhang: false, hyphenate: false)

  set page(
    margin: auto,
    header: [

      #grid(
        columns: (4%, 55%, 40%),
        align: (x, y) => {
          if x == 0 {
            center + horizon
          } else if x == 1 {
            left + horizon
          } else {
            right + horizon
          }
        },
        [#image("../assets/img/mage--preview-circle-fill.svg")], [#h(0.2em)*DreamSpot*], [*#title*],
      )

      #line(length: 100%)

    ],
    footer: [
      #align(center)[#context[#counter(page).display("1 of 1", both: true,)]] \
      #place(dx: -71pt, dy: -2pt)[#rect(height: 50%, width: 135%, stroke: none, fill: orange)]
    ]
  )

  set heading(numbering: "1.")

  show heading.where(level: 1): h => [
    #set align(left)
    #set text(size: 1.5em)
    #pagebreak()
    #h
    #v(0.5em)
  ]

  show heading.where(level: 2): h => [
    #set align(left)
    #set text(size: 1.3em)
    #h
    #v(0.5em)
  ]

  show heading.where(level: 3): h => [
    #set align(left)
    #set text(size: 1.2em)
    #h
    #v(0.5em)
  ]

  body
}

