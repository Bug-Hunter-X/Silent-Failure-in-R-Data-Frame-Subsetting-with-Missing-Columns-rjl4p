This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors.  When you try to select columns that don't exist, R silently drops them without warning, potentially leading to incorrect results.  The `bug.R` file shows the problem, and `bugSolution.R` provides a solution.