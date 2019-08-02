#  Introduction to Reproducible and Dynamic Reporting
2 Hours

-------------------------

## Learning Objectives

* Meet instructors and other course participants
* Describe common tools for producing and publishing a research report
* Discuss elements of a reproducible research report
* Explore a real-life reproducible research report
* Install software needed for this course
* Render a provided reproducible report to multiple outputs using Rstudio, `Rmarkdown`, and the `knitr` package

----------------------------------------------------

## Introductions

Please share the following:

* Name
* Professional position
* One pet peeve about current practices around research communication (authoring, reviewing, or publishing)

## Group Discussion

Automation or transformation: has the research paper changed much in the last 350 years (or why static PDFs are an underwhelming use of today's technology)

![Maxwell's discovery of the electromagnetic properties of light](img/RSjournal.jpeg)

Original manuscript of James Clerk Maxwell's paper on 'A dynamical theory of the electromagnetic field' published in the oldest scientific journal, _Philosophical Transactions_, in 1685. According to the publisher, the Royal Society:

> The final sentence on this page records his crucial revelation regarding the nature of light: 'The agreement of the results seems to show that light and magnetism are affections of the same substance and that light is an electromagnetic disturbance propagated through the field according to electromagnetic laws.' (source: https://www.theguardian.com/higher-education-network/gallery/2015/feb/12/philosophical-transactions-of-the-royal-society-350-years-of-science-publishing-in-pictures)

Photograph: Royal Society's collections


### Transforming the scholarly record: what are the _must haves_ of a research report?

1. Registration of the author's claim
2. Certification that the research was conducted properly
3. Dissemination of the work to the right audiences
4. Preservation to ensure a permanent public record of the work that can be found and cited

Source: Rallison, S.P., 'What are Journals For?', _Ann R Coll Surg Engl._ 2015 Mar; 97(2): 89-91. DOI: 10.1308/003588414X14055925061397

## What are some examples of reproducible reports?

1. Hu, Y. et. al. Late Middle Pleistocene Levallois stone-tool technology in
southwest China _Nature_ 565, 82-85 (2019) DOI
[10.1038/s41586-018-0710-1](https://doi.org/10.1038/s41586-018-0710-1)
2. Boettiger, C. From noise to knowledge: how randomness generates novel
phenomena and reveals information _Ecology Letters_ 21, 1255-1267 (2018) DOI
[10.111/ele.13085](https://doi.org/10.1111/ele.13085)
3. Lewis, L. M. et. al. Replication Study: Transcriptional amplification in tumor cells with
elevated c-Myc _eLife_ 2018; 7:e30274 DOI
[10.7554/eLife.30274](https://doi.org/10.7554/eLife.30274)

[Zenodo collection](https://zenodo.org/communities/research-compendium/)

[Research compendium setup](https://research-compendium.science/)

## How can authors fulfill these requirements while making their research reports more Findable, Accessible, Interoperable, and Re-Useable/Reproducible?

Now we'll show you the final result (on our machine).  

The first step in getting this dynmaic document is installing some software!

## Software Installation

R is a programming language that is especially powerful for data exploration,
visualization, and statistical analysis. To interact with R, we use RStudio.
For this workshop you'll need to install both R (version 3.4.3 or newer) and
RStudio on your computer.  

### Windows
Install R by downloading and running this
[.exe](https://cran.r-project.org/bin/windows/base/release.htm) file from CRAN.
Also, please install the [RStudio
IDE](https://www.rstudio.com/products/rstudio/download/#download).
Note that if you have separate user and admin accounts, you should run the
installers as administrator (right-click on .exe file and select "Run as administrator"
instead of double-clicking). Otherwise problems may occur later, for example when installing R packages.

### macOS
Install R by downloading and running this
[.pkg](https://cran.r-project.org/bin/macosx/R-latest.pkg) file from CRAN. Also,
please install the [RStudio
IDE](https://www.rstudio.com/products/rstudio/download/#download).

### Linux
You can download the binary files for your distribution from
[CRAN](https://cran.r-project.org/index.html). Or you can use your package
manager (e.g. for Debian/Ubuntu run sudo apt-get install r-base and for
Fedora run sudo dnf install R). Also, please install the [RStudio
IDE](https://www.rstudio.com/products/rstudio/download/#download).


## Workshop Files

You also need to download some files for this workshop:

1. Download [this zip file](/FSCI-2019/data/FSCI-2019-files.zip) and move
the file to your desktop.
2. If it's not unzipped yet, double-click on it to unzip it. You should end up
with a new folder called `FSCI-2019-files`.

## Intro to RStudio, Projects, and Knitting Documents

Now open RStudio (Applications/Rstudio). RStudio is the development
environment where we'll be working on our document. The main panel you'll see
on the left is the Console, where you can run R code. On the right are two
panels - the upper contains your environment (what R can access), and the lower
contains the files on your computer.

### RStudio Projects

It's good practice to keep a set of related data, analyses, and text
self-contained in a single project folder in RStudio (for example in our
 `FSCI-2019-files` directory). Working this way makes it easier to move a
project around on your computer and share it with others without worrying
about whether or not the underlying scripts will still work.

RStudio provides a helpful set of tools to set up a project through its
"Projects" interface, which not only creates a working directory for you, but
also remembers its location (allowing you to quickly navigate to it from the
Projects menu at the top right) and optionally preserves custom settings and
open files to make it easier to resume work after a break.

Let's create a project for the files we'll be working with in this class:

1. Under the `File` menu, click on `New Project`.
2. Choose `Existing Directory`.
3. Browse through your local files to find the `FSCI-2019-files` directory.
4. Click on `Create Project`. An `.Rproj` file is then automatically added to
the project folder, with the name of the folder. This file marks the location
of your project's working directory.

### Package installation

The first thing to do is install some packages.  RStudio makes it easy to
install new packages to do things you want.  You can find packages by going to
the 'Packages' tab in the lower right panel.  You can install new packages by
clicking the Install button and typing in the package name.  For this workshop
we'll need the following packages:

- `tidyverse`
- `DT`
- `rorcid`
- `httpuv`

Now let's actually work with a document.  Click in the Files tab in the lower
right panel.  The file view in RStudio is just like
navigating in finder or windows explorer.  Let's find the `FSCI-2019-files`
folder we downloaded above.  Go to Desktop and `FSCI-2019-files`. You'll see
lots of files we'll use during the workshop.  Double click on
`Base_2013_1.Rmd`.  

You'll see the document open in a new panel on the left hand side of the
screen.  This is an editor window, and you can change things in the document
here.  For now, just change the name in the document to your name.  

### Knitting a Document

Knitting is a process in Rstudio that takes a text document and turns it into
an output (like html, docx, or html slides).  Now click the knit button in the upper
left hand corner of the editor. The first time you do this you'll get a message
that you need to install some packages. Click Yes and wait for the packages to
install. Once the installation finishes, you will see an interactive demonstration
document!

You can output this single file in multiple formats. By default we've been
generating .html files, but we can also output to a Word document. If you
click on the downward arrow next to the knit button we see some default
formats. Click on Word, and a word document will appear.  

While pdf is an option, this requires a TeX distribution which is complex to
install and beyond the scope of this course.

You can also select other output forms that aren't listed in the `knitr`
dropdown. Take a look at the document. You'll see in the top a section called
`output` with sections under it like `html_document`.  If we change the top
output knit will produce a different result.  Try replacing `word_document`
with `slidy_presentation`.  This is a html presentation that you can use in
any web browser.

Tomorrow we'll start working with an actual research report!

Next: [Basic Markdown](02-markdown.html)
