#  Dynamic Content in the Reproducible Report

3 hours

---------------------------------------------------

In a reproducible report, elements in the Rmarkdown file affect not only how your documents look, but also how they render and behave when output to a final format. That is because the coded text and scripts within the Rmarkdown file are **computationally actionable**. A computer is operating on the document to combine and render its content, providing you more power than you would have working manually as a human author.

In this lesson we'll add a set of dynamic features to the exercise file and knit it to evaluate the outputs in HTML and Word.   


## Learning Objectives

* Integrate dynamic content from an R script so the output is continually updated 
* Distinguish between dynamic elements that will (and won't) work in multiple output formats (HTML, Word)
* Add an HTML widget to allow user interaction in an output HTML document
* Parameterize a document to permit efficient and powerful customized HTML reports
* Demonstrate the power of integrating content from the Web into your reproducible report

----------------------------------------------------

## Content generated from R scripts

Up to now, you have manually entered three dates referenced in this document. Let's replace them with dynamically generated dates that will auto-update by the computer!

1. Open the file `insert_4a_dates.R`  
2. Copy the code into the 3 different sections of the exercise file, as directed in the comments included in`insert_4a_dates.R`  
3. Close the file `insert_4a_dates.R`


Another section of the exercise file that can be populated by the computer is the number of journals in the *DOAJ Seal* data set. Let's replace manually-composed text with computer code!

1. Open the file `insert_4a_jnls.txt`
2. Copy the code into the **Data being collected** section of the exercise file, making it the first sentence. 
3. Close the file `insert_4a_jnls.txt`

Save the changes to the exercise file and knit to HTML and Word. Can you find the dynamically-generated inline text now? When was your document originally created and how many journals have the DOAJ Seal?


## Auto-generate bibliography files

Have you wondered why the YAML in the exercise file contains two separate bibliography files (`oajournals.bib` and `packages.bib`)? Why not make one concatenated file?

The reason for the two files is that some of the references cited in our reproducible report represent `R` packages used to generate the report. `R` packages are continually updated in the [The Comprehensive R Archive Network, CRAN](https://cran.r-project.org/). If we manually maintained the bibliography file we'd be editing it continually to reflect the new version of any `R` package we use.

Alternatively, we can use the `write_bib.R` function in `knitr` to dynamically generate a `packages.bib` file for all the R packages referenced in the report. This more powerful and efficient form of literate programming provides certainty that the references are always up-to-date!

In this exercise, let's add the citation for the `DT` and the  `rorcid` packages that we'll be using later on in this lesson.  

1. Open `packages.bib` file to see that it currently does not include a citation for `DT` or `rorcid`. Close that file.
2. Open the script file `write_bib.R` and on the third line -- the one that starts with `write_bib(c("tidyverse"...)` add `DT` and `rorcid`, each in quotes, to the list of packages you want references for.
3. Save the changes to `write_bib.R`
4. Select all of the code in  `write_bib.R` with your mouse. Once it is all highlighted, press `command+enter` to execute the code. You can watch the code run in your console window.
5. Open `packages.bib` file once again to see that it now includes a citation for the `DT` and `rorcid` packages we'll be using in a bit. Close that file and put a smiley sticky on your laptop to signify happiness. 

## Building in User Interaction (Part 1)

Rmarkdown offers multiple ways to add user interactivity into your reproducible report. Enhancing documents in this way allows readers of your report to interact with, inspect, and evaluate the data and code you've published. 

Let's start by adding a `code folding` option in our HTML output. This small interactive feature allows readers to see or hide the code chunks embedded in your report.

1. In the YAML header of the exercise file, add a new line below the `output:` and `html:` lines. 

`code_folding: hide`

This line should be at the same indent as other html options such as `css`, `toc`, `number_sections`, etc.

2. Save the changes to the exercise file and knit to HTML and Word. 

What difference do you see in how `code folding` renders in the HTML and Word outputs? You can ponder this question as you enjoy a morning break!

---------------------------------------------------

## Building in User Interaction (Part 2)

The data underlying this report is a table showing _DOAJ Seal_ journals as rows, and the characteristics of those data as the columns. Let's make all of that data fully accessible and reusable for the readers of this report. 

To accomplish this enhancement, we need to copy a code chunk that formats the underlying data set using the `Datatable (DT)` package. [@R-DT].  This package is one of the [HTML Widgets](https://www.htmlwidgets.org/) that enable JavaScript libraries to create dynamic content in Rmarkdown documents. `DT` tables and other HTML Widgets are not covered in this course. However we can insert a pre-built data table in our reproducible report to illustrate the power of interactive features !

1. Open the R script `insert_4b_DTtable.R` and copy all of the code with your mouse. Close the file.

2. In the exercise file, scroll down to the Level One heading **Annexes** and paste in the code chunk. Save the change and knit the document to HTML to see the dynamic data table generated in your report. 

3. Now let's tidy up this section of the report by adding a heading above this data table and a link to the static version of the table (the static table is higher up in the exercise file).

* Open the file `insert_4b_table.txt` and copy the first line of text (marked with a Level 2 header). Keep this file open because we will return to it to copy the second paragraph of text shortly...

* In the exercise file, paste the copied text under the heading **Annexes** and above the data-table code chunk.

* Back in the file `insert_4b_table.txt`, copy the second paragraph of text starting with "The complete data set..."

* In the exercise file, scroll up to the section **Existing Data Being Reused** where the table **A Table of the first 4 rows of the DOAJ Seal data** is displayed. Immediately after the text sentence "A sample of the `doaj_seal.csv` data set is shown below", paste in the copied text. You should now have the following paragraph located above the static table.

> A sample of the `doaj_seal.csv` data set is shown below.  The complete data set is available in searchable and  broweseable format as [Annex 10.1](#annex-table) at the end of this document.

* Test the link to Annex 10.1 to be sure you can move between the static table and the dynamic one. Now you can build in links to different sections within an Rmarkdown document!


## Adding Parameters to a Report

Another dynamic feature of Rmarkdown reports is the ability to add parameters that allow the report to be customized  before knitting. In the words of Yihui Xie, J. J. Allaire, Garrett Grolemund, writing in *R Markdown: The Definitive Guide*[1]

> One of the many benefits of working with R Markdown is that you can reproduce analysis at the click of a button. This makes it very easy to update any work and alter any input parameters within the report. Parameterized reports extend this one step further, and allow users to specify one or more parameters to customize the analysis. This is useful if you want to create a report template that can be reused across multiple similar scenarios. Examples may include:

>> * Showing results for a specific geographic location.
>> * Running a report that covers a specific time period.
>> * Running a single analysis multiple times for different assumptions.

Let's parameterize our exercise file to demonstrate the power of this dynamic reporting feature!  We'll apply this feature to enable the author to select her/his Institution before knitting.  'a parameter'Institution' appears six times in the exercise file.  We will need to add some new code to the YAML header as well as to several paragraphs where the Institution has been manually entered.

1. Open the file `insert_4b_params.txt` and copy all of the code. Close the file.

2. In the YAML header of the exercise file ( at the bottom, before the three ending dashes), paste in the copied code `r params$institution`. If you wish to change the names of any of the Institutions listed, feel free to do so. Just make sure there are at least four Institutions included in the list. Save the changes.

3. In the the body text of the exercise file, find five occurrences of an Institution name. To find the occurrences in the main body of the text, use the 'Find' option under RStudio's Edit menu. Replace each occurrence of an Institution name with the code ``r params$institution``.  When you `knit with parameters`, the inline R code will automatically write in the name of your selected Institution.

4. Knit to HTML and find six occurrences of your auto-populated Institution name.

## Autopopulate your Biosketch from your ORCID profile on the web

This final dynamic feature demonstrates the power of keeping your updated professional information in your ORCID profile, and copying information from it as you need it in your reproducible report.

To make this feature work its magic, we need to get an authentication token from ORCID in order to read your bio from your ORCID profile.  This is a multi-step process, allowing RStudio and R to communicate with the ORCID system. Let's proceed step by step.

1. In the exercise file, navigate to the section **Principal Investigator's Biosketch**.  Open the file `insert_4b_orcid.R`. Copy the first code chunk from this file and paste into your exercise file under the Level 2 header **Principal Investigators Biosketch**.

2. In this new code chunk in your exercise file, click the green arrow to the upper right corner to run the code. This will open up a web browser to the ORCID web site, where you'll log in to your account as usual.  

In your RStudio Environment window, you will see a variable called `token` added. This is the authorization code issued by ORCID that allows R and RStudio to read information from your ORCID account.

3. In the R console type `token`.  This prints to the console the token value you saw added to your Environment. We'll be copying and pasting that token string into a new file in Step 5 below.

4. This step creates an .R environment file in your computer's home directory where you will store the ORCID `token`. By doing so, the authorization is able to be reactivated every time your RStudio session communicates with ORCID to refresh or add data from your profile.   

Return to the file `insert_4b_orcid.R`. Now copy and paste the second code chunk into the console (NOT into your exercise file!):


5. A new text file now opens in Rstudio.  In this file type:

```
ORCID_TOKEN="1c7..."
```

where `1c7...` is replaced by the token that we printed to the R console earlier.  You will need to copy everything after `BEARER` that was just printed to the console. Paste it in after the `=` sign.


6. Save this file, which will be read every time you use R.  

FYI, this `.Renevironment file` will show up in your computer's home directory which is outside of your RStudio project directory. The exact "where" depends on your computer's operating system and configuration.

7. In the exercise file, update the text under the **Project PI's Biosketch**, we need to make a couple of updates

  a. Add the following text under the header to give attribution to the `rorcid` package. 

`_This is auto-populated from your ORCID profile using the @R-rorcid `rorcid` package._`


  b. Insert code to place the ORCID bio into the PI Biosketch section. Below
the code chunk, add `\`r bio\` `

8. Save the changes, knit to HTML, and you'll see the biography from your ORCID file now appear in the reproducible report.

9. To test that the biosketch will be auto-updated in your  report when your ORCID bio is updated, go to your ORCID account and make a change to your biography. You might add a new accomplishment to the top of the bio, such as *Master of Reproducible Reporting* or *Bends RMarkdown to Her/His Will*.

When you knit the document to HTML, the **Principal Investigators Biosketch** auto-updates!

10. Back in your ORCID profile, don't forget to remove the latest change to your bio, if appropriate.

-----
[1] Xie et al was published online in July 2018 at https://bookdown.org/yihui/rmarkdown/
-----

Previous: [Getting Started with Markdown](00-getting-started.html) Next: [Publishing](05-publishing.html)
