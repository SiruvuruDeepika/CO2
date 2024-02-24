
# Arithmetic operators in R and R as a calculator

5+6
10-3
10/7
20*8
20%%3    # gives output as remainder
20%/%3   # gives output as quotient
3^4      # exponential operator (raised to the power)
(3+6i) + (4+3i) # addition on two complex numbers

# Relational operators in R
# output is a Boolean value

4 > 3
6 >= 9
7 < 10
20 <= 20
2 != 9
4 == 5

# Logical operators in R
# output is a Boolean value

0 && 0 
# logical && operator (and)
1 && 0
0 && 1
1 && 1
5 && 6
10 && 0

0 || 0   # logical || operator (or)
1 || 0
0 || 1
1 || 1
2 || 3
0 || 7

# logical & operator used for element-wise operation in vectors
# logical | operator used for element-wise operation in vectors


# sequence operator : in R
10:20
30:20

# %in% operator is used to inquire the membership in a vector
# %*% operator is used in matrix multiplication

# Sequence using seq() and repetition using rep() functions
?print()
help(seq)
x = c(3,5)
seq(1,10)
#seq(1,10, length.out=4)
#seq(1,10, length.out=6,along.with = x )
seq(1,20, by = 2,)
seq(100,80, by=-2)
1:10
rep(10,5)
rep(1:5,2)

# About print function in R

print("Hello World!")
"Hi Hello"
x =2
print(paste("The result is:",x))
print(25.5 + 12.7)
val1 =25.5 + 12.7
print(val1)
print("The value is: ",val1)

# print string and variable together
print(paste("The Value is", val1, sep=":"))

# Variable names: rules
_name = 2 # not allowed to start with special characters
&name =3 
name = 3

2name = 3 # not allowed to start with a number
.name = 4 # allowed to start with a dot.
.2name = 9 # At the beginning number not allowed after dot
my.2name = 2 # number allowed  after dot except at the beginning 

# Assignment operator

x = 3
print(x)

y <- 10
print(y)
y
3 -> z
print(z)

# Data types in R
x = 2L
class(x)
is.integer(x)
is.double(x)

a = 2
class(a) 
is.double(a)

b = 3.5
class(b)
is.double(b)

c= 'python'
class(c)

d = TRUE
class(d)

e = 3 + 6i
class(e)
is.double(e)
is.complex(e)

f = 12L
class(f)
g = as.numeric(f)
class(g)

h = '123'
class(h)
i = as.numeric(h)
i
class(i)

j = "abc"
k = as.numeric(j)

l = 125
m = as.character(l)
m
class(m)
l=20
class(l)
as.double(l)
class(l)
is.double(l)
# Data Structures in R

# Vectors
v1 <- c(1L,2L,3L,8L,10L)                          # Integer vector
class(v1)
v2 <- c(0, 1, 2, 5.3, 4.222, 6)                   # numeric vector
class(v2)
v3 <- c(TRUE, FALSE, FALSE,TRUE,FALSE,TRUE)   # logical vector
v3
class(v3)
v4 <-  c(2L,5L,7,8.0)
v4
class(v4)
v11 = c(2L,TRUE)
class(v11)
v5 <- c(2L,4L,5.9,6.2,TRUE)
class(v5)
v6 <- c(3L,6L,8.9,TRUE, "Hyderabad")
class(v6)
v7 <-c(4L,7L,9.8,TRUE,FALSE, 7+9i)
v7
class(v7)
v8 <-c(4L,7L,9.8,TRUE,FALSE, 7+9i, "Bengaluru")
v8
class(v8)

L1 = c(1,2,3)
L2= c(2,4.5,8.3)
L3 = c(1,4,5,c(9,7,8,4),10,TRUE)
L3

# Algebraic and logical operations on vectors
L1 + L2
L1 * L2
L1/L2
L2 ^ L1
L1 %% L2
L1 %/% L2

L1 & L2
L1 | L2
L1 > L2
L1 != L2

# Accessing vector elements
L3 = c(1,4,5,c(9,7,8,4),10,TRUE)
L3
L1
L2
L1[1]
L2[4]
L3[5]
L3[8]

L1[-3]
L1[1:3]
L3[1:6]
L3[2:]

# element search
L1
L2
L1 %in% L2
View(L1)

# Lists
# List -  can contain many different types of elements inside it like vectors, 
# functions and even another list inside it
h <- list(23, 21.3,c(1,2,3), "hello", sin)
h
View(h)

h[1]
h[2]
h[3]
h[[3]][1]
h[1:3]
h[5] = 10
h
# Matrix - two-dimensional(rows*columns) rectangular data set 
# It can be created using a vector input to the matrix function
# The data elements must be of the same type
# All columns in a matrix must have the same type of mode(numeric, character, etc.) 
# and the same length
i <- matrix(list(10, 20), nrow = 3, ncol = 2, byrow = TRUE, 
            dimnames = list(c('r1', 'r2', 'r3'), c('c1', 'c2')))
i
# default value for byrow is FALSE
class(i)
i
# Accessing elements of a matrix
i[3,2]
i[c(1,3),c(1,2)]
# Array - While matrices are confined to 2 dimensions, arrays can be of any number 
# of dimensions.
?array
j <- array(c(3.5, "Programming", "Session"), dim = c(2, 5, 5))
j
class(j)
View(j)
# Accessing an array
j[,,4] # 4th array 
# Accessing individual element from an array
j[2,5,4] # 2nd row, 5th column, 4th array 


# Factor - variable which can take certain values(levels) and not any
k <- c("red", "green", "blue", "blue", "red", "red")
x <- factor(k)
class(x)
x
b =factor(c(10,10,2,2,50,50))
b
factor(c(11,11,12,12))
df = data.frame(name =c('ram','john','mary'), age =c(20,23,32),height = c(157,165,176))
df
# Data Frame
# Unlike a matrix in data frame each column can contain different modes of data
# It is a list of vectors of equal length
m <- data.frame(gender = c("Male", "Male","Female"), height = c(152, 171.5,147.8), 
                weight = c(81,93,67), Age = c(42,38,64))
class(m)
print(m)
View(m) 

# Accessing columns/features of a data frame
m[4]
m$Age[2]
# Accessing elements of a data frame
m$height
m$gender
m$gender[3]
m
m[1,3]
m[2]
m[[2]]
m[[2]][2]
m[2,2]
m[c(1,3),c(2,4)]
m[c(2,3),c(2,4)]
m[c(1,2), c(2,3)] # accessing multiple items from a data frame
m[2,]
m[,3]

