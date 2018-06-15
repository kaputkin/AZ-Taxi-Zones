FHV01 <- read.csv("fhv_tripdata_2016-01.csv")
FHV01 <- FHV01[ which(FHV01$locationID == 179 | FHV01$locationID == 7 | FHV01$locationID == 112 | FHV01$locationID == 255 | FHV01$locationID == 195 | FHV01$locationID == 40 | FHV01$locationID == 106),]

FHV02 <- read.csv("fhv_tripdata_2016-02.csv")
FHV02 <- FHV02[ which(FHV02$locationID == 179 | FHV02$locationID == 7 | FHV02$locationID == 112 | FHV02$locationID == 255 | FHV02$locationID == 195 | FHV02$locationID == 40 | FHV02$locationID == 106),]

FHV03 <- read.csv("fhv_tripdata_2016-03.csv")
FHV03 <- FHV03[ which(FHV03$locationID == 179 | FHV03$locationID == 7 | FHV03$locationID == 112 | FHV03$locationID == 255 | FHV03$locationID == 195 | FHV03$locationID == 40 | FHV03$locationID == 106),]

FHV04 <- read.csv("fhv_tripdata_2016-04.csv")
FHV04 <- FHV04[ which(FHV04$locationID == 179 | FHV04$locationID == 7 | FHV04$locationID == 112 | FHV04$locationID == 255 | FHV04$locationID == 195 | FHV04$locationID == 40 | FHV04$locationID == 106),]

FHV05 <- read.csv("fhv_tripdata_2016-05.csv")
FHV05 <- FHV05[ which(FHV05$locationID == 179 | FHV05$locationID == 7 | FHV05$locationID == 112 | FHV05$locationID == 255 | FHV05$locationID == 195 | FHV05$locationID == 40 | FHV05$locationID == 106),]

FHV06 <- read.csv("fhv_tripdata_2016-06.csv")
FHV06 <- FHV06[ which(FHV06$locationID == 179 | FHV06$locationID == 7 | FHV06$locationID == 112 | FHV06$locationID == 255 | FHV06$locationID == 195 | FHV06$locationID == 40 | FHV06$locationID == 106),]

FHV07 <- read.csv("fhv_tripdata_2016-07.csv")
FHV07 <- FHV07[ which(FHV07$locationID == 179 | FHV07$locationID == 7 | FHV07$locationID == 112 | FHV07$locationID == 255 | FHV07$locationID == 195 | FHV07$locationID == 40 | FHV07$locationID == 106),]

FHV08 <- read.csv("fhv_tripdata_2016-08.csv")
FHV08 <- FHV08[ which(FHV08$locationID == 179 | FHV08$locationID == 7 | FHV08$locationID == 112 | FHV08$locationID == 255 | FHV08$locationID == 195 | FHV08$locationID == 40 | FHV08$locationID == 106),]

FHV09 <- read.csv("fhv_tripdata_2016-09.csv")
FHV09 <- FHV09[ which(FHV09$locationID == 179 | FHV09$locationID == 7 | FHV09$locationID == 112 | FHV09$locationID == 255 | FHV09$locationID == 195 | FHV09$locationID == 40 | FHV09$locationID == 106),]

FHV10 <- read.csv("fhv_tripdata_2016-10.csv")
FHV10 <- FHV10[ which(FHV10$locationID == 179 | FHV10$locationID == 7 | FHV10$locationID == 112 | FHV10$locationID == 255 | FHV10$locationID == 195 | FHV10$locationID == 40 | FHV10$locationID == 106),]

FHV11 <- read.csv("fhv_tripdata_2016-11.csv")
FHV11 <- FHV11[ which(FHV11$locationID == 179 | FHV11$locationID == 7 | FHV11$locationID == 112 | FHV11$locationID == 255 | FHV11$locationID == 195 | FHV11$locationID == 40 | FHV11$locationID == 106),]

FHV12 <- read.csv("fhv_tripdata_2016-12.csv")
FHV12 <- FHV12[ which(FHV12$locationID == 179 | FHV12$locationID == 7 | FHV12$locationID == 122 | FHV12$locationID == 255 | FHV12$locationID == 195 | FHV12$locationID == 40 | FHV12$locationID == 106),]

#Bind filtered months together
Total_FHV <- rbind(FHV01,FHV02,FHV03,FHV04,FHV05,FHV06,FHV07,FHV08,FHV09,FHV10,FHV11,FHV12)
rm(FHV01,FHV02,FHV03,FHV04,FHV05,FHV06,FHV07,FHV08,FHV09,FHV10,FHV11,FHV12)

##set up##
#floor time by hour
#library(lubridate) 
x = as.POSIXct(Total_FHV$Pickup_date)
Total_FHV$POroundtime <- floor_date(x, "60 minutes")
Total_FHV$POroundtime <- format(as.POSIXct(strptime(Total_FHV$POroundtime,"%Y-%m-%d %H:%M:%S", tz="")), format = "%H:%M:%S")

#weekdays
#library(lubridate)
Total_FHV$day_of_week<-wday(Total_FHV$Pickup_date)

#filter by TOD and DOW
Total_FHV <- Total_FHV[Total_FHV$day_of_week %in% c(2,3,4,5,6) & (Total_FHV$POroundtime %in% c("07:00:00","08:00:00","17:00:00","18:00:00","19:00:00")),]

#subset by taxi zone
Old_Astoria <- subset(Total_FHV, locationID == 179)
Astoria <-subset(Total_FHV, locationID == 7)
Greenpoint <-subset(Total_FHV, locationID == 112)
Williamsburg <-subset(Total_FHV, locationID == 255)
Red_Hook <-subset(Total_FHV, locationID == 195)
Carroll_Gardens <-subset(Total_FHV, locationID == 40)
Gowanus <-subset(Total_FHV, locationID == 106)

#export CSVs
write.csv(Old_Astoria, "Old Astoria 2016.csv")
write.csv(Astoria, "Astoria 2016.csv")
write.csv(Greenpoint, "Greenpoint 2016.csv")
write.csv(Williamsburg, "Williamsburg 2016.csv")
write.csv(Red_Hook, "Red Hook 2016.csv")
write.csv(Carroll_Gardens, "Carroll Gardens 2016.csv")
write.csv(Gowanus, "Gowanus 2016.csv")
write.csv(Total_FHV, "Total FHV Trips 2016.csv")

