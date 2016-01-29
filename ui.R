library(shiny) 
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Body Mass Index (BMI) Calculator"),
                
                sidebarPanel(
                        numericInput('weight', 'Insert your weight (kilograms)', 0) ,
                        numericInput('height', 'Insert your height (metres)', 0, min = 0.2, max = 3, step = 0.01),
                        submitButton('Submit')
                ), 
                mainPanel(
                        
                        h4(('Your BMI is:'),style = "color:blue"),
                        verbatimTextOutput("output"),
                        h4(('Your category:'),style = "color:magenta"),
                        strong(verbatimTextOutput("calculate"))
                        
                        
                )
                
        )   
)