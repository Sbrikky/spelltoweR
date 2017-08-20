library(png)

getLetter <- function(img,x,y) {
  # Subsets a specific letter from a spelltower based on xy coordinates starting from the topleft
  letter <- img[(1+ 84*(y-1)):( 84*y),(1+ 84*(x-1)):( 84*x),]
}

Cropped_new <- readPNG("Cropped_new.png")

Letterrefs <- list(
  A = getLetter(Cropped_new,1,12),
  B = getLetter(Cropped_new,1,11),
  C = getLetter(Cropped_new,3,12),
  D = getLetter(Cropped_new,8,11),
  E = getLetter(Cropped_new,4,12),
  F = getLetter(Cropped_new,3,7),
  G = getLetter(Cropped_new,8,7),
  H = getLetter(Cropped_new,5,7),
  I = getLetter(Cropped_new,7,12),
  J = getLetter(Cropped_new,2,3),
  K = getLetter(Cropped_new,4,11),
  L = getLetter(Cropped_new,7,11),
  M = getLetter(Cropped_new,1,6),
  N = getLetter(Cropped_new,7,10),
  O = getLetter(Cropped_new,4,10),
  P = getLetter(Cropped_new,8,1),
  Q = getLetter(Cropped_new,2,5),
  R = getLetter(Cropped_new,7,6),
  S = getLetter(Cropped_new,6,5),
  T = getLetter(Cropped_new,3,8),
  U = getLetter(Cropped_new,4,5),
  V = getLetter(Cropped_new,8,4),
  W = getLetter(Cropped_new,1,10),
  X = getLetter(Cropped_new,1,2),
  Y = getLetter(Cropped_new,2,9),
  Z = getLetter(Cropped_new,5,12),
  Empty = getLetter(Cropped_new,6,12)
)

save(Letterrefs, file = "Letterrefs.RData")