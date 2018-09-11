## Notes from Vincent
# my notes

## STAT 545: R Demonstration
##
## In this R script, we'll be calculating the variance of
##  commute times, both by hand and with the `var` function.
## -----------------------

## Approximately how long did it take you to commute to UBC today?
## 1. Put the value (in minutes) in the variable `my_commute`
## 2. Execute the command; take a look at the console
## 3. Execute *this* very line. What happens?
## 4. Print out `my_commute`
my_commute <- 40
my_commute
print(my_commute) ##this is the command we are actually running
x <- "My commute time, in minutes"

## Assign the text "My commute time, in minutes:" to a variable: 
## 1. Try assigning it to `_x` or `1x`. Does it work?
## 2. Assign it to `preamble`.
preamble <- "My commute time, in minutes:"

## What data types do `my_commute` and `preamble` contain? Use `typeof`.
typeof(my_commute)#whenever we use a function we need to open brackets behind it
typeof(preamble)
#my_community is of the type "double" and preamble is a "character"
#a number defaults to a double (as if it had decimals). 
#If you want it to be an inteer you can just put a capital L in front of it, but no need 

## Let's use the `paste` function to paste out the preamble followed by
##  the commute time:
paste(preamble,my_commute)


## Bring up the documentation for the `print` function.
?paste

## You realize that your commute took you one minute longer than you originally
##  thought. 
## 1. Change the commute time, but don't execute the line.
## 2. What will happen if you run the above print function? 
#(it will still show the original number)
## 3. Go ahead and execute the commute time and print statement.

## Let's make a vector of commute times, stored in the variable `commute`.
## 1. Start with your commute time, using the `c` function. No magic numbers!
## 2. Using commas, add at least 2 more times from those around you.
commute <- c(my_commute, 20, 15, 20) #this variable is storing a vector
#a vector is basically storing objects of the same typw
commute
commute1 <- c(my_commute, 20, 15, 20, "hi") 
commute1 #now it is treated as a character vector, vectors can only hols one type of object
class(commute1) #class is about what larger structure is it

## Use the `length` function to store the number of observations in `n`.
(n <- length(commute)) #the extra brackets around the entire command lead to printing it
n <- length(commute)


## Get the mean commute time via the `sum` function and `n`. Store in `mu`.
mu <- sum(commute)/n
mu
## Get the differences between commute times and `mu`. Behold vectorization!
##  No need for loops! Store in the variable `diffs`.
(diffs <- commute - mu) #R will mute over all the values from 'commute' and substract mu from each

## Finish computing variance: add up the square of `diffs`, divide by `n-1`.
##  Store in the variable `variance`.
variance <- sum(diffs^2)/(n-1)

## Check visually that `var(commute)` gives us the same result.
var(commute)
variance 

## Check computationally whether they are the same. You get a new object --
##  what type of object is it?
var(commute)==variance 
"hi"=="hi"
typeof(TRUE)

## Use an `if` statement to check whether the variance is greater than 10.
##  If so, print out "yes", if not, print out "no". 
if(variance > 10) print ("yes") else print ("no")

if(variance > 10) {
  print ("yes") #because of these brackets {} I can enter lots of if conditions
  }else {
  print ("no")
  }

#bad practice to save workspace when closing R; it just asks whether the variables 
#stored in the environment (right top corner); need to be able to reproduce values there 
#by keeping R script saved

## EXPLORATION:
## 1. What objects did we create this session? Check out the "Workspace" under
##  "Global Environment". 
##    - You want these to be reproducible. To save workspace, or not?
##    - If yes, it might re-open when you restart R... not good!
## 2. We programmed this worksheet *interactively*. Click "Source" to run it
##     from "top to bottom", sometimes called "batch mode". You might get
##     errors -- this happens when we rely too heavily on interactivity.