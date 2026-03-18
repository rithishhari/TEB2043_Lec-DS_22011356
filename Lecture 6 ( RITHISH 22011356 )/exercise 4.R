# Load CSV safely
df_raw <- read.csv(
  "C:/Users/annur/OneDrive/mine/picture/OneDrive/algo/LECTURE_TEB2043_DATA_SCIENCE/file1.csv",
  stringsAsFactors = FALSE
)

# Inspect first few rows to check column names and values
head(df_raw)
str(df_raw)

# Identify rows to remove (trim spaces just in case)
rows_to_remove <- which(
  trimws(df_raw[,2]) == "Bad value" & 
    trimws(df_raw[,3]) == "Garbage"
)

# Create log of removed rows (even if empty)
df_logrm <- df_raw[rows_to_remove, c(1,2,3)]

# Remove those rows from the main dataframe
df_cleaned <- df_raw[-rows_to_remove, ]

# Optional: print a message
if(length(rows_to_remove) == 0){
  message("No rows matched the removal criteria.")
} else {
  message(length(rows_to_remove), " row(s) removed and logged in df_logrm.")
}

# View dataframes safely
if(nrow(df_cleaned) > 0) View(df_cleaned) else message("df_cleaned is empty.")
if(nrow(df_logrm) > 0) View(df_logrm) else message("df_logrm is empty.")
