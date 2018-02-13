#Named Vectors
Charlie <- 1:5
Charlie

#give names
names(Charlie) <- c("a", "b", "c", "d", "e")
Charlie
Charlie["d"]

names(Charlie) #이 함수는 항상 이름부분을 지칭하고 있음.

#clear names
names(Charlie) <-NULL
Charlie

#Naming Matrix Dimensions 1
temp.vec <- 
  rep(c("a", "B", "zZ"), each=3)

Bravo <- matrix(temp.vec, 3, 3)
Bravo

rownames(Bravo) <- c("How", "are", "you")
colnames(Bravo) <- c("X", "Y", "Z")
Bravo["are", "Y"] <- 0
Bravo

rownames(Bravo)
colnames(Bravo)

rownames(Bravo) <- NULL
colnames(Bravo) <- NULL

Bravo
