# Add the DT and rorcid packages to the function so the packages.bib file has the references we need for the embedded data table ORCID integration processes executed in this lesson.

library(tidyverse)
library(knitr)
write_bib(c("tidyverse", "rmarkdown", "knitr"), 
          file = "packages.bib"
)
