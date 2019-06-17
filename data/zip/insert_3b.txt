ggplot(data=doaj_seal, aes(doaj_seal$JnlLicense, fill=doaj_seal$JnlLicense)) + stat_count() + labs(x="License", y="Count", title = "DOAJ Seal by Country")
