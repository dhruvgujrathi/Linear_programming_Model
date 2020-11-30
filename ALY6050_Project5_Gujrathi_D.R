#ALY6050_Project5_Gujrathi_D
#Question No. 2, 3, 4
#Intalling Package 'lpSolveAPI'
install.packages("lpSolveAPI")
#Calling library
library(lpSolveAPI)
#Setting the constraints and decision valriables
lprec <- make.lp(0,4)
lprec
#Getting the componets of variables
lp.control(lprec, sense="max")
#Setting the profits
set.objfn(lprec, c(169.99, 359.99, 289.99, 134.99))
#Setting cost price constraints
add.constraint(lprec, c(330, 370, 410, 135), "<=", 170000)
#Setting the dimension constraints
add.constraint(lprec, c(5, 8, 5, 1), "<=", 2460)
#Setting the profit percentage constraints for Pressure washers
add.constraint(lprec, c(0.7, -0.3, -0.3, -0.3), ">=", 0)
#Setting the profit percentage constraints for Generators
add.constraint(lprec, c(-0.3, 0.7, -0.3, -0.3), ">=", 0)
#Setting the profit percentage constraints for Go-Karts and Water pumps
add.constraint(lprec, c(0, 0, -2, 0.2), ">=", 0)
#Calling the vector with all constraints and decision variables
lprec
#Running summary of the vector
summary(lprec)
#Checking the vector
solve(lprec)
#Determining the Profit each month
get.objective(lprec)
#Determining the inventory value of each product
get.variables(lprec)
#Getting the sensitivity range for each product's profit value
get.sensitivity.obj(lprec)

#Question No. 5
#Changingthe profit value of the corresponding varibale whose optimum value is zero to obtain a non-sero value
set.objfn(lprec, c(169.99, 359.99, 334, 134.99))
add.constraint(lprec, c(330, 370, 410, 135), "<=", 170000)
add.constraint(lprec, c(5, 8, 5, 1), "<=", 2460)
add.constraint(lprec, c(0.7, -0.3, -0.3, -0.3), ">=", 0)
add.constraint(lprec, c(-0.3, 0.7, -0.3, -0.3), ">=", 0)
add.constraint(lprec, c(0, 0, -2, 0.2), ">=", 0)
lprec
summary(lprec)
solve(lprec)
get.objective(lprec) #proft
get.variables(lprec) #No. of each product
get.sensitivity.obj(lprec)

