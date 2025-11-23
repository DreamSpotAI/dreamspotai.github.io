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

#let firstPage(title) = {
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
  grid.cell(align: right+top, inset: (x: 2em))[#text(3em)[#title]],
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
    text(size: 1.2em)[*#it*]
  }
  outline(depth: 4, title: text(size: 2em)[#v(1em) Index #v(1em)], indent: 1em)

  show outline.entry.where(level: 1): it => {
    text(size: 0.8em, weight: "thin")[#it]
  }
  outline(
    title: text(size: 1.5em)[#v(0.5em) Images #v(0.5em)],
    target: figure.where(kind: image)
  )

}

#let doc(title, body) = {

  show figure: set block(breakable: true)
  show link: it => underline(text(fill: blue)[#it])
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

