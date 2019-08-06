#  Introduction to R Markdown for Reproducible and Dynamic Reporting

3 hours

---------------------------------------------------

## Learning Objectives

* Identify characteristics of reproducible reports based on a published example provided in class
* Review the evolution of the computational narrative (aka literate programming) as a precursor to reproducible reporting
* Create a simple R Markdown document with code chunks in RStudio (as a first building block of a reproducible report)
* Explain the technology stack used to create a reproducible report in RStudio
* Show how to modify document sections
* Modify specific document formatting
* Learn how code can be integrated in a document
* Add references to a document
* Manage sub-documents
* Include equations in your document


----------------------------------------------------

## Anatomy of an R Markdown Reproducible Report

It's time to start building your own Reproducible Report! The course
instructors have prepared all the content as text and script files, so you can
focus on learning R Markdown. Let's go step by step:

### Setting up your file

In RStudio, navigate through the `Files` pane to the `FSCI-2019-files`
subfolder and open the exercise file `Base_2013_2.Rmd`. Immediately save it as
`Base_2013.Rmd` and close the '\_2' file. We will continue to work on the
'Base_2013.Rmd' file during this lesson.  By the end of the course, that
file will be ready to publish online, showcasing your open authoring skills!

### Organization of our `.Rmd` exercise file:

* `YAML Header`  YAML ("YAML Ain't Markup Language") contains document metadata
that `knitr` and `pandoc` need to properly render the document and produce an
output file. The header is set off with three dashes `---` above and below to
delineate the YAML section. Make sure there is a blank line between the bottom
of `YAML` header and the rest of the document!
* The main body of the text contains the content you compose and markup
with `R Markdown` syntax to clarify its meaning and polish its appearance.
* Code chunks contain R code that is executed when the document is knit to
HTML, Word, or another output format. We will ignore the code chunks until a
bit later in the week, when we take on dynamic reporting elements.

## How RStudio Knits Documents

RStudio relies on a stack of technologies that work together to make plain text 
authoring simple, reliable, enjoyable, and powerful. This conceptual stack is 
represented below.
(Figure copied from RStudio, "How It Works", https://rmarkdown.rstudio.com/lesson-2.html)

![Rmarkdown workflow](img/rmarkdownflow.png)

### RMarkdown

Markdown is a set of simple markup annotations for plain text files. 
R Markdown files (`.Rmd`) rely on a variant of Markdown known as [Pandoc's Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown). 

According to RStudio's [Markdown Basics](https://rmarkdown.rstudio.com/lesson-8.html) tutorial, 
you can use Pandoc's Markdown to create the following elements in an RMarkdown file:

* Headers
* Lists
* Links
* Images
* Block quotes
* Latex equations
* Horizontal rules
* Pipe tables
* Footnotes
* Bibliographies and Citations
* Slide breaks
* Italicized text
* Bold text
* Superscripts
* Subscripts
* Strikethrough text

#### Recommended resources on RMarkdown

* RStudio, *RMarkdown Homepage*, https://rmarkdown.rstudio.com/  
* RStudio *RMarkdown Formats*, https://rmarkdown.rstudio.com/formats.html
* Yihui Xie, J. J. Allaire, and Garrett Grolemund, 2018.  *R Markdown: The Definitive Guide*, https://bookdown.org/yihui/rmarkdown/

### Knitr

Knitr is an R package that executes all of the code chunks and inline code in an 
Rmarkdown document. It then creates a new markdown (`.md`) document which includes the code and its output. 

#### Recommended resources on Knitr

* Yihui Xie, *knitr: elegant, flexible, and fast dynamic report generation with R*, https://yihui.name/knitr/  
* Yihui Xie, *Dynamic Documents with R and knitr*, Second Edition (Chapman & Hall/CRC The R Series) 2nd Edition, also online at: https://github.com/yihui/knitr-book

### Pandoc

Pandoc is considered the swiss army knife of document converters because it can transform a number of different markup formats such as .md or .html to many other formats, such as .doc, .pdf, html_slides, etc. Pandoc is also able to render rferences in a document to properly-formatted citations that follow a particular citation style.

Pandoc is a command line tool that is independent from R. However, it comes bundled with R Studio because Rmarkdown relies on it for document conversion.

#### Recommended resources on Pandoc

* *Pandoc, A Universal Document Converter*, https://pandoc.org/

## Use basic RMarkdown formatting `Base_2013.md` to control how the document is displayed:

**YAML Header**

In the `author` field, enter your own Name and Institution with the entire
string of text surrounded by quotes.
In the `date` field, enter today's date.


**Text Document**

Scholarly publishing requires us to format our text documents to clarify
meaning. For example,

* Headings and subheadings represent document structure, such as Sections
* White space represents paragraphs or other text blocks with different content
* Block quotes represent text that came from a third-party source
* Font styles such as _italic_ and **bold** represent emphasis
* Font styles representing `non-proportional text` distinguish computer code or technical terms
* Lists and Tables represent concisely summarized information or data
* Hyperlinks represent references to related information elsewhere within the document, or outside of the document
* Inline images illustrate points made in the text
* Footnotes represent commentary on the main text


**Let's add R Markdown syntax to our report to better communicate its meaning.**

1. Create headings and subheadings by inserting one or more \# symbols at the beginning of a line, followed by a space. One \# is for a level one header, \#\# for a level two header and so on.

    For this Exercise, assign Level 1, 2, and 3 headers so the exercise file reflects the sections of a Data Management Plan. You may use or own judgment as to which headings to assign which level -- look for horizontal rules marked with four asterisks \*\*\*\* to designate the start of each major section.  Alternatively you may consult a model Data Management Plan format such as the UK Digital Curation Centre's checklist online at <http://www.dcc.ac.uk/resources/data-management-plans/checklist>.

2. Add emphasis to the text, where appropriate, using single or double asterisks or single or double underscores. either type of character works, as long as it is matched on both sides of the emphasized phrase. You may find text phrases in want of emphasis include the phrase "Not Applicable"; the title of the Project; and titles of publications.

3. Superscripts and subscripts can be added by surrounding the text with the symbols \^ and \~ , respectively. Find one phrase in the 'Project Description' section in want of a superscript and another, a subscript. Mark these occurrences up accordingly.

4. Find two quoted text blocks and insert the \> symbol at the beginning of each to markup these passages as blockquotes (maybe you remember this from old e-mail programs?)

The result will display as oddly large text indented from the left. We'll fix the oddly large text issue in a later lesson.


5. Bulleted lists: To make unnumbered bullet lists, start each line with a single asterisk \* or - hyphen and a space for the bullet item. Numbered lists work the same way using 1. 2. 3. or a. b. c. Be sure to have a blank line before starting the list.

    To make a nested list, indent four spaces below the first level bullet and add another bullet

    For this exercise, find the list bullets in need of formatting and add the relevant R Markdown syntax. Bullets appear in 'Related Policies' and in 'Data Being Collected'.


6. To display technical terminology or other non-proportional text, use the
backtick symbol. A single \` on both sides works for short bits, and  three
backticks \`\`\` in a separate line above and below is best for larger
codeblocks.  

    Find the name of a computer file (ending with 'csv') in the exercise file and mark it up to represent inline code

    Find an example of a code block in the exercise file. When you find one, place a blue sticky note on your laptop lid, and knit the document to html, and go grab a snack!

7. Create multiple links to content elsewhere by placing each link text in
square brackets \[\] followed by the link address in round parentheses \(\).
Don't forget to include http:// or https:// at the beginning of the link
address.

8. Create one inline image by adding an exclamation mark \! in the text, then
placing the image name in square brackets \[\] followed by the image file
address in round parentheses \(\). (TIP: Make sure there is no space between
the text in brackets and the address in parentheses!)

9. Add four footnotes to the text in the exercise (replace the placeholder
'FN-') by inserting the caret symbol ^ outside of square brackets \[\], and
inserting the footnote content inside those brackets.

10. Pandoc supports crude tables created with the pipe \| and \- symbols to
designate cell borders, and the \+ symbol to control text alignment in a cell.
The exercise file provides the makings of a pipe table in the 'Expected Outputs'
section. The final row of data needs formatting -- insert | symbols six times.
Also, remove the instructions above that line so the table will knit clean.

11. You have done quite a bit of work! Save the file and knit it to both HTML
and Word. Compare the results to see if anything changes based on output file
format.

-----------------------

## Document Sections

We have lots of sections in our document; it would be nice if these were
listed in a table of contents and numbered so we could easily refer to a
specific section. We don't want to have to manually update the table of
contents or renumber everything when we move sections around; we want `knitr`
to do as much as possible automagically.

In order to customize the appearance of our document, we need to pass
information to `knitr` about what we want. We use the YAML header, where we
customized the title and author, in order to set specific options.  

### Table of Contents

In the YAML we have a number of output formats. You'll notice when you change
the `knitr` output format that the format you're interested in moves to the top
of the list. We can make customizations to the format by removing the word
`default` after the format and including an indented list of options. If we
want to include a table of contents, we add the option `toc: yes` to both the
`word_document` and `html_document` formats. Then use the knit button to see
the results.

There are options that impact the appearance of the TOC.  For example, you can
remove a layer of TOC sub-sections (like 'Metadata' under Data being collected)
by using the option `toc_depth: 2`

### Section Numbers and Formatting

Section numbering is where the behavior of different formats starts to diverge.
To add section numbers to our HTML document we just need to add the option
`number_sections: yes`.  We can also have the TOC appear as a document sidebar
by adding `toc_float: yes` to our options.

For the Word document, section numbering is controlled by the document theme
(below).

## Document Themes and Custom Formatting

### HTML
The `knitr` package supports built-in themes that format the overall document.
[Click here to view available themes](https://bootswatch.com/3/). You can
control which theme is used for the document by adding `theme: readable`. Try
switching to a different theme and see what happens!

These themes are built using standard web Cascading Style Sheets (CSS).  If we
don't like how any of the built in themes look, we can add a CSS style sheet
to make specific changes. In our exercise file document, the quoted text looks
too big; the font is larger than the surrounding text! We'll control this
oddity with a style sheet. To do so, make a text file by going to
`File/New File/Text File` in RStudio. This will open up an editor window where
you can paste the following CSS code chunk:

```
blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 14px;
    border-left: 5px solid #eee;
}
```

This will edit the spacing and font size of all the quotes in the document. You
can use similar standard CSS to modify the appearance of all other elements in
your document. Remember, markdown is really just an easy way of indicating HTML
tags, and CSS lets you modify those tags.

When you have a completed css file, click the save icon and save the file
as `custom.css`. Note that you can call the file anything you want, but it's
good to include the css extension. You can then load this file in your
document by adding the option `css: custom.css` to your YAML header.

### Word

You can customize Word document styling, such as fonts, sizing, and section
numbering, within the Word program. You can then provide `knitr` with the
stylized Word document to use as a style sheet of sorts. Because editing Word
document styling is a pain, we've created a Word document with section numbering
that you can use. You just need to
add `reference_docx: "Base_2013_day3_style.docx"` to the YAML header for
the `word_document` type and knit to see the result.

## Integrated Code

The benefit of using RStudio to author reports is that you have the
ability to perform computation, live within the document. First, let's load some
data into our exercise file. Look at the top of the file where the DOAJ data is
imported in a code chunk. Code chunks are demarcated by three tics \`\`\`. The
first group of tics is followed by a label that indicates the type of code and a
description. So, the label in this example is `{r add_dataset}`. You'll see
RStudio makes pretty formatting around the code chunk. There are options for
each chunk, and you can run the code by clicking the green arrow (located in
the top right corner of the code chunk box). You'll then notice an output
message and a change in the right 'Environment' section of RStudio. The message
is the output from the operation, and the right panel shows that the data file
has been loaded. You can hide the output message by clicking on the up arrow or
modifying the options so that `message=FALSE`.

Let's add a new code chunk that will do something fun! At the bottom of the
'Project Description' add a new code chunk with the label
`{r plot_country,echo= FALSE,fig.width=10,fig.height=11}`

Open `insert_plot1.txt` and copy the code to the body of the code chunk.

Click the green button and you'll see a plot appear, generated by the `ggplot2`
package. When you knit the document, this code will also execute and place a
plot in the document.  

We can do the same thing to generate additional plots. Add the code from
`insert_plot2.txt` with the label 'plot_license' before the section on Metadata.

## References

References are another area of document preparation where automation is really
helpful. References in `knitr` are handled with BibTeX files (.bib). BibTeX is
a reasonably standard reference citation format that can be produced by most
reference managers and online services. We've provided the bibliography file
`oajournals.bib` for you to work with during this course.

References are handled in the `bibliography` section of the YAML header. Add
the following to the YAML in our document:

```
bibliography: oajournals.bib
```

This tells `knitr` to use the `oajournals.bib` file for citations in the
document.

Let's open the `oajournals.bib` file and see what it looks like.  You'll see
citation information about each article in groups indicated by a document type
tag, e.g., `@article`, followed by a unique citation key (typically the last
name of an author and the year of publication, e.g. Young_2015), followed by
citation information. If you look at the exercise document, you'll note that
all of the citations have thus far been written manually (e.g., Castro et al
(2017)). We'll want to replace them by these (machine readable) document type
tags that `knitr` will be able to combine into a Reference List at the end of
the report.  We use the **@** symbol to indicate a reference, so we need to
replace each reference with the appropriate tag, for example `@Castro_2017`.

The reference list is automatically added to the end of the document, so we can
delete the dummy references that were there. You'll notice that
`Vasilevsky_2017` showed up in the text as `n.d.`, even though it's in the
reference list.  If we look in the BibTex file, we see that no authors and date
are defined for this reference. `knitr` tries its best, but won't correct or
complete references if the proper data is not available in the `.bib` file.

Let's fix the problem by grabbing a correct .bib file.  One great source is the
DOI registration agencies. Put the DOI for `Vasilevsky_2017`,
`10.7717/peerj.3208` into the [Cross Cite DOI Citation Formatter
service](https://citation.crosscite.org/) and select **bibtex** as the citation
style. Copy the BibTeX code into oajournals.bib, change the long default
citation key to `Vasilevsky_2017`, and check that the citation is now correct.

## Embedded Sub-Documents and Math

To date we've been writing everything in one R Markdown document. We can
actually build our document from sub-documents that `knitr` will integrate into
the output. The sub-documents (aka child documents) do not have to contain a
complete YAML header because they are designed to be integrated into the
'main document' or 'parent' at knit time.

To see how this works, find a document in your folder called
`equations-child.Rmd`. You can see that this file has a minimal header followed
by some R Markdown text. You'll also see some equations written in LaTeX. That's
right; you can write LaTeX within an R Markdown document and it will get
correctly formatted at knit time! :D

Let's add the child document at the end of the 'Project Description'.  You
add child documents with a code chunk, and include the document location in the
label, for example: `{r equations, child = "equations-child.Rmd"}`.

When you knit you get nicely formatted equations, in both HTML and Word.

Using multiple child-documents is a convenient and tidy way to manage multiple
sections in a single long report. Each section can be authored and tested
separately without bogging `knitr` down with one long scrolling document.
Additionally, if just one section needs to be changed or updated over time,
the parent-child authoring approach isolates the change to the necessary file
without opening (and possibly inadvertently introducing errors) to the longer parent.

Previous: [Getting Started with Markdown](01-getting-started.html) Next: [Dynamic Documents](03-dynamic.html)
