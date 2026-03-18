library(readr)
library(dplyr)

student_data <- read.csv("student_data.csv")

#--summary----------------------------------------------------------------------------
summary(student_data)
View(student_data)

#--head &tail------------------------------------------------------------------------- 
head(student_data)
tail(student_data)

#--filter-----------------------------------------------------------------------------
stud_fail <- student_data %>% filter(final_exam_mark < 40)
View(stud_fail)

mydata <- student_data%>% filter(final_exam_mark > 40) %>% arrange(final_exam_mark)
View(mydata)

mydata1 <- student_data %>% filter(final_exam_mark > 40) %>% arrange(desc(final_exam_mark))
View(mydata1)

#--select--------------------------------------------------------------------------------
mydata2 <- student_data %>% select(student_id, coursework_mark, final_exam_mark)
View(mydata2)
glimpse(mydata2)

#--mutate, select--------------------------------------------------------------------------------
mydata4 <- student_data %>% mutate(Total_mark = (coursework_mark + final_exam_mark/200*100))
View(mydata4)

#-- not select --------------------------------------------------------------------------
mydata5 <- cbind(student_data , Total_Mark = (student_data $coursework_mark + student_data$final_exam_mark/200*100))
View(mydata5)



