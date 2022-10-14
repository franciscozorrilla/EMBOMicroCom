# 🔬 [EMBOMicroCom](https://www.embl.org/about/info/course-and-conference-office/events/mcd22-01/): Metabolite and species dynamics in microbial communities 🧬
# 💻 Metabolic modeling tutorial (Day #5)

## 💰 Learning Outcomes

* Predict metabolic interactions within microbial community
* Compare predicted metabolite exchanges with experimentally verified interactions
* Explore the effect of media composition on interaction landscape
* Generate genome-scale metabolic models (GEMs) from genomes

## 📚Suggested Reading

 - [Case study](https://www.sciencedirect.com/science/article/pii/S2405471217303903): Yeast Creates a Niche for Symbiotic Lactic Acid Bacteria through Nitrogen Overflow
 - [Intro to FBA](https://www.nature.com/articles/nbt.1614): What is flux balance analysis?
 - [SMETANA](https://www.pnas.org/content/112/20/6449): Metabolic dependencies drive species co-occurrence in diverse microbial communities
 - [CarveMe](https://academic.oup.com/nar/article/46/15/7542/5042022): Fast automated reconstruction of genome-scale metabolic models for microbial species and communities

## ⛏ Materials

* `models/bacteria.xml`: Manually refined *Lactococcus lactis* genome scale metabolic model
* `models/yeast.xml`: Manually refined *Saccharomyces cerevisiae* genome scale metabolic model
* `media.tsv`: Media composition file used for simulation under differing environments
* `bigg_classes.tsv`: Metabolite dictionary

## 🎯 Exercises

0. [Start by cloning this repo](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_0.md)
1. [Inspect metabolic models and media file](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_1.md)
2. [Simulate community interactions between bacteria and yeast](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_2.md)
3. [Explore effect of interactions as a function of media composition](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_3.md)
4. [Generate metabolic models and predict interactions using your own genomes](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_4.md)
