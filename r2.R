if(FALSE) {
  "Работа выполнена Романовой К. студенткой 2 курса"
}
#1 часть 1 задание
if (TRUE){ 
  matrix <- matrix(data=3, nrow=3, ncol=4, byrow=T)
  print(matrix)
  matrix[1,3]<-4
  matrix[2,1]<-1
  matrix[3,2]<-NA
  matrix[3,4]<-1
  print(matrix)
}
#1 часть 2 задание
if (TRUE){ 
  a <- c(1, 3, 4, 9, NA)
  b <- c(5, 6, 7, 0, 2)
  c <- c(9, 10, 13, 1, 20)
  matrix1 <- cbind(a, b, c)
  matrix2 <- rbind(a, b, c)
  print(matrix1) 
  print(matrix2)
  rownames(matrix1) <- paste0("row1", 1:5)
  colnames(matrix1) <- paste0("col1", 1:3)
  rownames(matrix2) <- paste0("row2", 1:3)
  colnames(matrix2) <- paste0("col2", 1:5)
  print(matrix1) 
  print(matrix2)
}
#1 часть 3 задание
if (TRUE){ 
  names <- c("Jane", "Michael", "Mary", "George")
  ages <- c(8, 6, 28, 45)
  gender <- c(0, 1, 0, 1)
  matrix <- cbind(ages, gender)
  rownames(matrix) <- names
  print(matrix)
  
  age_sq <- ages ** 2
  matrix_mod <- rbind(names, ages, gender,age_sq)
  print(matrix_mod) 
}
# итерационный метод
#2 часть 1 задание 
if (TRUE){ 
  A <- diag(c(4,9), 2, 2)
  rownames(A) <- c('eq1', 'eq2')
  colnames(A) <- c('x1', 'x2')
  print(A)
}
#2 часть 2 задание 
if (TRUE){ 
  A <- diag(c(4,9), 2, 2)
  ev <- eigen(A)
  print(ev$values)
}
#2 часть 3 задание 
if (TRUE){ 
  A <- diag(c(4,9), 2, 2)
  B <- diag(nrow = 2, ncol = 2) - A
  print(B)
}
#2 часть 4,5,6,7 задание 
if (TRUE){ 
  A <- diag(c(4,9), 2, 2)
  B <- diag(nrow = 2, ncol = 2) - A
  f <- c(4, 2)
  u <- c(0.2, -0.3)
  u_result <- solve(A, f)
  print(u_result)
  u1 <- B%*%u + f
  u2 <- B%*%u1 + f
  u3 <- B%*%u2 + f
  u4 <- B%*%u3 + f
  u5 <- B%*%u4 + f
  u6 <- B%*%u5 + f
  u7 <- B%*%u6 + f
  print(c(u7, u_result))
  print(abs(u7-u_result))
}
#2 часть 8 задание 
if (TRUE){ 
  A <- diag(c(4,9), 2, 2)
  f <- c(4, 2)
  max_A <- max(A)
  A <- A/max_A
  print(A)
  f <- f/max_A
  print(f)
}
#2 часть 9 задание 
if (TRUE){ 
  ev <- eigen(A)
  print(ev$values)
  
  B <- diag(nrow = 2, ncol = 2) - A
  print(B)
  
  u_result2 <- solve(A, f)
  print(u_result)
  
  u11 <- B%*%u + f
  u22 <- B%*%u11 + f
  u33 <- B%*%u22 + f
  u44 <- B%*%u33 + f
  u55 <- B%*%u44 + f
  u66 <- B%*%u55 + f
  u77 <- B%*%u66 + f
  
  
  print(c(u77, u_result2))
  print(abs(u77-u_result2))
  
}
# срезы матрицы
#3 часть 1 задание 
if (TRUE){ 
step <- 1 # Шаг сетки
dekart_begin <- -5 # Начало сетки
dekart_end <- 5 # Конец сетки
# Задание сеточной поверхности
x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- x
# Задание двумерной функции на координатной сетке
surface_matrix <- outer(X = x,
                        Y = y,
                        FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)
write(as.character(c('number of matrix elements', length(surface_matrix),
                     '“number of rows:', length(surface_matrix[,1]),
                     'number of columns', length(surface_matrix[1,]),
                     'sum of main diag elements', sum(diag(surface_matrix)),
                     'sum of middle row elements:', rowSums(surface_matrix)[(length(surface_matrix) + 1)/2], 
                     'sum of middle column elements:',colSums(surface_matrix)[(length(surface_matrix) + 1)/2],
                     'row sums:', rowSums(surface_matrix),
                     'col sums:', colSums(surface_matrix))),file = "summary.txt")
}
#3 часть 2 задание 
if (TRUE){ 
  step <- readline(prompt = "Шаг сетки:")
  step <- as.numeric(step)
  print(dekart_end)
  dekart_begin <- readline(prompt = "Начало сетки:")
  dekart_begin <- as.numeric(dekart_begin)
  dekart_end <- readline(prompt = "Конец сетки:")
  dekart_end <- as.numeric(dekart_end)
  # Задание сеточной поверхности
  x <- seq(from = dekart_begin, to = dekart_end, by = step)
  y <- x
  # Задание двумерной функции на координатной сетке
  surface_matrix <- outer(X = x,
                          Y = y,
                          FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
  dimnames(surface_matrix) <- list(x, y)
  write(as.character(c('number of matrix elements', length(surface_matrix),
                       '“number of rows:', length(surface_matrix[,1]),
                       'number of columns', length(surface_matrix[1,]),
                       'sum of main diag elements', sum(diag(surface_matrix)),
                       'row sums:', rowSums(surface_matrix),
                       'col sums:', colSums(surface_matrix))),file = "summary2.txt")
}
#3 часть 3 задание 
if (TRUE){ 
  step <- readLines(con = "inputs.txt",
                   n = 1, encoding = "UTF-8") #шаг сетки
  step <- as.numeric(step)
  dekart_begin <- readLines(con = "inputs.txt",
                                    n = 2, encoding = "UTF-8") #начало сетки
  dekart_begin <- as.numeric(dekart_begin)
  dekart_begin <- dekart_begin[2]
  dekart_end <- readLines(con = "inputs.txt",
                          n = 3, encoding = "UTF-8") #конец сетки
  dekart_end <- as.numeric(dekart_end)
  dekart_end <- dekart_end[3]
  # Задание сеточной поверхности
  x <- seq(from = dekart_begin, to = dekart_end, by = step)
  y <- x
  # Задание двумерной функции на координатной сетке
  surface_matrix <- outer(X = x,
                          Y = y,
                          FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
  dimnames(surface_matrix) <- list(x, y)
  write(as.character(c('number of matrix elements', length(surface_matrix),
                       '“number of rows:', length(surface_matrix[,1]),
                       'number of columns', length(surface_matrix[1,]),
                       'sum of main diag elements', sum(diag(surface_matrix)),
                       'row sums:', rowSums(surface_matrix),
                       'col sums:', colSums(surface_matrix))),file = "summary3.txt")
}
#машины
#4 часть 1 задание
if (TRUE){ 
  cars_matrix <- as.matrix(cars)
  
  cars_speed <- cbind(1,cars_matrix[,1])
  
  cars_dist <- cars_matrix[,2]
  
  alpha <- solve((t(cars_speed)%*%cars_speed)) %*% t(cars_speed) %*% cars_dist
  alpha <- as.vector(alpha)
  alpha_c <- alpha[1]
  alpha_x <- alpha[2]
  
  cars_speed_lm <- cars_matrix[,1]
  cars_dist_lm <-  alpha_c + cars_speed_lm * alpha_x
  dist_residuals <- cars_dist_lm - cars_dist
  print('mean', mean(dist_residuals))
  print('std', sd(dist_residuals))
  print(cars_dist_lm)
}
