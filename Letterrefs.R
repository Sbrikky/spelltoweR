library(png)

getLetter <- function(img,x,y) {
  # Subsets a specific letter from a spelltower based on xy coordinates starting from the topleft
  letter <- img[(1+56*(y-1)):(56*y),(1+56*(x-1)):(56*x),]
}

Cropped_default <- readPNG("Cropped_test.png")

Letterrefs <- list(
  A = getLetter(Cropped_default,4,1),
  B = getLetter(Cropped_default,8,6),
  C = getLetter(Cropped_default,2,4),
  D = getLetter(Cropped_default,3,4),
  E = getLetter(Cropped_default,5,3),
  F = getLetter(Cropped_default,4,9),
  G = getLetter(Cropped_default,3,3),
  H = getLetter(Cropped_default,5,8),
  I = getLetter(Cropped_default,5,6),
  J = getLetter(Cropped_default,6,3),
  K = getLetter(Cropped_default,2,6),
  L = getLetter(Cropped_default,6,9),
  M = getLetter(Cropped_default,8,12),
  N = getLetter(Cropped_default,2,1),
  O = getLetter(Cropped_default,4,2),
  P = getLetter(Cropped_default,2,7),
  Q = getLetter(Cropped_default,6,1),
  R = getLetter(Cropped_default,1,2),
  S = getLetter(Cropped_default,6,6),
  T = getLetter(Cropped_default,4,3),
  U = getLetter(Cropped_default,3,7),
  V = getLetter(Cropped_default,1,9),
  W = getLetter(Cropped_default,5,7),
  X = getLetter(Cropped_default,5,12),
  Y = getLetter(Cropped_default,5,9),
  Z = getLetter(Cropped_default,4,12)
)
