# Mahay weight and height plots


# Load data ####
  library(ggplot2)
  library(lubridate)
  library(RColorBrewer)
  library(scales)
  library(gridExtra)
  library(grid)

  curdate <- "20180526"

  setwd("/Volumes/Macintosh HD/Users/Ling/Dropbox/Madagascar Mahay Data/analysis/graphs/Main-impact-paper/")

  wflzcont <- read.csv("wflz_cont.csv")
  wflzcont$Treatment[wflzcont$X_m1==14] <- "T014"
  wflzcont$Treatment[wflzcont$X_m1==2] <- "T2"
  wflzcont$Treatment[wflzcont$X_m1==3] <- "T3"
  wflzcont$Treatment <- factor(wflzcont$Treatment,levels=c("T014","T2","T3"))  
  wflzcont$X_m2 <- wflzcont$X_at2
  
  wfazcont <- read.csv("wfaz_cont.csv")
  wfazcont$Treatment[wfazcont$X_m1==14] <- "T014"
  wfazcont$Treatment[wfazcont$X_m1==2] <- "T2"
  wfazcont$Treatment[wfazcont$X_m1==3] <- "T3"
  wfazcont$Treatment <- factor(wfazcont$Treatment,levels=c("T014","T2","T3"))  
  wfazcont$X_m2 <- wfazcont$X_at2
  
  hfazcont <- read.csv("hfaz_cont.csv")
  hfazcont$Treatment[hfazcont$X_m1==14] <- "T014"
  hfazcont$Treatment[hfazcont$X_m1==2] <- "T2"
  hfazcont$Treatment[hfazcont$X_m1==3] <- "T3"
  hfazcont$Treatment <- factor(hfazcont$Treatment,levels=c("T014","T2","T3"))  
  hfazcont$X_m2 <- hfazcont$X_at2
  
  
# Plot ####  
  
pdf(paste("/Volumes/Macintosh HD/Users/Ling/Dropbox/Madagascar Mahay Data/analysis/graphs/Main-impact-paper/ITT_figure3_cont_",curdate,".pdf",sep=""), width=11,height=8.5)


   
  # wflz cont age
  ggplot(data=wflzcont, aes(x=X_m2,y=X_margin,group=Treatment, colour=Treatment)) +
    geom_line(stat="identity", size=2) +
    geom_ribbon(aes(ymin=X_ci_lb, ymax=X_ci_ub, fill=Treatment),alpha=0.2,size=0,colour=NA) +
    theme_bw(base_size=18) +
    ylab("Weight for length z-score") +
    xlab("Age (months)") +
    ggtitle("Modeled wflz by age, all measurements")    
  
  # wfaz cont age
  ggplot(data=wflzcont, aes(x=X_m2,y=X_margin,group=Treatment, colour=Treatment)) +
    geom_line(stat="identity", size=2) +
    geom_ribbon(aes(ymin=X_ci_lb, ymax=X_ci_ub, fill=Treatment),alpha=0.2,size=0,colour=NA) +
    theme_bw(base_size=18) +
    ylab("Weight for age z-score") +
    xlab("Age (months)") +
    ggtitle("Modeled wflz by age, all measurements")    
  
  # hfaz cont age
  ggplot(data=wflzcont, aes(x=X_m2,y=X_margin,group=Treatment, colour=Treatment)) +
    geom_line(stat="identity", size=2) +
    geom_ribbon(aes(ymin=X_ci_lb, ymax=X_ci_ub, fill=Treatment),alpha=0.2,size=0,colour=NA) +
    theme_bw(base_size=18) +
    ylab("Height for age z-score") +
    xlab("Age (months)") +
    ggtitle("Modeled wflz by age, all measurements")    


dev.off() 
  
  