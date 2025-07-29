#import "@preview/typewind:0.1.0" as tw
#import "@preview/fontawesome:0.5.0": *;

#import "lib.typ": *
#import "inject.typ": *

#let lang = sys.inputs.at("lang", default: "ru")
#let meta = toml("meta.toml")

#let text-size = 10pt
#let text-leading = (text-size * 1.6 - text-size) * 1
#let accent = tw.blue-900;

#let (fullname, position, location, remote) = meta.at(lang)

#let phone = meta.common.phone.at(lang)
#let (telegram, github, email) = meta.common

#let moscow = meta.location.moscow.at(lang)

#let nuxt-ui = get-link(meta.common.links.nuxt-ui)
#let shadcn-vue = get-link(meta.common.links.shadcn-vue)
#let zod = get-link(meta.common.links.zod)
#let vue-forge = get-link(meta.common.links.vue-forge)

#let about-heading = meta.at(lang).about.heading

#let about-body = (
  ru: [
    - Cпециализируюсь на Vue и Nuxt
    - Контрибьютил в #nuxt-ui, #shadcn-vue и #zod, участвовал в #vue-forge
  ],
  en: [
    - Specialize in Vue and Nuxt
    - Contributed to #nuxt-ui, #shadcn-vue and #zod, participated in #vue-forge
  ],
  es: [
    - Especializado en Vue y Nuxt
    - Contribuí a #nuxt-ui, #shadcn-vue y #zod, participé en #vue-forge
  ],
).at(lang)

#let edu = (
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
  site: site("https://timed-petri-nets.vercel.app"),
  gh: gh("https://github.com/Artemiy111/petri-nets"),
)

#let parser = gh("https://github.com/idb-22-15/programming/tree/main/art/term3-lab3")

#let opti = (
  site: site("https://optimization-methods.artistick.tech"),
  gh: gh("https://github.com/idb-22-15/optimization-methods"),
)

#let edu-body = (
  ru: [
    - Курсовая: Симулятор временных приоритетных сетей Петри ~ #petri.site ~ #petri.gh
    - Парсер языка С++ ~ #parser
    - Задачи оптимизации: 2D и 3D ~ #opti.site ~ #opti.gh
  ],
  en: [
    - Coursework: Simulator of timed Petri nets ~ #petri.site ~ #petri.gh
    - C++ language parser ~ #parser
    - Optimization tasks: 2D and 3D ~ #opti.site ~ #opti.gh
  ],
  es: [
    - Trabajo de curso: Simulador de redes de Petri temporizadas ~ #petri.site ~ #petri.gh
    - Analizador del lenguaje C++ ~ #parser
    - Tareas de optimización: 2D y 3D ~ #opti.site ~ #opti.gh
  ],
)

#let work-exp = (
  heading: (
    ru: "Опыт",
    en: "Work Experience",
    es: "Experiencia laboral",
  ),
)

#show: resume-preset.with(author: fullname, text-size: 10pt, date: datetime(year: 2025, month: 7, day: 29));

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

== #about-heading

#about-body

== #work-exp.heading.at(lang)

#v(5pt)

#let goldev = (
  ru: (
    title: "Middle Vue Разработчик",
    dates: [Май 2025 -- Июль 2025],
    company: [ООО Голдев -- Программа управления сортировкой посылок с большим кол-вом таблиц],
    location: remote,
  ),
  en: (
    title: "Middle Vue Developer",
    dates: [May 2025 -- Jul 2025],
    company: [LLC Goldev -- Program for managing parcel sorting with many tables],
    location: remote,
  ),
  es: (
    title: "Desarrollador Vue Intermedio",
    dates: [May 2025 -- Jul 2025],
    company: [LLC Goldev -- Programa de gestión de clasificación de paquetes con muchas tablas],
    location: remote,
  ),
).at(lang)

#let goldev-body = (
  ru: [
    - Занимался полным циклом разработки от начала и до сдачи проекта
    - Внедрил архитектуру FSD, настроил eslint и pnpm монорепо, .env, build флаги
    - Реализовал бóльшую часть ui компонентов на основе Figma, вдохновляясь \@nuxt/ui и shadcn-vue, документировал в Histoire и JSDoc
    - Спроектировал сложный кастомизируемый компонент таблицы с пагинацией, фильтрацией, сортировкой, резайзом и синхронизации с url, используя \@tanstack/vue-table
    - Проектировал REST API, описывал контракты, экспортируя JSON Schema из zod
    - Заменил REAT API на gRPC: описал контракты в Protobuf и вынес SDK в npm пакет с помощью tsdown, что сократило время загрузки в \~2 раза и объём данных в \~3 раза
    - Внедрил \@pinia/colada для инвалидации и кеширования данных с API
    - Написал кастомный брокер сообщений для статусов посылок с приоритизацией и повторной отправкой
    - Написал большое кол-во форм с валидацией, используя vee-validate и zod
  ],
  en: [
    - Worked on the full development cycle from start to project delivery
    - Implemented FSD architecture, set up eslint and pnpm monorepo, .env, build flags
    - Developed most of the UI components based on Figma, inspired by \@nuxt/ui and shadcn-vue, documented in Histoire and JSDoc
    - Designed a complex customizable table component with pagination, filtering, sorting, resizing and URL synchronization using \@tanstack/vue-table
    - Designed REST API, described contracts, exporting JSON Schema from zod
    - Replaced REST API with gRPC: described contracts in Protobuf and moved SDK to npm package using tsdown, which reduced loading time by ~2 times and data size by ~3 times
    - Implemented \@pinia/colada for data invalidation and caching with API
    - Wrote custom message broker for parcel statuses with prioritization and retrying
    - Created a large number of forms with validation using vee-validate and zod
  ],
  es: [
    - Trabajé en el ciclo completo de desarrollo desde el inicio hasta la entrega del proyecto
    - Implementé la arquitectura FSD, configuré eslint y pnpm monorepo, .env, banderas de compilación
    - Desarrollé la mayoría de los componentes de la interfaz de usuario basados en Figma, inspirado en \@nuxt/ui y shadcn-vue, documentado en Histoire y JSDoc
    - Diseñé un componente de tabla complejo y personalizable con paginación, filtrado, ordenación, cambio de tamaño y sincronización con URL utilizando \@tanstack/vue-table
    - Diseñé la API REST, describí los contratos, exportando JSON Schema desde zod
    - Reemplacé la API REST por gRPC: describí los contratos en Protobuf y moví el SDK a un paquete npm usando tsdown, lo que redujo el tiempo de carga en ~2 veces y el tamaño de los datos en ~3 veces
    - Implementé \@pinia/colada para la invalidación y el almacenamiento en caché de datos con la API
    - Escribí un corredor de mensajes personalizado para los estados de los paquetes con priorización y reintentos
    - Creé una gran cantidad de formularios con validación utilizando vee-validate y zod
  ],
).at(lang)

#work-item(..goldev)

#stack[yandex tracker, fsd, vue, reka-ui, vee-validate, \@pinia/colada, zod, nice-grpc, ts-proto, histoire, vitest, tsdown, electron]

#goldev-body

#v(5pt)

#let marbery = (
  ru: (
    title: "Junior Vue Разработчик",
    dates: [Сент 2024 -- Окт 2024],
    company: [ООО Марбери -- Сайта менеджмента и продажи школьных альбомов],
    location: remote,
  ),
  en: (
    title: "Junior Vue Developer",
    dates: [Sep 2024 -- Oct 2024],
    company: [LLC Marberry -- School album management and sales website],
    location: remote,
  ),
  es: (
    title: "Desarrollador Vue Junior",
    dates: [Sep 2024 -- Oct 2024],
    company: [LLC Marberry -- Sitio web de gestión y venta de álbumes],
    location: remote,
  ),
).at(lang)

#work-item(..marbery)\

#stack[gitlab, youtrack, fsd, vue, nuxt, pinia]

#let marbery-body = (
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

#marbery-body

#let edu-heading = meta.at(lang).edu.heading

== #edu-heading

#edu-item(..edu)

#stack[Assembly, C/C++, C\#, Asp.Net, OpenGl, Unity]

#edu-body.at(lang)

#v(5pt)

#let chong = (
  ru: (
    institution: "Chongqing Vocational Institute of Engineering",
    degree: "Стажировка Computer Science",
    dates: [Сент -- Ноя 2023],
    location: "Чунцин, Китай",
  ),
  en: (
    institution: "Chongqing Vocational Institute of Engineering",
    degree: "Internship Computer Science",
    dates: [Sep -- Nov 2023],
    location: "Chongqing, China",
  ),
  es: (
    institution: "Chongqing Vocational Institute of Engineering",
    degree: "Pasantía en Ciencias de la Computación",
    dates: [Sep -- Nov 2023],
    location: "Chongqing, China",
  ),
).at(lang)

#let chong-body = (
  ru: [
    - Веб-скрейпинг на Python
  ],
  en: [
    - Web scraping in Python
  ],
  es: [
    - Web scraping en Python
  ],
)

#edu-item(..chong)

#chong-body.at(lang)

#let skills-heading = meta.at(lang).skills.heading

#let skills-body = (
  ru: [
    - _Frontend_: TypeScript, Vue, Nuxt, Pinia, \@pinia/colada, TailwindCSS
    - _Дизайн_: Usability, Акценты, Пространства, Типографика, Figma
    - _Архитектура_: Feature Sliced Design
    - _Backend_: SQL, DrizzleORM, tRPC
    - _DevOps_: Docker, Nginx, Vercel
  ],
  en: [
    - _Frontend_: TypeScript, Vue, Nuxt, Pinia, \@pinia/colada, TailwindCSS
    - _Design_: Usability, Accents, Spaces, Typography, Figma
    - _Architecture_: Feature Sliced Design
    - _Backend_: SQL, DrizzleORM, tRPC
    - _DevOps_: Docker, Nginx, Vercel
  ],
  es: [
    - _Frontend_: TypeScript, Vue, Nuxt, Pinia, \@pinia/colada, TailwindCSS
    - _Diseño_: Usabilidad, Acentos, Espacios, Tipografía, Figma
    - _Arquitectura_: Feature Sliced Design
    - _Backend_: SQL, DrizzleORM, tRPC
    - _DevOps_: Docker, Nginx, Vercel
  ],
).at(lang)

== #skills-heading

#skills-body

#let languages-heading = meta.at(lang).languages.heading

#let languages-body = (
  ru: "Английский B2, Испанский A2",
  en: "Russian Native, English B2, Spanish A2",
  es: "Ruso Nativo, Inglés B2, Español A2",
).at(lang)

== #languages-heading

#languages-body

#pagebreak()

#let projects-heading = meta.at(lang).projects.heading

#let biplane = (
  site: site("https://biplane-design.com"),
  gh: gh("https://github.com/Artemiy111/biplane-design.com"),
)

#let messenger = gh("https://github.com/Artemiy111/messenger")
#let gelios = gh("https://github.com/Artemiy111/gelios")
#let hotel = gh("https://github.com/Artemiy111/hotel")

#let project-body = (
  ru: [
    - Cайт действующей архитектурной студии Биплан-Дизайн -- Nuxt, DrizzleORM, S3 ~#biplane.site ~ #biplane.gh
    - Мессенджер -- Oauth, S3, SMTP ~ #messenger
    - Редизайн сайта Гелиос -- современный CSS 2024 ~ #gelios
    - Бронирование номеров в отеле -- формы, SMTP ~ #hotel
  ],
  en: [
    - Website of the active architectural studio Biplane-Design -- Nuxt, DrizzleORM, S3 ~#biplane.site ~ #biplane.gh
    - Messenger -- Oauth, S3, SMTP ~ #messenger
    - Redesign of the Gelios website -- modern CSS 2024 ~ #gelios
    - Hotel room booking -- forms, SMTP ~ #hotel
  ],
  es: [
    - Sitio web del estudio de arquitectura activo Biplane-Design -- Nuxt, DrizzleORM, S3 ~#biplane.site ~ #biplane.gh
    - Mensajero -- Oauth, S3, SMTP ~ #messenger
    - Rediseño del sitio web de Gelios -- CSS moderno 2024 ~ #gelios
    - Reserva de habitaciones de hotel -- formularios, SMTP ~ #hotel
  ],
).at(lang)

== #projects-heading

#project-body
