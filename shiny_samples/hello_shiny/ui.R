library(shiny)

shinyUI(fluidPage(
  titlePanel("Hello Shiny"),
  sidebarLayout(
    p(span("사이드바", style="color:blue"),"입니다."),
    p("by GilDong")
  ),
  mainPanel(
    h1("메인 입니다."),
    h2("안녕하세요. shiny 첫 페이지입니다.", align="center"),
    p("HTML 태그 실행을 연습해 봅니다."),
    strong("String 속성 연습"),
    em("어떤 모양일까요?"),
    code("간단한 코드가 가능합니다."),
    p("문장 중간에",
      span("색상",style="color:red"),
      "도 변경가능합니다."
      )
  )
))