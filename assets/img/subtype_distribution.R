library(ggplot2)

df <- read.table('~/Dropbox/PhD/Lab_talks/MEPI_iii17/assets/img/sb.txt')

p <- ggplot(data=df,aes(x=V1,y=V2)) + geom_bar(stat='identity') + xlab('Subtypes') + 
  ylab('Number of reference sequences') +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

png('~/Dropbox/PhD/Lab_talks/MEPI_iii17/assets/img/dist.png')
print(p)
dev.off()
