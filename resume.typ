#import "@preview/typewind:0.1.0" as tw
#import "@preview/fontawesome:0.5.0": *;

#import "lib.typ": *

#show: resume-preset.with(text-size: 10pt);

#let text-size = 10pt
#let text-leading = (text-size * 1.6 - text-size) * 1
#let accent = tw.blue-900;

#let fullname = "Набойщиков Артемий"
#let position = "Frontend Разработчик/Vue"
#let location = "Москва/Удалённо"
#let phone = "+7 987 106-04-13"
#let telegram = "t.me/nartemiy"
#let email = "mrart111@mail.ru"
#let github = "github.com/Artemiy111"

#let education = (
  institution: "«МГТУ «СТАНКИН»",
  degree: "Программная инженерия",
  dates: period(2022, 2026),
  location: "Москва",
)

#header(
  fullname: fullname,
  position: position,
  location: location,
  phone: phone,
  email: email,
  telegram: telegram,
  github: github,
)

== О себе
Уверенно владею экосистемой Vue, вношу в неё свой вклад. Быстро осваиваю новые технологии

== Опыт

#v(5pt)

- Контрибьютил в #link("https://github.com/nuxt/ui/issues?q=author%3AArtemiy111")[\@nuxt/ui], #link("https://github.com/unovue/shadcn-vue/issues?q=author%3AArtemiy111")[shadcn-vue] и #link("https://github.com/colinhacks/zod/issues?q=author%3AArtemiy111")[zod]

#v(5pt)

#work(
  title: "Middle Vue Разработчик",
  dates: period("Май 2025", "Июль 2025"),
  company: [ООО Голдев -- Программа управления сортировкой посылок с большим кол-вом таблиц],
  location: "Удалённо",
)

#let stack(body) = [
  #set text(fill: tw.blue-950)
  #body
]

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
  title: "Junior Vue Разработчик",
  dates: period("Сент 2024", "Окт 2024"),
  company: [ООО Марбери -- Сайта менеджмента и продажи школьных альбомов],
  location: "Удалённо",
)\

#stack[gitlab, канбан в youtrack, fsd, vue, nuxt, pinia]
- Разрабатывал сайт внутренней документации OpenAPI
- Создавал конструктор форм с drag&drop - аналог Google Forms

== Образование

#edu(institution: education.institution, degree: education.degree, dates: education.dates, location: education.location)

- C/C++, C\#, ASP.NET, OpenGl, Unity, Assembly под MsDOS
- Курсовая: Симулятор временных приоритетных сетей Петри ~ #site("https://timed-petri-nets.vercel.app") ~ #gh("https://github.com/Artemiy111/petri-nets")
- Парсер языка С++ ~ #gh("https://github.com/idb-22-15/programming/tree/main/art/term3-lab3")
- Задачи оптимизации: 2D и 3D ~ #site("https://optimization-methods.artistick.tech") ~ #gh("https://github.com/idb-22-15/optimization-methods")

#v(5pt)

#edu(
  institution: "Chongqing Vocational Institute of Engineering",
  degree: "Стажировка Computer Science",
  dates: period("Сент", "Ноя 2023"),
  location: "Чунцин, Китай",
)

- Веб-скрейпинг на Python

== Навыки

- _Frontend_: TypeScript, Vue, Nuxt, Pinia, \@pinia/colada, TailwindCSS
- _Дизайн_: Usability, Акценты, Пространства, Типографика, Figma
- _Архитектура_: Feature Sliced Design
- _Backend_: SQL, DrizzleORM, tRPC
- _DevOps_: Docker, Nginx, Vercel

== Языки

Английский B2, Испанский A2

#pagebreak()

== Проекты

- Cайт действующей архитектурной студии Биплан-Дизайн -- Nuxt, DrizzleORM, S3 ~#site("https://biplane-design.com") ~ #gh("https://github.com/Artemiy111/biplane-design.com")
- Мессенджер -- Oauth, S3, SMTP ~ #gh("https://github.com/Artemiy111/messenger")
- Редизайн сайта Гелиос -- современный CSS 2024 ~ #gh("https://github.com/Artemiy111/gelios")
- Камень-Ножницы-Бумага -- дизайн-система и websockets ~ #gh("https://github.com/Artemiy111/rps")
- Бронирование номеров в отеле -- формы, SMTP ~ #gh("https://github.com/Artemiy111/hotel")
