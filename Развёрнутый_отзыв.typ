#import "@preview/cheq:0.3.0": checklist
#import "@preview/datify:1.0.1": custom-date-format
#show: checklist

#set text(size: 12pt, font: "Lato")
#set text(lang: "ru")
#set text(font: "Lato")
#show link: underline
#set page("a4")
#set page(margin: (
  top: 2cm,
  bottom: 1cm,
  x: 1.5cm,
))

#let checked = box(
  box(stroke: 0.5pt, width: 0.7em, height: 0.7em, align(center + horizon)[ #sym.checkmark ]),
  outset: 2pt,
)
#let unchecked = box(box(stroke: 0.5pt, width: 0.7em, height: 0.7em), outset: 2pt)
#let topic = "Тема учебной практики"
#let FIO = "Фамилия Имя Отчество"
#let SEM = "N-й"

#set document(
  title: [Отзыв научного руководителя об учебной практике
    обучающегося #FIO на тему
    "#topic" за #SEM семестр],
)

#title()

Оцените по шкале от 1 до 5 следующие утверждения (1 - совсем не согласен с утверждением, "всё абсолютно не так"; 5 - полностью согласен с утверждением, "удивительно, но именно так и есть"):

- Цель практики достигнута полностью.
  #h(1em)  #box(stack(
    dir: ltr,
    spacing: 1em,
    [#unchecked 1],
    [#checked 2],
    [#unchecked 3],
    [#unchecked 4],
    [#unchecked 5],
  ))

  Комментарии.
- Этапы работы выполнялись в ожидаемые сроки, работа велась непрерывно в течение семестра.
  #h(1em) #box(stack(
    dir: ltr,
    spacing: 1em,
    [#unchecked 1],
    [#checked 2],
    [#unchecked 3],
    [#unchecked 4],
    [#unchecked 5],
  ))

  Комментарии.
- Отчётность была регулярной, коммуникации с научным руководителем были не реже раза в неделю.
  #h(1em) #box(stack(
    dir: ltr,
    spacing: 1em,
    [#unchecked 1],
    [#checked 2],
    [#unchecked 3],
    [#unchecked 4],
    [#unchecked 5],
  ))

  Комментарии.
- Уровень общей технической грамотности и самостоятельности обучающегося соответствовал ожиданиям, необходимости в разъяснении очевидных вещей не возникало.
  #h(1em) #box(stack(
    dir: ltr,
    spacing: 1em,
    [#unchecked 1],
    [#checked 2],
    [#unchecked 3],
    [#unchecked 4],
    [#unchecked 5],
  ))

  Комментарии.
- Получившийся код соответствует ожиданиям по качеству.
  #h(1em) #box(stack(
    dir: ltr,
    spacing: 1em,
    [#unchecked 1],
    [#checked 2],
    [#unchecked 3],
    [#unchecked 4],
    [#unchecked 5],
  ))

  Комментарии.
- Замечания своевременно и полностью исправлялись.
  #h(1em) #box(stack(
    dir: ltr,
    spacing: 1em,
    [#unchecked 1],
    [#checked 2],
    [#unchecked 3],
    [#unchecked 4],
    [#unchecked 5],
  ))
  Комментарии.

Если работа предполагала пуллреквест в существующий репозиторий:
- [ ] есть внятное описание пуллреквеста с технической документацией
- [ ] есть модульные тесты на новую функциональность
- [ ]  изменения приняты в основную ветку

Если работа предполагала создание нового репозитория (отметьте галочкой):
- [ ] есть внятное описание проекта в README с техническим описанием, инструкцией по сборке и запуску, примеры использования
- [ ] настроен CI с модульными тестами и линтером
- [ ] проект развёрнут и используется

Итого рекомендуемая оценка: (заполнить конкретной буквой: A, B, C, D, E, F), где А --- "полностью доволен", "отлично"; F --- "ужасно", "неудовлетворительно", "всё с самого начала переделать".


#grid(
  columns: (1fr, 1fr),
  // Two equal-width columns
  gutter: 10pt,
  // Space between cells
  [Дата: #custom-date-format(datetime.today(), pattern: "long", lang: "ru")],
  [ #image("Pushkin-sign.jpg", width: 80%) ],

  [Научный руководитель,],
  [должность,
    ученая степень,
    ученое звание,
    ФИО],
)
