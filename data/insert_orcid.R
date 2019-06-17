# Insert this under the Principal Investigator's Biosketch

```{r orcid-bio, echo = FALSE}
library ('rorcid')
library('httpuv')

token <- orcid_auth(scope = "/authenticate", reauth = FALSE, redirect_uri = getOption("rorcid.redirect_uri"))

res <- orcid_bio(orcid = "0000-0001-5494-4806")
bio <- res$'0000-0001-5494-4806'$'content'

```

# Code section to save ORCID token to your RStudio environment
# Copy this to your console

if(!file.exists("~/.Renviron")) # only create if not already there
  file.create("~/.Renviron")    # (don't overwrite it)
file.edit("~/.Renviron")
