NBA = read.csv("NBA_Train.csv")
str(NBA)

table(NBA$W, NBA$Playoffs)

NBA$PTSDIFF <- NBA$PTS - NBA$oppPTS

plot(NBA$PTSDIFF, NBA$W)

WinsReg = lm(W ~ PTSDIFF, data = NBA)
summary(WinsReg)

