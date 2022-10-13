# 🔎 Inspect metabolic models

While genome-scale metabolic models may appear complicated and mysterious at first, they exist in our computers as modest text files.

Analogous to the [HTML format](https://en.wikipedia.org/wiki/HTML) used to describe websites, the SBML format can be used to describe the metabolism of organisms.

Read about the [Systems Biology Markup Language](https://sbml.org/) (SBML) standard to familiarize yourself with the GEM format output of CarveMe. 

Use `less` to view and scroll through the contents of the yeast model.

```bash
$ less $ROOT/models/yeast.xml
```

Press the `q` key to stop viewing the file.

Use `less` to view and scroll through the contents of the bacterial model.

```bash
$ less $ROOT/models/bacteria.xml
```

Press the `q` key to stop viewing the file.

While this can be informative for some quick inspection, we may also visualize these metabolic models using web-based tools such as [fluxer](https://fluxer.umbc.edu/). Upload the bacteria and/or yeast model and have a look around!

## 🥫 Inspect media composition

Use `paste` to view the contents of the `media.tsv` file

```bash
$ paste $ROOT/media.tsv
```

Search the [BiGG database](http://bigg.ucsd.edu/) to learn more about specific metabolites name and identifiers.

If you are feeling adventurous, come up with your own media composition/variation for simulation to be used in the following exercise! 

## 💎 Discussion questions

* How many reactions and metabolites are present in the yeast model? What about the bacterial model?
* How were these models reconstructed? To what extent is there metabolic compartmentalization?
* What classes of metabolites are present in the media compositions? What is different across the media variations?
