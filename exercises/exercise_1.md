# 🔎 1. Inspect the metabolic models

In case you are not already familiar with genome-scale metabolic models (GEMs) and flux balance analysis (FBA), have a look through the following article:

* [Intro to FBA](https://www.nature.com/articles/nbt.1614): What is flux balance analysis?

While genome-scale metabolic models may appear complicated and mysterious at first, they exist in our computers as modest text files. Analogous to the [HTML format](https://en.wikipedia.org/wiki/HTML) used to describe websites, the SBML format can be used to describe the metabolism of organisms.

* Read about the [Systems Biology Markup Language](https://sbml.org/) (SBML) standard to familiarize yourself with the GEM format output of CarveMe. 

## 🍺 Yeast model

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

## 🦠 Bacterial model
    
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

## 🗺️ Explore the models visually

While this can be informative for some quick inspection, we may also visualize these metabolic models using web-based tools such as [fluxer](https://fluxer.umbc.edu/). Upload the bacteria and/or yeast model and have a look around!

## 🥫 Inspect the media composition

Use `paste` to view the contents of the `media.tsv` file

```bash
$ paste $ROOT/media.tsv
```
<details>
    <summary>Click to see media file</summary>
  
```bash
medium	description	compound	name
CDM35_lcts	CDM35_lcts	cl	cl
CDM35_lcts	CDM35_lcts	thm	thm
CDM35_lcts	CDM35_lcts	iodine	iodine
CDM35_lcts	CDM35_lcts	arg__L	arg__L
CDM35_lcts	CDM35_lcts	asn__L	asn__L
CDM35_lcts	CDM35_lcts	ca2	ca2
CDM35_lcts	CDM35_lcts	cobalt2	cobalt2
CDM35_lcts	CDM35_lcts	cu2	cu2
CDM35_lcts	CDM35_lcts	fe2	fe2
CDM35_lcts	CDM35_lcts	fe3	fe3
CDM35_lcts	CDM35_lcts	his__L	his__L
CDM35_lcts	CDM35_lcts	ile__L	ile__L
CDM35_lcts	CDM35_lcts	leu__L	leu__L
CDM35_lcts	CDM35_lcts	met__L	met__L
CDM35_lcts	CDM35_lcts	k	k
CDM35_lcts	CDM35_lcts	mg2	mg2
CDM35_lcts	CDM35_lcts	mn2	mn2
CDM35_lcts	CDM35_lcts	pi	pi
CDM35_lcts	CDM35_lcts	tyr__L	tyr__L
CDM35_lcts	CDM35_lcts	val__L	val__L
CDM35_lcts	CDM35_lcts	zn2	zn2
CDM35_lcts	CDM35_lcts	so4	so4
CDM35_lcts	CDM35_lcts	feenter	feenter
CDM35_lcts	CDM35_lcts	lcts	lcts
CDM35_lcts	CDM35_lcts	ala__L	ala__L
CDM35_lcts	CDM35_lcts	asp__L	asp__L
CDM35_lcts	CDM35_lcts	gly	gly
CDM35_lcts	CDM35_lcts	o2	o2
CDM35_lcts	CDM35_lcts	h2o	h2o
CDM35_lcts	CDM35_lcts	orn	orn
CDM35_lcts	CDM35_lcts	nh4	nh4
CDM35_lcts	CDM35_lcts	co2	co2
CDM35_lcts	CDM35_lcts	h	h
...
```
</details>


Search the [BiGG database](http://bigg.ucsd.edu/) to learn more about specific metabolites name and identifiers.

If you are feeling adventurous, come up with your own media composition/variation for simulation to be used in the following exercise! 

## 💎 Discussion questions

* What are GEMs and how can they be used? What is FBA?
* How many reactions and metabolites are present in the yeast model? What about the bacterial model?
* How were these models reconstructed? To what extent is there metabolic compartmentalization?
* What classes of metabolites are present in the media compositions? What is different across the media variations?
* Is the yeast model gapfilled on a particular media?

## Move on to [exercise 2](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_2.md)
