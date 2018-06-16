setwd('C:/Users/alk511/Desktop/Ackerman Ziff')
library(lubridate)

#Import CSV
FHV01 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-01.csv"))
FHV01 <- FHV01[ which(FHV01$DOlocationID == 50 | FHV01$DOlocationID == 158 | FHV01$DOlocationID == 262 | FHV01$DOlocationID == 140 | FHV01$DOlocationID == 137 | FHV01$DOlocationID == 4 | FHV01$PUlocationID == 50 | FHV01$PUlocationID == 158 | FHV01$PUlocationID == 262 | FHV01$PUlocationID == 140 | FHV01$PUlocationID == 137 | FHV01$PUlocationID == 4),]

FHV02 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-02.csv"))
FHV02 <- FHV02[ which(FHV02$DOlocationID == 50 | FHV02$DOlocationID == 158 | FHV02$DOlocationID == 262 | FHV02$DOlocationID == 140 | FHV02$DOlocationID == 137 | FHV02$DOlocationID == 4 | FHV02$PUlocationID == 50 | FHV02$PUlocationID == 158 | FHV02$PUlocationID == 262 | FHV02$PUlocationID == 140 | FHV02$PUlocationID == 137 | FHV02$PUlocationID == 4),]

FHV03 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-03.csv"))
FHV03 <- FHV03[ which(FHV03$DOlocationID == 50 | FHV03$DOlocationID == 158 | FHV03$DOlocationID == 262 | FHV03$DOlocationID == 140 | FHV03$DOlocationID == 137 | FHV03$DOlocationID == 4 | FHV03$PUlocationID == 50 | FHV03$PUlocationID == 158 | FHV03$PUlocationID == 262 | FHV03$PUlocationID == 140 | FHV03$PUlocationID == 137 | FHV03$PUlocationID == 4),]

FHV04 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-04.csv"))
FHV04 <- FHV04[ which(FHV04$DOlocationID == 50 | FHV04$DOlocationID == 158 | FHV04$DOlocationID == 262 | FHV04$DOlocationID == 140 | FHV04$DOlocationID == 137 | FHV04$DOlocationID == 4 | FHV04$PUlocationID == 50 | FHV04$PUlocationID == 158 | FHV04$PUlocationID == 262 | FHV04$PUlocationID == 140 | FHV04$PUlocationID == 137 | FHV04$PUlocationID == 4),]

FHV05 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-05.csv"))
FHV05 <- FHV05[ which(FHV05$DOlocationID == 50 | FHV05$DOlocationID == 158 | FHV05$DOlocationID == 262 | FHV05$DOlocationID == 140 | FHV05$DOlocationID == 137 | FHV05$DOlocationID == 4 | FHV05$PUlocationID == 50 | FHV05$PUlocationID == 158 | FHV05$PUlocationID == 262 | FHV05$PUlocationID == 140 | FHV05$PUlocationID == 137 | FHV05$PUlocationID == 4),]

FHV06 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-06.csv"))
FHV06 <- FHV06[ which(FHV06$DOlocationID == 50 | FHV06$DOlocationID == 158 | FHV06$DOlocationID == 262 | FHV06$DOlocationID == 140 | FHV06$DOlocationID == 137 | FHV06$DOlocationID == 4 | FHV06$PUlocationID == 50 | FHV06$PUlocationID == 158 | FHV06$PUlocationID == 262 | FHV06$PUlocationID == 140 | FHV06$PUlocationID == 137 | FHV06$PUlocationID == 4),]

FHV07 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-07.csv"))
FHV07 <- FHV07[ which(FHV07$DOlocationID == 50 | FHV07$DOlocationID == 158 | FHV07$DOlocationID == 262 | FHV07$DOlocationID == 140 | FHV07$DOlocationID == 137 | FHV07$DOlocationID == 4 | FHV07$PUlocationID == 50 | FHV07$PUlocationID == 158 | FHV07$PUlocationID == 262 | FHV07$PUlocationID == 140 | FHV07$PUlocationID == 137 | FHV07$PUlocationID == 4),]

FHV08 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-08.csv"))
FHV08 <- FHV08[ which(FHV08$DOlocationID == 50 | FHV08$DOlocationID == 158 | FHV08$DOlocationID == 262 | FHV08$DOlocationID == 140 | FHV08$DOlocationID == 137 | FHV08$DOlocationID == 4 | FHV08$PUlocationID == 50 | FHV08$PUlocationID == 158 | FHV08$PUlocationID == 262 | FHV08$PUlocationID == 140 | FHV08$PUlocationID == 137 | FHV08$PUlocationID == 4),]

FHV09 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-09.csv"))
FHV09 <- FHV09[ which(FHV09$DOlocationID == 50 | FHV09$DOlocationID == 158 | FHV09$DOlocationID == 262 | FHV09$DOlocationID == 140 | FHV09$DOlocationID == 137 | FHV09$DOlocationID == 4 | FHV09$PUlocationID == 50 | FHV09$PUlocationID == 158 | FHV09$PUlocationID == 262 | FHV09$PUlocationID == 140 | FHV09$PUlocationID == 137 | FHV09$PUlocationID == 4),]

FHV10 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-10.csv"))
FHV10 <- FHV10[ which(FHV10$DOlocationID == 50 | FHV10$DOlocationID == 158 | FHV10$DOlocationID == 262 | FHV10$DOlocationID == 140 | FHV10$DOlocationID == 137 | FHV10$DOlocationID == 4 | FHV10$PUlocationID == 50 | FHV10$PUlocationID == 158 | FHV10$PUlocationID == 262 | FHV10$PUlocationID == 140 | FHV10$PUlocationID == 137 | FHV10$PUlocationID == 4),]

FHV11 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-11.csv"))
FHV11 <- FHV11[ which(FHV11$DOlocationID == 50 | FHV11$DOlocationID == 158 | FHV11$DOlocationID == 262 | FHV11$DOlocationID == 140 | FHV11$DOlocationID == 137 | FHV11$DOlocationID == 4 | FHV11$PUlocationID == 50 | FHV11$PUlocationID == 158 | FHV11$PUlocationID == 262 | FHV11$PUlocationID == 140 | FHV11$PUlocationID == 137 | FHV11$PUlocationID == 4),]

FHV12 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-12.csv"))
FHV12 <- FHV12[ which(FHV12$DOlocationID == 50 | FHV12$DOlocationID == 158 | FHV12$DOlocationID == 262 | FHV12$DOlocationID == 140 | FHV12$DOlocationID == 137 | FHV12$DOlocationID == 4 | FHV12$PUlocationID == 50 | FHV12$PUlocationID == 158 | FHV12$PUlocationID == 262 | FHV12$PUlocationID == 140 | FHV12$PUlocationID == 137 | FHV12$PUlocationID == 4),]

#Bind filtered months together
Total_FHV <- rbind(FHV01,FHV02,FHV03,FHV04,FHV05,FHV06,FHV07,FHV08,FHV09,FHV10,FHV11,FHV12)

##set up##
#floor time by hour
x = as.POSIXct(Total_FHV$Pickup_DateTime)
Total_FHV$POroundtime <- floor_date(x, "60 minutes")
Total_FHV$POroundtime <- format(as.POSIXct(strptime(Total_FHV$POroundtime,"%Y-%m-%d %H:%M:%S", tz="")), format = "%H:%M:%S")

Total_FHV$DOroundtime <- floor_date(x, "60 minutes")
Total_FHV$DOroundtime <- format(as.POSIXct(strptime(Total_FHV$DOroundtime,"%Y-%m-%d %H:%M:%S", tz="")), format = "%H:%M:%S")

#weekdays
Total_FHV$day_of_week<-wday(Total_FHV$Pickup_DateTime)

#filter by TOD and DOW
Total_FHV <- Total_FHV[Total_FHV$day_of_week %in% c(2,3,4,5,6) & (Total_FHV$POroundtime %in% c("07:00:00","08:00:00","17:00:00","18:00:00","19:00:00") |  Total_FHV$DOroundtime %in% c("07:00:00","08:00:00","17:00:00","18:00:00","19:00:00")) , ]

#subset by taxi zone
Zone50 <- subset(Total_FHV, PUlocationID == 50 | DOlocationID == 50)
Zone158 <-subset(Total_FHV, PUlocationID == 158 | DOlocationID == 158)
Zone262 <-subset(Total_FHV, PUlocationID == 262 | DOlocationID == 262)
Zone140 <-subset(Total_FHV, PUlocationID == 140 | DOlocationID == 140)
Zone137 <-subset(Total_FHV, PUlocationID == 137 | DOlocationID == 137)
Zone4 <-subset(Total_FHV, PUlocationID == 4 | DOlocationID == 4)

#export CSVs
write.csv(Zone50, "Zone50_2017.csv")
write.csv(Zone158, "Zone158_2017.csv")
write.csv(Zone262, "Zone262_2017.csv")
write.csv(Zone140, "Zone140_2017.csv")
write.csv(Zone137, "Zone137_2017.csv")
write.csv(Zone4, "Zone4_2017.csv")
write.csv(Total_FHV, "Total FHV Trips.csv")
