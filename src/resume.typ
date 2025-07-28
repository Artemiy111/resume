#import "@preview/typewind:0.1.0" as tw
#import "@preview/fontawesome:0.5.0": *;

#import "lib.typ": *
#import "inject.typ": *

#let lang = sys.inputs.at("lang", default: "ru")
#let meta = toml("meta.toml")

#let text-size = 10pt
#let text-leading = (text-size * 1.6 - text-size) * 1
#let accent = tw.blue-900;

#let firstname = meta.name.firstname.at(lang)
#let lastname = meta.name.lastname.at(lang)
#let fullname = (
  meta
    .name
    .fullname-pattern
    .at(lang)
    .replace(
      "{name.firstname}",
      firstname,
    )
    .replace(
      "{name.lastname}",
      lastname,
    )
)

// #let fullname = (
//   ru: "Набойщиков Артемий",
//   en: "Artemiy Naboishchikov",
//   es: "Artemiy Naboishchikov",
// ).at(lang)

#let position = (
  ru: "Frontend Разработчик / Vue",
  en: "Frontend Developer / Vue",
  es: "Desarrollador Frontend / Vue",
).at(lang)

#let location = (
  ru: "Москва / Удалённо",
  en: "Moscow / Remote",
  es: "Moscú / Remoto",
).at(lang)

#let phone = (
  ru: "+7 987 106-04-13",
  en: none,
  es: none,
).at(lang)

#let telegram = "t.me/nartemiy"
#let email = "mrart111@mail.ru"
#let github = "github.com/Artemiy111"

#let moscow = (
  ru: "Москва",
  en: "Moscow",
  es: "Moscú",
).at(lang)

#let about = (
  heading: (
    ru: "Обо мне",
    en: "About Me",
    es: "Sobre mí",
  ).at(lang),
  body: (
    ru: [
      - Опытный разработчик, специализирующийся на Vue и Nuxt
      - Умею работать в команде, быстро обучаюсь и адаптируюсь к новым технологиям
      - Имею опыт разработки сложных пользовательских интерфейсов и архитектуры приложений
    ],
    en: [
      - Experienced developer, specializing in Vue and Nuxt
      - Able to work in a team, learn quickly and adapt to new technologies
      - Experienced in developing complex user interfaces and application architecture
    ],
    es: [
      - Desarrollador experimentado, especializado en Vue y Nuxt
      - Capaz de trabajar en equipo, aprender rápidamente y adaptarse a nuevas tecnologías
      - Experiencia en el desarrollo de interfaces de usuario complejas y arquitectura de aplicaciones
    ],
  ).at(lang),
)

#let edu-info = (
  institution: (
    ru: "«МГТУ «СТАНКИН»",
    en: "Moscow State Technological University STANKIN",
    es: "Universidad Tecnológica Estatal de Moscú STANKIN",
  ).at(lang),
  degree: (
    ru: "Программная инженерия",
    en: "Software Engineering",
    es: "Ingeniería de Software",
  ).at(lang),
  dates: [2022 -- 2026],
  location: moscow,
)

#let petri = (
  to: site("https://timed-petri-nets.vercel.app"),
  gh: gh("https://github.com/Artemiy111/petri-nets"),
)

#let cpp-parser = gh("https://github.com/idb-22-15/programming/tree/main/art/term3-lab3")

#let optimization = (
  to: site("https://optimization-methods.artistick.tech"),
  gh: gh("https://github.com/idb-22-15/optimization-methods"),
)

#let edu-body = (
  ru: [
    - C/C++, C\#, ASP.NET, OpenGl, Unity, Assembly под MsDOS
    - Курсовая: Симулятор временных приоритетных сетей Петри ~ #petri.to ~ #petri.gh
    - Парсер языка С++ ~ #cpp-parser
    - Задачи оптимизации: 2D и 3D ~ #optimization.to ~ #optimization.gh
  ],
  en: none,
  es: none,
)

#let nuxt-ui = link("https://github.com/nuxt/ui/issues?q=author%3AArtemiy111")[\@nuxt/ui]
#let shadcn-vue = link("https://github.com/unovue/shadcn-vue/issues?q=author%3AArtemiy111")[shadcn-vue]
#let zod = link("https://github.com/colinhacks/zod/issues?q=author%3AArtemiy111")[zod]

#let work-exp = (
  heading: (
    ru: "Опыт",
    en: "Work Experience",
    es: "Experiencia laboral",
  ),
  body: (
    ru: [
      - Контрибьютил в #nuxt-ui, #shadcn-vue и #zod
    ],
    en: [
      - Contributed to #nuxt-ui, #shadcn-vue and #zod
    ],
    es: [
      - Contribuí a #nuxt-ui, #shadcn-vue y #zod
    ],
  ),
)

#let remote = (
  ru: "Удалённо",
  en: "Remote",
  es: "Remoto",
).at(lang)

#show: resume-preset.with(author: fullname, text-size: 10pt);

#header(
  fullname: fullname,
  position: position,
  location: location,
  phone: phone,
  email: email,
  telegram: telegram,
  github: github,
)

#v(5pt)

== #about.heading

#about.body

== #work-exp.heading.at(lang)

#work-exp.body.at(lang)

#v(5pt)

#work(
  title: "Middle Vue Разработчик",
  dates: [Май 2025 -- Июль 2025],
  company: [ООО Голдев -- Программа управления сортировкой посылок с большим кол-вом таблиц],
  location: remote,
)

#stack[yandex tracker, fsd, vue, reka-ui, vee-validate, \@pinia/colada, zod, nice-grpc, ts-proto, histoire, vitest, tsdown, electron]
- Занимался полным циклом разработки от начала и до сдачи проекта
- Внедрил архитектуру FSD, настроил eslint и pnpm монорепо, .env, build флаги
- Реализовал бóльшую часть ui компонентов на основе Figma, вдохновляясь \@nuxt/ui и shadcn-vue, документировал в Histoire и JSDoc
- Спроектировал сложный кастомизируемый компонент таблицы с пагинацией, фильтрацией, сортировкой, резайзом и синхронизации с url, используя \@tanstack/vue-table
- Проектировал REST API, описывал контракты, экспортируя JSON Schema из zod
- Заменил REAT API на gRPC: описал контракты в Protobuf и вынес SDK в npm пакет с помощью tsdown, что сократило время загрузки в \~2 раза и объём данных в \~3 раза
- Внедрил \@pinia/colada для инвалидации и кеширования данных с API
- Написал кастомный брокер сообщений для статусов посылок с приоритизацией и повторной отправкой
- Написал большое кол-во форм с валидацией, используя vee-validate и zod

#v(5pt)

#work(
  title: (
    ru: "Junior Vue Разработчик",
    en: "Junior Vue Developer",
    es: "Desarrollador Vue Junior",
  ).at(lang),
  dates: (
    ru: [Сент 2024 -- Окт 2024],
    en: [Sep 2024 -- Oct 2024],
    es: [Sep 2024 -- Oct 2024],
  ).at(lang),
  company: (
    ru: [ООО Марбери -- Сайта менеджмента и продажи школьных альбомов],
    en: [LLC Marberry -- School album management and sales website],
    es: [LLC Marberry -- Sitio web de gestión y venta de álbumes],
  ).at(lang),
  location: remote,
)\

#stack[gitlab, канбан в youtrack, fsd, vue, nuxt, pinia]

#let marbery = (
  ru: [
    - Разрабатывал сайт внутренней документации OpenAPI
    - Создавал конструктор форм с drag&drop - аналог Google Forms
  ],
  en: [
    - Developed internal documentation website with OpenAPI
    - Created form builder with drag&drop - similar to Google Forms
  ],
  es: [
    - Desarrollé el sitio web de documentación interna con OpenAPI
    - Creé un generador de formularios con arrastrar y soltar - similar a Google Forms
  ],
).at(lang)

#marbery

== Образование

#edu(
  institution: edu-info.institution,
  degree: edu-info.degree,
  dates: edu-info.dates,
  location: edu-info.location,
)

#edu-body.at(lang)

#v(5pt)

#edu(
  institution: "Chongqing Vocational Institute of Engineering",
  degree: (
    ru: "Стажировка Computer Science",
    en: "Internship Computer Science",
    es: "Pasantía en Ciencias de la Computación",
  ).at(lang),
  dates: (ru: [Сент -- Ноя 2023], en: [Sep -- Nov 2023], es: [Sep -- Nov 2023]).at(lang),
  location: (ru: "Чунцин, Китай", en: "Chongqing, China", es: "Chongqing, China").at(lang),
),
)

- Веб-скрейпинг на Python

== Навыки

- _Frontend_: TypeScript, Vue, Nuxt, Pinia, \@pinia/colada, TailwindCSS
- _Дизайн_: Usability, Акценты, Пространства, Типографика, Figma
- _Архитектура_: Feature Sliced Design
- _Backend_: SQL, DrizzleORM, tRPC
- _DevOps_: Docker, Nginx, Vercel

#let languages = (
  heading: (
    ru: "Языки",
    en: "Languages",
    es: "Idiomas",
  ).at(lang),
  body: (
    ru: "Английский B2, Испанский A2",
    en: "Russian Native, English B2, Spanish A2",
    es: "Ruso Nativo, Inglés B2, Español A2",
  ).at(lang),
)

== #languages.heading

#languages.body

#pagebreak()

#let projects = (
  heading: (
    ru: "Проекты",
    en: "Projects",
    es: "Proyectos",
  ).at(lang),
)

== #projects.heading

#let biplane = (
  to: site("https://biplane-design.com"),
  gh: gh("https://github.com/Artemiy111/biplane-design.com"),
)

- Cайт действующей архитектурной студии Биплан-Дизайн -- Nuxt, DrizzleORM, S3 ~#biplane.to ~ #biplane.gh
- Мессенджер -- Oauth, S3, SMTP ~ #gh("https://github.com/Artemiy111/messenger")
- Редизайн сайта Гелиос -- современный CSS 2024 ~ #gh("https://github.com/Artemiy111/gelios")
- Камень-Ножницы-Бумага -- дизайн-система и websockets ~ #gh("https://github.com/Artemiy111/rps")
- Бронирование номеров в отеле -- формы, SMTP ~ #gh("https://github.com/Artemiy111/hotel")
