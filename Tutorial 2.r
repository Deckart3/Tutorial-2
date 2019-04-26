
In this tutorial, you will learn how to aggregate different vector objects using the st_union function of sf. 
We will (1) load the required packages, (2) create new objects by subsetting the us_states dataset from spData and creating two new objects (3) merge these two objects with st_union()

This chunk is used to load all of the necessary packages to run our functions. 

library(sf)
library(spData)


In this chunk, we define objects "arizona" and "new_mexico" as those respective states from the us_states database.
Note that we use the syntax dataset(row_name, column_name) where we select the row based on the name column and then only take the name column (discarding the non-essential columns)

We use plot to visualize the work we have just done in both cases.

arizona<-us_states[us_states$NAME=="Arizona", 1]
plot(arizona)
new_mexico<-us_states[us_states$NAME=="New Mexico", 1]
plot(new_mexico)


In this chunk, we define southwest as the combination of arizona and new_mexico. We use the function st_union to merge the previous two objects. 
Like before, we use plot to visualize our work. 

southwest<-st_union(arizona, new_mexico)
plot(southwest)
