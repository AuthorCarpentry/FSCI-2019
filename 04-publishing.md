#  Publishing

3 hours

---------------------------------------------------

## Learning Objectives

* Publish your document to Rpubs
* Publish your document and code via GitHub
* Understand how Binder can help make your publication more reusable

### Rpubs

Open your document in Rstudio.  Click Knit.  You'll see a publish button in the
item view pane - click it.  You'll be redirected to the rpubs web site.  If you
don't have an account you'll need to register.  You'll see a screen with basic
metadata, but all is optional.  Your document is published online!

### GitHub

Sign up for GitHub if you don't have an account.  Create a new repository (the
name doesn't mater) and make sure to check the box for Initialize this repo
with a README file.  Open Finder of Windows explorer on your computer.
Navigate to the FSCI directory and find the .html file you've been knitting.
Rename this file to `index.html`.  On GitHub, Click on Upload a file. Drag
index.html  to the box and click the green button at the bottom.  Now go to
settings on GitHub.  Scroll down to the GHPages section and click the dropbown
to select masster.  Click Save.  If you now scroll down to the GHPages section
you'll see a github.io url.  Copy this and go back to the code section of your
GitHub Repository.  Click and add the url.  If you clikc this link you'll see
your report!

### Binder

We need to copy all files used by knitter into our GitHub repository.  Make a
copy of your .Rmd file that doesn't include the ORCID section (The
authentication is a pain).  Then we
need to tell Binder that we want to run R and what our dependencies are.  In
GitHub, create a `runtime.txt` file that contains: `r-2018-07-09`.  This
chooses a version of R at the date indicated.  Next create a `install.R` file
that contains:

```
install.packages("rmarkdown")
install.packages("bitops")
install.packages("caTools")
install.packages("tidyverse")
install.packages("DT")
```
Now edit the README file in Github and add:

```
https://mybinder.org/v2/gh/AuthorCarpentry/R-Binder/master?urlpath=rstudio
```

replacing `AuthorCarpentry` with your GitHub account name and `R-Binder` with
your GitHub repository name. Click the Binder button and your environment will
load (it might take up to 20 mins the first time).

## Autopopulate your Biosketch from your ORCID profile on the web

This final dynamic feature demonstrates the power of keeping your updated
professional information in your ORCID profile, and copying information from
it as you need it in your reproducible report.

To make this feature work its magic, we need to get an authentication token
from ORCID in order to read your bio from your ORCID profile. This is a
multi-step process, allowing RStudio and R to communicate with the ORCID
system. Let's proceed step by step.

1. In the exercise file, navigate to the section **Principal Investigator's
Biosketch**.  Open the file `insert_orcid.R`. Copy the first code chunk from
this file and paste into your exercise file under the Level 2 header
**Principal Investigators Biosketch**.

2. In this new code chunk in your exercise file, click the green arrow to the
upper right corner to run the code. This will open up a web browser to the
ORCID web site. Log into your ORCID account.

In your RStudio Environment window, you will see a variable called `token`
added. This is the authorization code issued by ORCID that allows R and
RStudio to read information from your ORCID account.

3. In the R console type `token`.  This prints to the console the token value
you saw added to your Environment. We'll be copying and pasting that token
string into a new file in Step 5 below.

4. This step creates an `.Renviron` file in your computer's home directory
where you will store the ORCID `token`. By doing so, the authorization is able
to be reactivated every time your RStudio session communicates with ORCID to
refresh or add data from your profile.

Return to the file `insert_orcid.R`. Now copy and paste the second code chunk
into the **console**. (NOT into your exercise file!)

5. A new text file now opens in Rstudio.  In this file type:

```
ORCID_TOKEN="1c7..."
```

where `1c7...` is replaced by the token that we printed to the R console
earlier.  You will need to copy everything after `BEARER` that was just
printed to the console. Paste it in after the `=` sign.

6. Save this file, which will be read every time you use R.

FYI, this `.Renviron` file will show up in your computer's home directory
which is outside of your RStudio project directory. The exact "where" depends
on your computer's operating system and configuration.

7. In the exercise file, under the **Project PI's Biosketch** section, we
need to make a couple of updates:

a. Add the following text under the header to give attribution to the
    `rorcid` package:

`_This is auto-populated from your ORCID profile using the @R-rorcid package._`

b. Insert code to place the ORCID bio into the PI Biosketch section. Below
    the code chunk, add ``r bio``.

8. Save the changes, knit to HTML, and you'll see the biography from your
ORCID file now appear in the reproducible report.

9. To test that the biosketch will be auto-updated in your report when your
ORCID bio is updated, go to your ORCID account and make a change to your
biography. You might add a new accomplishment to the top of the bio, such
as *Master of Reproducible Reporting* or *Bends RMarkdown to Their Will*.

When you knit the document to HTML, the **Principal Investigators Biosketch**
auto-updates!

10. Back in your ORCID profile, don't forget to remove the latest change to
your bio, if appropriate.

## Wrapup
