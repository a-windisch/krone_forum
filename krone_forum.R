##################################################
## analyzing psuspected pecularities in forum   ##
## online platform krone.at (suspected by users)##
## Andreas Windisch, andreas.windisch@yahoo.com ##
##################################################


setwd("/home/andreas/GitHub/krone_forum/")



#read in the data:
#juldata....likes/dislikes for article (krone.at) from Jul-20-2018, users suspect manipulation
#maydata....likes/dislikes for article (krone.at) from May-13-2018, users have no suspicion
#stddata....likes/dislikes for article (derstandard.at) from Jul-20-2018, used for comparison

juldata <- read.csv("krone_likes_dislikes_Jul_20_2018.csv", skip=2 )
maydata <- read.csv("krone_likes_dislikes_May_13_2018.csv", skip=2 )
stddata <- read.csv("standard_likes_dislikes_Jul_20_2018.csv", skip=2 )

#create plots for likes and dislikes

par(mfrow=c(3,1))
#plot 1
plot(maydata$pos[1:80], col="red", type="l", main="article http://www.krone.at/1707120, May 13 2018",
                  xlab="post idx (newest to the left, does not correspond to index in forum)",ylab="number of likes/dislikes")
points(maydata$pos[1:80], col="red")
lines(maydata$neg[1:80], col="blue")
points(maydata$neg[1:80], col="blue")
legend(1,1500,legend=c("likes","dislikes"),col=c("red","blue"),lty=1:1,cex=0.8)

#plot 2
plot(juldata$pos[1:80], col="red", type="l", main="article http://www.krone.at/1743023, July 20 2018",
     xlab="post idx (newest to the left, does not correspond to index in forum)",ylab="number of likes/dislikes")
points(juldata$pos[1:80], col="red")
lines(juldata$neg[1:80], col="blue")
points(juldata$neg[1:80], col="blue")
legend(1,1200,legend=c("likes","dislikes"),col=c("red","blue"),lty=1:1,cex=0.8)

#plot 3
plot(stddata$pos[1:80], col="red", type="l", main="article https://derstandard.at/2000083855951/Mehrere-Verletzte-nach-Gewalttat-mit-Messer-in-Bus-in-Luebeck, July 20 2018",
     xlab="post idx (newest to the left)",ylab="number of likes/dislikes")
points(stddata$pos[1:80], col="red")
lines(stddata$neg[1:80], col="blue")
points(stddata$neg[1:80], col="blue")
legend(1,120,legend=c("likes","dislikes"),col=c("red","blue"),lty=1:1,cex=0.8)


par(mfrow=c(1,1))

#plot 4
plot(juldata$pos, col="red", type="l", main="article http://www.krone.at/1743023, July 20 2018",
     xlab="post idx (newest to the left, does not correspond to index in forum)",ylab="number of likes/dislikes ")
points(juldata$pos, col="red")
lines(juldata$neg, col="blue")
points(juldata$neg, col="blue")
legend(1,1500,legend=c("likes","dislikes"),col=c("red","blue"),lty=1:1,cex=0.8)


#compute correlations
stdcor <- cor(stddata$pos,stddata$neg,method="pearson")
# 0.00345416

maycor <- cor(maydata$pos,maydata$neg,method="pearson")
# -0.1010401

julcor <- cor(juldata$pos[20:140],juldata$neg[20:140],method="pearson")
# 0.9420094