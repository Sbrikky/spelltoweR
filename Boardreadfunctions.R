library(png)
load("Letterrefs.RData")

getLetter <- function(img,x,y) {
  # Subsets a specific letter from a spelltower based on xy coordinates starting from the topleft
  letter <- img[(1+ 84*(y-1)):( 84*y),(1+ 84*(x-1)):( 84*x),]
}


completter <- function(letterimage) {
  # Compares letter to letterrefs and returns the letter with the smallest difference
  vectorresult <- sapply(Letterrefs, FUN = function(x) sum(abs(x - letterimage)))
  foundletter <- names(vectorresult[vectorresult == min(vectorresult)])
  return(foundletter)
}

boardreader <- function(boardimage) {
  cropped_board <- boardimage[93:1100,25:696,]
  # Take an image of a board, chops it into letters, reads letters, returns board of letters
  boardmatrix <- matrix(NA,nrow = 12, ncol = 8)
  for (xcor in 1:8) {
    for (ycor in 1:12) {
      curletterimage <- getLetter(cropped_board, xcor, ycor)
      curlettervalue <- completter(curletterimage)
      print(curlettervalue)
      boardmatrix[ycor,xcor] <- curlettervalue
    }
  }
  return(boardmatrix)
}
