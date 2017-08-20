Boardtest <- c(NA ,"N","D","A","L","Q","A","A",
               "R","W",NA ,"O","O","O","A","V",
               "R","T","G","T","E","J","T","H",
               "S","C","D","O",NA ,"O","I","Y",
               "E","E","S",NA ,"N","S",'A','E',
               'A','K','N','N','I','S','O','B',
               'L','P','U','A','W','P','S','A',
               'R','I','I','E','H','E','E','C',
               'V','T','D','F','Y','L','I','E',
               'N','U','T','D','R','L','B','M',
               'U','E','F','G','O','R','I','T',
               'U','I','I','Z','X','G','E','M')

Matrixboard <- matrix(Boardtest, nrow = 12, ncol = 8, byrow = TRUE)
#Move can a vector of indeces, Have some logic that checks if moves are valid.
#Each index in the vector needs to be adjacent, or 6-9 removed for a row above or below
#Plus some extra logic for (literal) edge cases. e.g. If modulo 8 == 0 there is nothing on the right