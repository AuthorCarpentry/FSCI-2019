ggplot(data=doaj_seal, aes(doaj_seal$PubCountry, fill=doaj_seal$PubCountry)) + stat_count() + labs(x="Country", y="Count") + theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))
