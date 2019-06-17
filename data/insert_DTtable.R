# Place this chunk below the heading Annexes

```{r data-table}
doaj_seal %>%
  datatable(rownames = FALSE, 
            colnames = c("Title", "Publisher", "Country", "Fees", "Waivers", "Identifiers", "Start Year", "Language(s)", "Review  Process", "Plagiarism check", "Time to Press", "License", "Author owns Copyright", "DOAJ Seal"),
            class = "cell-border stripe", 
            caption = "Journals with DOAJ Seal",
            filter = list(position = "bottom"),
            extensions = 'Buttons', options = list(dom = 'Bfrtip',
                                                   buttons = c('colvis', 'csv', 'pdf'))
  )

```

