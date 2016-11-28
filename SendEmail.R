install.packages("devtools", dep = T)
library(devtools)
install_github("rpremraj/mailR")

library(mailR)

send.mail(from = "smacneil88@gmail.com",
          to = c("smacneil88@gmail.com"),
          subject = "HTML file generated using Markdown",
          body = "GSOA_Report.html",
          html = TRUE,
          inline = TRUE,
          smtp = list(host.name = "smtp.gmail.com", port = 465, user.name = "smacneil88", passwd = "Berkeley13", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)









send.mail(from = "smacneil88@gmail.com",
          to = c("shelley_macneil@hotmail.com" ),
          subject = "Your GSOA Analysis is complete",
          body = "Attached is your HTML report. Please download before viewing on Web Broswer",
          smtp = list(host.name = "smtp.gmail.com", port = 465, user.name = "smacneil88", passwd = "Berkeley13", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE,
          attach.files = "~/Documents/PhDProjects/genomicsAPI/GSOA-Shiny/GSOA_Report.html",
          #file.names = c("Download log.log", "Upload log.log", "DropBox File.rtf"), # optional parameter
          #file.descriptions = c("Description for download log", "Description for upload log", "DropBox File"), # optional parameter
          debug = TRUE)












from <- "smacneil88@gmail.com"
to <- "smacneil88@gmail.com"
subject <- "Email Subject"
body <- "Email body."                     
mailControl=list(smtpServer="serverinfo")




sendmail(from=from,to=to,subject=subject,msg=body,control=mailControl)

#####send same email with attachment

#needs full path if not in working directory
attachmentPath <- "subfolder/log.txt"

#same as attachmentPath if using working directory
attachmentName <- "log.txt"

#key part for attachments, put the body and the mime_part in a list for msg
attachmentObject <- mime_part(x=attachmentPath,name=attachmentName)
bodyWithAttachment <- list(body,attachmentObject)

sendmail(from=from,to=to,subject=subject,msg=bodyWithAttachment,control=mailControl)


file.copy("yo.txt", "~/Documents" )
