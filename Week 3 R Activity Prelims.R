#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment
getwd()
setwd()

#This brings the 'women' data into my environment from Base R (Run this)
women

#This code saves the women data as a dataframe with a new name
#TASK: Save the women dataset with a new name
womenbweek3 <-(women)

 
#This code chunk allows me to see the top 2 rows of my data
#TASK: Write the function that returns the top rows

womenbweek3.top2rows = womenbweek3[1:2,]
womenbweek3.top2rows

#This code chunk shows me the internal structure 
#Task: Write the function that shows the number of rows, columns, column names, class of columns   
str(womenbweek3)


#colnames(womenbweek3)
#dim(womenbweek3)
#nrow(womenbweek3)
#ncol(womenbweek3)
#sapply(womenbweek3, class)  

#This code chunk shows me some basic summary stats
#Such as Min, Max, Mean. Quartiles...
#Task: Write the function that gives summary stats
summary(womenbweek3)

#This allows me to apply the function to just one certain column
#Task: Write the function to return the Mean of just the height column

mean(womenbweek3$height)

#This allows me to save one column as its own object ('values' in the Environment)
#Task: Write the function to create an object for just the Weight column 
#and write the function to create an object for just the Height column 
#(these should show as values in the environment window, not as datasets)
height <- (womenbweek3$height)
weight <- (womenbweek3$weight)

#This takes the individual objects ('values' in the Environment) and creates a dataframe
#I can see the Data in the Environment 
#Task: Write the function to create a data.frame from the height and weight values you just created

new.womenbweek3 <- data.frame(height,weight)

#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#Task: Write the function to create a subset of the data where the height is > 65
#If I wanted to save the subset, I would need to name it as done in the code above

heightlarger65<-subset(womenbweek3, height>65)

#This shows me how many rows are in my dataset and
#TASK: Write the function that returns the number of rows

nrow(womenbweek3)

#This shows me how many columns are in my dataset
#TASK: Write the function that returns the number of columns

ncol(womenbweek3)

#This also shows me how many rows and columns with just one function
#TASK: Write the function that returns the number of rows and columns with just one command

dim(womenbweek3)

#This code will install the ggplot2 package
#TASK: Write the function that installs the ggplot2 package

install.packages("ggplot2")
library(ggplot2)


#This code calls the ggplot2 package so I can use its functions
#Task: Write the function that 'calls' the ggplot2 package

library(ggplot2)

#This produces a scatter plot of the height and weight columns
#Task: replace the dataset name and column names in the plot function below 
#to produce a scatter plot of height and weight
ggplot(womenbweek3, aes(x=height, y=weight)) + 
  geom_point()

#Optional 'Just for fun' TASK: Change the arguments for the geom point and see what happens to the plot
ggplot(womenbweek3, aes(x=height, y=weight)) + 
  geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)
