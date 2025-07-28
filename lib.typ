#import "@preview/typewind:0.1.0" as tw
#import "@preview/fontawesome:0.5.0": *;

#let period(start, end) = [#start $dash.en$ #end]

#let resume-preset(body, author: "", accent: tw.blue-900, text-size: 10pt) = {
  set document(author: author, title: author)

  set list(marker: [--])
  set par(justify: true, linebreaks: "optimized", leading: 0.8em)

  show link: set text(fill: tw.blue-500)

  set text(
    font: "New Computer Modern",
    size: text-size,
    // top-edge: 1em,
    // bottom-edge: 0em,
    lang: "ru",
    ligatures: false,
  )

  set page(paper: "a4", margin: (
    top: 0.8cm,
    bottom: 1cm,
    left: 1cm,
    right: 1cm,
  ))

  show heading: it => [
    #set text(fill: accent, 16pt)
    #set text(16pt, weight: "bold")
    #it.body
  ]

  show heading.where(level: 2): it => [
    #set text(fill: accent)
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 0.2pt)
  ]

  body
}

#let two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

#let one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

#let edu(
  institution: "",
  degree: "",
  dates: "",
  location: "",
) = {
  two-by-two(
    top-left: strong(institution), //
    top-right: dates,
    bottom-left: emph(degree),
    bottom-right: emph(location),
  )
}

#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  two-by-two(
    top-left: strong(title), //
    top-right: dates,
    bottom-left: emph(company),
    bottom-right: emph(location),
  )
}

#let site(url) = link(url)[
  #set text(8pt, fill: tw.blue-300)
  #fa-icon("link")
]

#let gh(url) = link(url)[
  #set text(8pt, fill: tw.blue-300)
  #fa-icon("github")
]

/*
 * type: "https://" | "mailto:" | "tel:"
 */
#let to(value, prefix: "", type: "") = {
  if value != "" {
    if type != "" {
      link(type + value)[#(prefix + value)]
    } else {
      value
    }
  }
}

#let header(
  fullname: "",
  position: "",
  location: "",
  phone: "",
  email: "",
  telegram: "",
  github: "",
  delimeter: "  ",
) = [
  #align(left)[
    = #text(20pt, weight: "bold")[#fullname]
    #set text(14pt)
    ~~#position
  ]

  #let items = (
    location,
    to(phone, type: "tel:"),
    to(email, type: "mailto:"),
    to(telegram, type: "https://"),
    to(github, type: "https://"),
  )

  #let filtered = items.filter(it => it != "")

  #v(5pt);
  #filtered.join(delimeter) \
]
