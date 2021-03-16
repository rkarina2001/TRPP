if(FALSE) {
  "Работа выполнена Романовой К. студенткой 2 курса"
}
if (TRUE){ #1.1
  x<-2
  y<-4
  z<-x
  x<-y
  y<-z
  print(x)
  print(y)
}
if (TRUE){ #1.2
  x <- 3.5
  y <- "2,6"
  z <- 1.78
  h <- TRUE
  class(x)
  class(y)
  class(z)
  class(h)
  as.integer(h)
  new<-gsub(",",".",y)
  as.numeric(new)
  as.character(x)
}
if (TRUE){ #1.3
  dohod <- 1573
  log(dohod)
}
if (TRUE){ #1.4
  v <- readLines(con = "qwe.txt", n=1, encoding = "UTF-8")
  va<-as.numeric(v)
  print(va*2)
}
if (TRUE){ #2.1
  vect1<-c(1, 0, 2, 3, 6, 8, 12, 15, 0, NA, NA, 9, 4, 16, 2, 0)
  print(vect1[1])
  print(vect1[16])
  print(vect1[3:5])
  print(vect1[which(vect1==2)])
  print(vect1[which(vect1>4)])
  print(vect1[which(vect1%%3==0)])
  print(vect1[which(vect1>4 & vect1%%3==0)])
  print(vect1[which(vect1<1 | vect10>5)])
  print(which(vect1==0))
  print(which(vect1>=2 & vect1<=8))
  print(vect1[order(vect1)][-c(5,6)])
}
if (TRUE){ #2.2
  vect2<-c(1, 0, 2, 3, 6, 8, 12, 15, 0, 9, 4, 16, 2, 0)
  vect2[length(vect2)]<-NA
  print(vect2)
}
if (TRUE){ #2.3
  vect3<-c(1, 0, 2, 3, 6, 8, 12, 15, 0, NA, NA)
  which(is.na(vect3))
}
if (TRUE){ #2.4
  vect3<-c(1, 0, 2, 3, 6, 8, 12, 15, 0, NA, NA)
  print(length(vect3[is.na(vect3)]))
}
if (TRUE){ #2.5
  vector_of_respondents<-(c(1,2,3,4,5,6,7,8,9,10,11,1,1,1,1,1,2,3,4,5,6,7))#можно ввести 100 элементов
  print(unique(vector_of_respondents))
}
if (TRUE){ #2.6
  countries <- c('France', 'France', 'France', 'France', 'France', 'Italy', 'Italy', 'Italy', 'Italy', 'Italy', 'Spain', 'Spain', 'Spain', 'Spain', 'Spain')
  year<-seq(2020,2017,-1)
  print(countries)
  print(rep(year[c(2:1,1,3:4)],3))
}
if (TRUE){ #2.7
  income <- c(10000, 32000, 28000, 150000, 65000, 1573)
  mean_value <- sum(income) / length(income)
  print(mean_value)
  income <- ifelse(income > mean_value, 1, 0)
  print(income)
}
if (TRUE){ #2.8
   N <- 19; p <- 4.09
  coords <- as.numeric(readLines(con = "coords.txt", n=N, encoding = "UTF-8"))
  l_norm = sum(abs(coords ^ p)) ^ (1/p)
  print(l_norm) 
  write(x = l_norm, file = "result.txt")
}
if (TRUE){ #2.9
  N<-4
  coords_2 <- as.numeric(readLines(con = "coords.txt", n=N, encoding = "UTF-8"))
  print(coords_2)
  for (i in c(1:length(coords_2)-1)){
    coords_2[i] <- coords_2[i+1] - coords_2[i]
  }
  #coords_2<-coords_2[coords_2!=length(coords_2)]
  remove<-c(length(coords_2))
  coords_2<-coords_2[-remove]
  print(coords_2)
  diff_1 = coords_2
  diff_2 = diff_1
  for (i in c(1:length(diff_1)-1)){
    diff_2[i] <- diff_1[i+1] - diff_1[i]
  }
  remove<-c(length(diff_2))
  diff_2<-diff_2[-remove]
  print(diff_2)
  as.character(diff_1)
  as.character(diff_2)
  for (i in 1:length(coords_2)){
    write(paste(diff_1[i], diff_2[i]), file = "diff_vectors.txt",append=T)
  }
}
