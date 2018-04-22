# List of necessary packages
packages <- c(
    'dplyr' 
  , 'stringr' 
  , 'ggplot2' 
  , 'tidyr' 
  , 'purrr' 
  , 'shiny'
  , 'DT'
) 

# Check to see which packages of the list above are installed.
installed_packages <- packages %in% installed.packages()

# If some of the packages are missing, download and install them.
if(!all(installed_packages)) {  
  install.packages(packages(!installed.packages))
  
  # Let's check again to see whether all the packages are now installed.
  installed_packages <- packages %in% installed.packages()
  
  # If some packages are not installed, let's stop the script execution.
  if(!all(installed_packages)) 
    stop('Missing packages include: ', packages[!installed.packages])
}

# If packages are successfully installed, load them into environment.
sapply(packages, require, character.only = TRUE)

# Remove unnecessary variables
rm(list = c(
  'packages',
  'installed_packages')
)