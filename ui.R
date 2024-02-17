# navbar page ----
ui <- navbarPage(
  
  # # apply {fresh} theme ----
 theme = shinytheme("cerulean"),
  
  # # add css file ----
  # header = tags$head(
  #   tags$link(rel = "stylesheet", type = "text/css", href = "sass-styles.css")
  # ),
  
  title = "Polar Bear Population Projection Explorer",

  # (Page 1) intro tabPanel ----
  tabPanel(title = "About this App",

         # intro text fluidRow ----
         fluidRow(

           # use columns to create white space on sides
           column(1),
           column(10, includeMarkdown("text/about.md")),
           column(1)

         ), # END intro text fluidRow

         hr(), # creates light gray horizontal line

         # footer text ----
         includeMarkdown("text/footer.md")
   
  ), # END (Page 1) intro tabPanel
  
  # (Page 2) data viz tabPanel ----
  tabPanel(title = "Explore the Study Area",

           # tabsetPanel to contain tabs for data viz ----
           tabsetPanel(

             # beaufort map tabPanel ----
             tabPanel(title = "Beaufort Sea Map",

                      # beaufort sidebarLayout ----
                      sidebarLayout(

                        # beaufort sidebarPanel ----
                        sidebarPanel(

                          # study site pickerInput ----
                          
                          # study site type pickerInput ----
                          pickerInput(inputId = "study_site_input", label = "Select study site(s):",
                                      choices = c(1, 2, 3, 4, 5),
                                      selected = c("cascade", "pool"),
                                      options = pickerOptions(actionsBox = TRUE),
                                      multiple = TRUE), # END channel type pickerInput
                          
                           # END study site pickerInput

                          # section checkboxGroupInput ----
                          
                       # END section checkboxGroupInput

                        ), # END beaufort sidebarPanel

                        # climate mainPanel ----
                        mainPanel(

                        ) # END climate mainPanel

                      ) # END climate sidebarLayout

             ), # END beaufort tabPanel

             # climate model tabPanel ----
             tabPanel(title = "Climate Projections",

                      # climate plot sidebarLayout ----
                      sidebarLayout(

                        # climate plot sidebarPanel ----
                        sidebarPanel(

                          # scenario pickerInput ----
                          
                          #placeholder#
                          
                          # END scenario pickerInput

                          # bin number sliderInput ----
                          sliderInput(inputId = "bin_num_input", label = "Select degrees of warming:",
                                      value = 25, max = 6, min = 0.1), # END bin number sliderInput

                        ), # END climate plot sidebarPanel

                        # pb population projection plot mainPanel ----
                        mainPanel(

                          #placeholder

                        ) # END climate plot mainPanel

                      ) # END climate plot sidebarLayout

             ) # END climate tabPanel

           ) # END tabsetPanel

  ), # END (Page 2) data viz tabPanel

  
  # (Page 3) data viz tabPanel ----
  tabPanel(title = "Explore the Population Projections",
           
           # tabsetPanel to contain tabs for data viz ----
           tabsetPanel(
             
             # trout tabPanel ----
             tabPanel(title = "Polar Bear Population",
                      
                      # pb sidebarLayout ----
                      sidebarLayout(
                        
                        # pb sidebarPanel ----
                        sidebarPanel(
                          
                          # projection pickerInput ----
                          
                          
                          #placeholder # END projection pickerInput
                          
                          # section checkboxGroupInput ----
                          # END section checkboxGroupInput
                          
                        ), # END pb sidebarPanel
                        
                        # Demographic Parameters mainPanel ----
                        mainPanel(
                          
                        ) # END demographics mainPanel
                        
                      ) # END trout sidebarLayout
                      
             ), # END trout tabPanel
             
             # penguin tabPanel ----
             tabPanel(title = "Demographic Parameters",
                      
                      # demographic plot sidebarLayout ----
                      sidebarLayout(
                        
                        # demographic plot sidebarPanel ----
                        sidebarPanel(
                          
                          # Parameter pickerInput ----
                          # placeholder
                          # END island pickerInput
                          
                          # bin number sliderInput ----
                          #placeholder
                           # END bin number sliderInput
                          
                        ), # END demographic plot sidebarPanel
                        
                        # pb plot mainPanel ----
                        mainPanel(
                          
                          #placeholder
                          
                        ) # END pb plot mainPanel
                        
                      ) # END pb plot sidebarLayout
                      
             ) # END pb tabPanel
             
           ) # END tabsetPanel
           
  ) # END (Page 3) data viz tabPanel
) # END navbarPage
