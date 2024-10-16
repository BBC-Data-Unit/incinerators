#print("importing function from clean2rows.R")
clean2rows <- function(csvurl){
  #print("running clean2rows function")
  #import the first row only
  df_row1 <- readr::read_csv(csvurl, n_max = 0)
  #import the rest of the spreadsheet
  df_toreshape <- readr::read_csv(csvurl, skip = 1)
  #create an empty vector to store the new column headers we will create
  newcols <- c()
  #set a year variable which starts empty but will be filled once needed
  yrcol <- ""
  #create a vector of indices that starts with 1 and ends with the number of columns
  #loop through that vector
  for (i in seq(1,length(colnames(df_toreshape)))){
    #store the column heading
    currentcol <- colnames(df_toreshape)[i]
    #store the value of the cell above that in the original spreadsheet
    parentcol <- colnames(df_row1)[i]
    #if the cell above doesn't start with 3 dots (indicating an empty cell)
    if(substr(parentcol,1,3) != "..."){
      #change the variable to store that
      yrcol <- parentcol
    }
    #combine the variable with the column name
    combinedcol <- paste(yrcol, currentcol)
    #print(combinedcol)
    #remove the dots and number(s) at the end - we need to escape the dots with \\
    #also trim white space
    combinedcol <- gsub("\\.\\.\\.[0-9]+","",trimws(combinedcol))
    #add to the vector
    newcols <- c(newcols,combinedcol)
  }
  #assign to the dataframe
  colnames(df_toreshape) <- newcols
  #return to whatever called the function
  return(df_toreshape)
}