library(shiny)
library(shinythemes)
shinyUI(fluidPage(theme = shinytheme("darkly"),
  titlePanel(title=div(img(src="title1.png",height = 200, width = 260))),
  headerPanel(title="Sentimental analysis App"),
  sidebarLayout(
                
                sidebarPanel(style="background:black",
                  br(),
                  h3("Sentimental Analysis"),
                  p("Sentiment Analysis is the process of determining whether a piece of writing is ,", span("positive, negative or neutral", style = "color:blue"),". It's also known as opinion mining, deriving the opinion or attitude of a speaker. 
                    A common use case for this technology is to discover how people feel about a particular topic."),
                  br()
 
                  
                ),
                mainPanel( 
                  tabsetPanel(
                  
                    tabPanel(
                      title=p("Introduction",style="font-weight:bold"),
                      br(),
                      img(src="intro.png",height = 400, width = 850)
                    ),
                    tabPanel(
                      title=p("Input",style="font-weight:bold"),
                      
                      sidebarLayout(position="right",
                                    sidebarPanel(h6("Very Negative", align = "center", style = "color:red"),
                                                 h5("Negative", align = "center", style = "color:red"),
                                                 h5("Sarcasm", align = "center", style = "color:orange"),
                                                 h4("Neutral", align = "center", style = "color:yellow"),
                                                 h3("Positive", align = "center", style = "color:green"),
                                                 h3("Very Positive", align = "center", style = "color:green")
                                                 
                                                 ),
                        
                        mainPanel(
                          fluidRow(column(9, 
                                 textAreaInput("data", label = h3("Give your Review"), 
                                           value = "Write your paragraph..."),
                                 submitButton("Submit") , 
                                 br()
                        )
                        
                        
                        ) 
                        )
                    )),
                    tabPanel(
                      title=p("Output",style="font-weight:bold"),
                      br(),
 
                        mainPanel(
                          plotOutput("mypie"),
                          h3("Graphical representation",style="color:black",width=850),
                          tableOutput("Graph")
                      )
                    
   ))))))