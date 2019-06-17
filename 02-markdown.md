#  Introduction to RMarkdown for Reproducible and Dynamic Reporting

90 minutes 

---------------------------------------------------

## Learning Objectives

* Identify characteristics of reproducible reports based on a published example provided in class
* Review the evolution of the computational narrative (aka literate programming) as a precursor to reproducible reporting
* Create a simple Rmarkdown document with code chunks in RStudio (as a first building block of a reproducible report) 
* Explain the technology stack used to create a reproducible report in RStudio



----------------------------------------------------

## Anatomy of an RMarkdown Reproducible Report

It's time to start building your own Reproducible Report! The course instructors have prepared all the content as text and script files, so you can focus on learning Rmarkdown. Let's go step by step:

#### Step 1. 

In RStudio, navigate through the `Files` pane to the `FSCI-2018-files` subfolder and open the exercise file `Base_2013_day2_in.Rmd`. Immediately save it as `Base_2013_day2_out.Rmd` and close the 'in' file. We will  continue to work on the 'out' file during this lesson.  By the end of the course, that 'out' file will be ready to publish online, showcasing your open authoring skills!

#### Step 2. Note that the `.Rmd` exercise file has three main components:

* `YAML Header`  YAML ("Not Another Markdown Language") contains document metadata that `knitr` and `pandoc` need to properly render the document and produce an output file. The header is set off with three dashes `---` above and below to delineate the YAML section. Make sure there is a blank line between the bottom of `YAML` header and the rest of the document. 
* The main body of the text contains the content you compose and markup with `Rmarkdown` syntax to clarify its meaning and polish its appearance.
* Code chunks contain R code that is executed when the document is knit to HTML, Word, or another output format. We will ignore the code chunks until a bit later in the FSCI2018 week, when we take on dynamic reporting elements.


#### Step 3. Edit the exercise file per the following instructions 


**YAML Header**

In the `author` field, enter your own Name and Institution with the entire string of text surrounded by quotes    
In the `date` field, enter today's date


**Text Document**


Scholarly publishing requires us to format our text documents to clarify
meaning. For example,

* Headings and subheadings represent document structure, such as Sections
* White space represents paragraphs or other text blocks with different content
* Block quotes represent text that came from a third-party source
* Font styles such as italic and bold represent emphasis
* Font styles representing non-proportional text distinguish computer code or technical terms
* Lists and Tables represent concisely summarized information or data
* Hyperlinks represent references to related information elsewhere within the document, or outside of the document
* Inline images illustrate points made in the text
* Footnotes represent commentary on the main text


**Let's add RMarkdown syntax to our report to better communicate its meaning.** 


1. Create headings and subheadings by inserting one or more \# symbols at the beginning of a line, followed by a space. One \# is for a level one header, \#\# for a level two header and so on. 

    For this Exercise, assign Level 1, 2, and 3 headers so the exercise file reflects the sections of a Data Management Plan. You may use or own judgment as to which headings to assign which level -- look for horizontal rules marked with four asterisks \*\*\*\* to designate the start of each major section.  Alternatively you may consult a model Data Management Plan format such as the UK Digital Curation Centre's checklist online at <http://www.dcc.ac.uk/resources/data-management-plans/checklist>.

2. Add emphasis to the text, where appropriate, using single or double asterisks or single or double underscores. either type of character works, as long as it is matched on both sides of the emphasized phrase. You may find text phrases in want of emphasis include the phrase "Not Applicable"; the title of the Project; and titles of publications.

3. Superscripts and subscripts can be added by surrounding the text with the symbols \^ and \~ , respectively. Find one phrase in the `Project Description` section in want of a superscript and another, a subscript. Mark these occurrences up accordingly. 

4. Find two quoted  text blocks and insert the \> symbol at the beginning of each to markup these passages as blockquotes (maybe you remember this from old e-mail programs?)

The result will display as oddly large text indented from the left. We'll fix the oddly large text issue in a later lesson.


5. Bulleted lists: To make unnumbered bullet lists , just start each line with a single asterisk \* or - hyphen and a space for the bullet item.  Numbered lists work the same way using 1. 2. 3. or a. b. c.  

    To make a nested list, indent four spaces below the first level bullet and add another bullet

    For this exercise, find the list bullets in need of formatting and add the relevant Rmarkdown syntax. Bullets appear in  'Related Policies' and in 'Data Being Collected'.
    

6. To display technical terminology or other non-proportional text, use the backtick symbol. A single \` on both sides works for short bits, and  three backticks \`\`\` in a separate line above and below is best for larger codeblocks.  

    Find the name of a computer file (ending with 'csv') in the exercise file and mark it up to represent inline code
  
    Find an example of a code block in the exercise file. When you find one, place a blue sticky note on your laptop lid, and knit the document to html, and go grab a snack!

7. Create multiple links to content elsewhere by placing each link text in square brackets \[\] followed by the link address in round parentheses \(\). Don't forget to include http:// or https:// at the beginning of the link address. 

8. Create one inline image by adding an exclamation mark \! in the text, then
placing the image name  in square brackets \[\] followed by the image file
address in round parentheses \(\).  (TIP: Make sure there is no space between the text in brackets and the address in parentheses!)

9. Add four footnotes to the text in the exercise (replace the placeholder 'FN-') by inserting the caret symbol ^ outside of square brackets \[\], and inserting the footnote content inside those brackets.

10. Pandoc supports crude tables created with the pipe \| and \- symbols to designate cell borders, and the \+ symbol to control text alignment in a cell. The exercise file provides the makings of a pipe table in the 'Expected Outputs' section. The final row of data needs formatting -- insert | symbols six times. Also remove the instructions above that line so the table will knit clean. 


11. You did alot of work! Save the file and knit it to both HTML and Word. Compare the results to see if anything changes based on output file format.

If successful, save the exercise  file again under the name `Base_2013_day3_in.Rmd`. You'll pickup tomorrow right where you leave off today.


#### Congratulations on completing the first draft of your Reproducible Report!



Previous: [Getting Started with Markdown](01-getting-started.html) Next: [Modifying Appearance](03-modifying-appearance.html)
