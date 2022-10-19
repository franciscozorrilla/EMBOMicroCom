# 🔎 1. Inspect the metabolic models

In case you are not already familiar with genome-scale metabolic models (GEMs) and flux balance analysis (FBA), have a look through the following article:

* [Intro to FBA: What is flux balance analysis?](https://www.nature.com/articles/nbt.1614)

While genome-scale metabolic models may appear complicated and mysterious at first, they exist in our computers as modest text files. Analogous to the [HTML format](https://en.wikipedia.org/wiki/HTML) used to describe websites, the SBML format can be used to describe the metabolism of organisms.

* Read about the [Systems Biology Markup Language](https://sbml.org/) (SBML) standard to familiarize yourself with the GEM format output of CarveMe. 

The models we are using have been borrowed from the [materials of a manuscript-in-preparation](https://github.com/ChMaga/13C-proteomics). Both models were reconstructed using CarveMe and manually curated to study the *S. cerevisiae* <-> *L. lactis* metabolic interactions. You can have a look at the python scripts (e.g. [bacteria.py](https://github.com/ChMaga/13C-proteomics/blob/main/bacteria.py) and [yeast.py](https://github.com/ChMaga/13C-proteomics/blob/main/yeast.py)) to see how these models were manually curated.

# 🍺 Yeast model

Use `less` to view and scroll through the contents of the yeast model.

```bash
$ less $ROOT/models/yeast.xml
```
<details>
    <summary>Click to see yeast model</summary>
  
```bash
<?xml version="1.0" encoding="UTF-8"?>
<sbml xmlns="http://www.sbml.org/sbml/level3/version1/core" level="3" version="1">
  <model id="yeast_LB">
    <listOfCompartments>
      <compartment id="C_c" name="cytosol" size="1" constant="true"/>
      <compartment id="C_p" name="periplasm" size="1" constant="true"/>
      <compartment id="C_e" name="extracellular space" size="1" constant="true"/>
    </listOfCompartments>
    <listOfSpecies>
      <species id="M_10fthf_c" name="10-Formyltetrahydrofolate" compartment="C_c" hasOnlySubstanceUnits="true">
        <notes>
          <html xmlns="http://www.w3.org/1999/xhtml">
            <p>FORMULA: C20H21N7O7</p>
            <p>BioCyc: META:10-FORMYL-THF</p>
            <p>SEED Compound: cpd00201</p>
            <p>UniPathway Compound: UPC00234</p>
            <p>KEGG Compound: C00234</p>
            <p>BioPath Molecule: 10-Formyl-5,6,7,8-tetrahydrofolate</p>
            <p>MetaNetX (MNX) Chemical: MNXM237</p>
            <p>Reactome: 419151;5389850</p>
            <p>Human Metabolome Database: HMDB00972</p>
          </html>
        </notes>
      </species>
      <species id="M_adp_c" name="ADP" compartment="C_c" hasOnlySubstanceUnits="true">
        <notes>
          <html xmlns="http://www.w3.org/1999/xhtml">
            <p>FORMULA: C10H12N5O10P2</p>
            <p>BioCyc: META:ADP;META:ADP-GROUP</p>
            <p>SEED Compound: cpd00008</p>
            <p>UniPathway Compound: UPC00008</p>
            <p>KEGG Compound: C00008;G11113</p>
            <p>BioPath Molecule: Adenosine-5-prime-diphosphate</p>
            <p>MetaNetX (MNX) Chemical: MNXM7</p>
            <p>Reactome: 113581;113582;114565;211606;29370;5632457</p>
            <p>Human Metabolome Database: HMDB01341</p>
          </html>
        </notes>
      </species>
      <species id="M_atp_c" name="ATP" compartment="C_c" hasOnlySubstanceUnits="true">
        <notes>
          <html xmlns="http://www.w3.org/1999/xhtml">
            <p>FORMULA: C10H12N5O13P3</p>
            <p>BioCyc: META:ATP</p>
            <p>SEED Compound: cpd00002</p>
            <p>UniPathway Compound: UPC00002</p>
            <p>KEGG Compound: C00002;D08646</p>
            <p>BioPath Molecule: Adenosine-5-prime-triphosphate</p>
            <p>MetaNetX (MNX) Chemical: MNXM3</p>
            <p>Reactome: 211579;389573</p>
            <p>Human Metabolome Database: HMDB00538</p>
          </html>
        </notes>
      </species>
...
```
      
 </details>

Press the `q` key to stop viewing the file.

# 🦠 Bacterial model
    
Use `less` to view and scroll through the contents of the bacterial model.

```bash
$ less $ROOT/models/bacteria.xml
```
<details>
    <summary>Click to see bacterial model</summary>
    
```bash
<?xml version="1.0" encoding="UTF-8"?>
<sbml xmlns="http://www.sbml.org/sbml/level3/version1/core" level="3" version="1">
  <model id="cremoris_ref2">
    <listOfCompartments>
      <compartment id="C_c" name="cytosol" size="1" constant="true"/>
      <compartment id="C_p" name="periplasm" size="1" constant="true"/>
      <compartment id="C_e" name="extracellular space" size="1" constant="true"/>
    </listOfCompartments>
    <listOfSpecies>
      <species id="M_10fthf_c" name="10-Formyltetrahydrofolate" compartment="C_c" hasOnlySubstanceUnits="true">
        <notes>
          <html xmlns="http://www.w3.org/1999/xhtml">
            <p>FORMULA: C20H21N7O7</p>
            <p>BioCyc: META:10-FORMYL-THF</p>
            <p>SEED Compound: cpd00201</p>
            <p>UniPathway Compound: UPC00234</p>
            <p>KEGG Compound: C00234</p>
            <p>BioPath Molecule: 10-Formyl-5,6,7,8-tetrahydrofolate</p>
            <p>MetaNetX (MNX) Chemical: MNXM237</p>
            <p>Reactome: 419151;5389850</p>
            <p>Human Metabolome Database: HMDB00972</p>
          </html>
        </notes>
      </species>
      <species id="M_adp_c" name="ADP" compartment="C_c" hasOnlySubstanceUnits="true">
        <notes>
          <html xmlns="http://www.w3.org/1999/xhtml">
            <p>FORMULA: C10H12N5O10P2</p>
            <p>BioCyc: META:ADP;META:ADP-GROUP</p>
            <p>SEED Compound: cpd00008</p>
            <p>UniPathway Compound: UPC00008</p>
            <p>KEGG Compound: C00008;G11113</p>
            <p>BioPath Molecule: Adenosine-5-prime-diphosphate</p>
            <p>MetaNetX (MNX) Chemical: MNXM7</p>
            <p>Reactome: 113581;113582;114565;211606;29370;5632457</p>
            <p>Human Metabolome Database: HMDB01341</p>
          </html>
        </notes>
      </species>
      <species id="M_atp_c" name="ATP" compartment="C_c" hasOnlySubstanceUnits="true">
        <notes>
          <html xmlns="http://www.w3.org/1999/xhtml">
            <p>FORMULA: C10H12N5O13P3</p>
            <p>BioCyc: META:ATP</p>
            <p>SEED Compound: cpd00002</p>
            <p>UniPathway Compound: UPC00002</p>
            <p>KEGG Compound: C00002;D08646</p>
            <p>BioPath Molecule: Adenosine-5-prime-triphosphate</p>
            <p>MetaNetX (MNX) Chemical: MNXM3</p>
            <p>Reactome: 211579;389573</p>
            <p>Human Metabolome Database: HMDB00538</p>
          </html>
        </notes>
      </species>
...
```
      
</details>


Press the `q` key to stop viewing the file.

# 🗺️ Explore the models visually

While this can be informative for some quick inspection, we may also visualize these metabolic models using web-based tools such as [fluxer](https://fluxer.umbc.edu/). Upload the bacteria and/or yeast model and have a look around!

# 🥫 Inspect the media composition

Use `paste` to view the contents of the `media.tsv` file

```bash
$ paste $ROOT/media.tsv
```
<details>
    <summary>Click to see media file</summary>
  
https://github.com/franciscozorrilla/EMBOMicroCom/blob/3971c20ebac08381a8667868cc52ddbccb4fc077/media.tsv#L1-L172    
    
</details>


Search the [BiGG database](http://bigg.ucsd.edu/) to learn more about specific metabolites name and identifiers.

If you are feeling adventurous, come up with your own media composition/variation for simulation to be used in the following exercise! 

# 💎 Discussion questions

* What are GEMs and how can they be used? What is FBA? What is SBML?
* How many reactions and metabolites are present in the yeast model? What about the bacterial model?
* How were these models reconstructed? To what extent is there metabolic compartmentalization?
* What classes of metabolites are present in the media compositions? What is different across the media variations?
* Is the yeast model gapfilled on a particular media?
* What compound does the BiGG ID `pnto__R` represent?

## Move on to [exercise 2](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_2.md)
