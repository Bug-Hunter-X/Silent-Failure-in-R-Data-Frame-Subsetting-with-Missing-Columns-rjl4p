```R
# Improved code to handle missing columns gracefully:

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_subset <- c("A", "B", "D")

# Check if all columns exist before subsetting
if (all(cols_to_subset %in% names(df))) {
  subset_df <- df[, cols_to_subset]
} else {
  missing_cols <- setdiff(cols_to_subset, names(df))
  warning(paste("Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
  # Handle missing columns appropriately, e.g., subset with only existing cols
  subset_df <- df[, intersect(cols_to_subset, names(df))]
  # Or return an error
  # stop(paste("Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}
print(subset_df)
```