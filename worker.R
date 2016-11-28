#put all the path names

#source(gsoa.)

jobstorun_Dir= "~/Documents/PhDProjects/genomicsAPI/GSOA-Shiny/JobsToRun/"
jobsinprocress_Dir= "~/Documents/PhDProjects/genomicsAPI/GSOA-Shiny/JobsInProgressCompleted//"


while(TRUE) {
  
  # list the unstarted jobs
  jobs = list.files(jobstorun_Dir)
  
  # checks to see if there's any jobs 
  if (length(jobs)== 0){
    #sleep right here for 1 sec
    message('no jobs found')
    Sys.sleep(1)
    # start the loop over
    next
  }
  
  #add something to make sure the download is complete
  
  # move the unrun job to the inprocess folder
  file.rename(paste(jobstorun_Dir, jobs[1], sep= "" ), paste(jobsinprocress_Dir, jobs[1], sep= "" ))
  jobDir= paste(jobsinprocress_Dir, jobs[1], sep= "" )
  

  # process the job
  
  dataFile1=
  classFile=
  gmtFile= 
  dataFile2 =NA
  dataFile3=NA
  dataFile4=NA

  
  library(GSOA)
  
  GSOA_ProcessFiles(dataFilePath_P53, classFilePath_P53, gmtFilePath_P53)
  

  
  
  message("test")
  Sys.sleep(1)
  message("slept")
}


