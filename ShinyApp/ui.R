library(rmarkdown)
library(shiny)

vars <- c('mpg', 'disp', 'hp', 'drat', 'wt', 'qsec')

navbarPage("K-Means clustering with mtcars",
           tabPanel("K-Means",
                    sidebarPanel(selectInput('xcol', 'X Variable', vars),
                                      selectInput('ycol', 'Y Variable', vars, selected = vars[[2]]),
                                      numericInput('clusters', 'Number of Clusters', 3, min=1, max=9)),
                         mainPanel(plotOutput('plot1'))),
         tabPanel("docs", includeMarkdown("./readme.md")))
