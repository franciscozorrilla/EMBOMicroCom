# load libraries
library(tidyverse)
library(ggalluvial)

# load data, replace filename with your results to generate new plot
read.delim("CDM35_lcts_detailed.tsv") -> yeastlactis_smetana # SMETANA results
read.delim("bigg_classes.tsv") -> bigg_mets # BiGG metabolite ids information

# plot, play around with the parameters in this function to modify plot
ggplot(yeastlactis_smetana %>% 
         mutate(compound = gsub("M_","",compound),compound = gsub("_e","",compound)) %>%
         left_join(.,bigg_mets) %>% filter(smetana >= 0.2,name!="DL-Glutamate"),
       aes(axis1 = donor, axis2 = name, axis3 = receiver,
           y = smetana)) +
  scale_x_discrete(limits = c("Donor", "Metabolite", "Reciever")) +
  xlab("Interaction") +
  geom_alluvium(aes(fill = name)) +
  geom_stratum(width=0.3) +
  theme_minimal() + geom_text(stat = "stratum", aes(label = after_stat(stratum)),min.y=0.2)+theme_bw() + 
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"),axis.line.y = element_blank(),axis.ticks.y = element_blank(),axis.text.y = element_blank(),axis.title.y = element_blank(),axis.line.x = element_blank(),axis.ticks.x = element_blank(),legend.position = "none")

# save to pdf, modify filename to reflect your experimental conditions
ggsave("CDM35_lcts.pdf",height = 4,width = 14)