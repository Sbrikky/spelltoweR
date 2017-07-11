library(tesseract)
library(png)

# Screen_default_raw <- ocr("Screenshot_default.png")
# 
# Screen_night_raw <- ocr("Screenshot_night.png")

Screen_default_png <- readPNG("Screenshot_default.png")

Cropped_default <- Screen_default_png[73:744,17:464,]

writePNG(Cropped_default, target = "Cropped_test.png")

getLetter <- function(img,x,y) {
  # Subsets a specific letter from a spelltower based on xy coordinates starting from the topleft
  letter <- img[(1+56*(x-1)):(56*x),(1+56*(y-1)):(56*y),]
}

checkImage <- function(img) {
  # Writes a png to disk and opens it in windows
  writePNG(img, target = "tempfile.png")
  shell.exec("tempfile.png")
 # file.remove("tempfile.png")
}
# topleftletter <- Cropped_default[1:56,1:56,]

####Comparing letters####

w1 <- getLetter(Cropped_default,2,2)
w2 <- getLetter(Cropped_default,7,5)

n1 <- getLetter(Cropped_default,6,3)
n2 <- getLetter(Cropped_default,6,4)

o1 <- getLetter(Cropped_default,2,4)
o2 <- getLetter(Cropped_default,2,5)
o3 <- getLetter(Cropped_default,2,6)
g1 <- getLetter(Cropped_default,3,3)
c1 <- getLetter(Cropped_default,4,2)

sum(abs(o1 - o2))
sum(abs(o2 - o3))
sum(abs(o3 - o1))

sum(abs(o1-c1))
sum(abs(o1-g1))
sum(abs(g1-c1))

sum(abs(w1-w2))
sum(abs(n1-n2))
sum(abs(w1-n1))
sum(abs(w2-n2))

####Testing Cropping####

topleftletter <- Cropped_default[57:112,57:112,]
topleftraw <- writePNG(topleftletter)
topleftocr <- ocr(topleftraw)
writePNG(topleftletter, target = "topleftletter.png")
