#     This the fourth R Code File for the Introduction to R Course available at
#     https://github.com/brfitzpatrick/Intro_to_R
#     Copyright (C) 2015  Ben R. Fitzpatrick.
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#    The course author may be contacted by email at 
#    <ben.r.fitzpatrick@gmail.com>

################################################################################
#                                                                              #
#                   Code File to Accompany Course Module 4                     #
#                                                                              #
#                      Introduction to Programming in R                        #
#                                                                              #
################################################################################

# Repetitions of a particular sequence of operations on successive selections of data possibly with a changes in the operations may be efficiently accomplished by utilising

# Control Flow

?Control

# and Logical statements
#minor change
?Logic

# if(condition) action  # read as: if condition is true then perform actions

# Sorts of Conditions that might be used in an if() statement:

x <- 3

#Equality

x == 3 # logical test of whether the statement x = 3 is true

x == 4 # logical test of the whether the statement x = 4 is true

!(x == 4) # think of this as the negation of the result of the test of whether x = 4 is true

x == 2 & 3  # logical test of whether x = both 2 and 3

x == 2 | 3 # | is an 'inclusive or' so the test here is whether x (2, 3 or 2 & 3) if x = any of these then the statement is true

# works with vectors by testing element by element equality

y <- c(1,2,3)

z <- seq(1:3)

z == y

y[1] | y[2] == z[1] | z[3] # logical test of whether the 1st element of y or the 2nd element of y equal the 1st element of z or the 3rd element of z

# works for character vectors too

a <- c('alpha')

b <- c('alpha','beta','gamma')

a == b

# Relative Size

x < 3

x <= 3

x > 1

#  if(cond) expr

x

if(x==3) print('x = 3') # if x = 3 print 'x = 3'

if(x==3) print('x = 3') else print('x not equal to 3') # if x = 4 print 'x = 3', if x does not = 3 print 'x not equal to 4'

x <- 4

if(x==3) print('x = 3') else print('x not equal to 3')

# it's a bit hard to see the point of if() statements without a function
# so let's make a function that uses 'if else' statement to tell you whether a number is odd or even

# for the algorithm I have in mind we'll need the floor() command to round down (note: its opposite is ceiling() )

floor(35.5)
floor(1/3)
floor(4/3)

# and the paste command to create our output 

paste(4,c('is even'))

x

paste(x)

paste(x,c('is even'))

  if(x/2 == floor(x/2)) {paste(x,c('is even'))} else {paste(paste(x),c('is odd')) }

# try for a few x values

#e.g.

x <- 933

  if(x/2 == floor(x/2)) {paste(x,c('is even'))} else {paste(x,c('is odd')) }

#

# the process of defining x then re-entering the test can be streamlined by defining a function
# defining a function is creating you own custom R command

even <- function(x){

    if(x/2 == floor(x/2)) {paste(paste(x),c('is even'))} else {paste(paste(x),c('is odd')) }

  }

even(x=121)

even(121) # assumes arguments are supplied in order - only has a single function

even(124)

# can you make a function to test if a number is odd?


even  #recover the R code for a function by entering it without any brackets or arguments

#include R functions provided in R base

lm

#  '!'  negation symbol, read as 'not'

if(!x == 2) {paste(x,'is not 2')}


