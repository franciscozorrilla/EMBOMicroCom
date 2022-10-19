# 🍯 Example results

As the title suggests, these are example of what the SMETANA output may look like.
Differences between your own results and these scores are likely due to solver instability and the existence of multiple alternative solutions.

### 🐄 CDM35 with lactose as main carbon source

```bash
$ smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_lcts -o $ROOT/CDM35_lcts $ROOT/models/*.xml && paste $ROOT/CDM35_lcts_detailed.tsv 
```
<details>
    <summary>Click to see results</summary>

```bash
Loading community: all
Running SCS for community all on medium CDM35_lcts...
Running MUS for community all on medium CDM35_lcts...
Running MPS for community all on medium CDM35_lcts...
Done.
community	medium	receiver	donor	compound	scs	mus	mps	smetana
all	CDM35_lcts	bacteria	yeast	M_acald_e	1.0	0.01	1	0.01
all	CDM35_lcts	bacteria	yeast	M_glu__L_e	1.0	0.21	1	0.21
all	CDM35_lcts	bacteria	yeast	M_pnto__R_e	1.0	1.0	1	1.0
all	CDM35_lcts	bacteria	yeast	M_pro__L_e	1.0	0.01	1	0.01
all	CDM35_lcts	bacteria	yeast	M_ser__L_e	1.0	0.05	1	0.05
all	CDM35_lcts	bacteria	yeast	M_thr__L_e	1.0	0.03	1	0.03
all	CDM35_lcts	yeast	bacteria	M_4abut_e	1.0	0.05	1	0.05
all	CDM35_lcts	yeast	bacteria	M_ac_e	1.0	0.03	1	0.03
all	CDM35_lcts	yeast	bacteria	M_dha_e	1.0	0.12	1	0.12
all	CDM35_lcts	yeast	bacteria	M_gal_e	1.0	0.52	1	0.52
all	CDM35_lcts	yeast	bacteria	M_glc__D_e	1.0	0.36	1	0.36
all	CDM35_lcts	yeast	bacteria	M_glu__L_e	1.0	0.03	1	0.03
all	CDM35_lcts	yeast	bacteria	M_phe__L_e	1.0	0.02	1	0.02
all	CDM35_lcts	yeast	bacteria	M_pro__L_e	1.0	0.02	1	0.02
all	CDM35_lcts	yeast	bacteria	M_ser__L_e	1.0	0.03	1	0.03
all	CDM35_lcts	yeast	bacteria	M_trp__L_e	1.0	0.01	1	0.01
```

![image](https://user-images.githubusercontent.com/35606471/195675774-546114c7-4ab8-407b-a651-82eab329adf1.png)
<p align = "center">
Fig.2 - Alluvial diagram of SMETANA scores >= 0.2 predicted in CDM35 media with lactose as carbon source between yeast and bacteria
</p>
    
 </details>

  
### 🍬 CDM35 with glucose as main carbon source

```bash
$ smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_glc -o $ROOT/CDM35_glc $ROOT/models/*.xml && paste $ROOT/CDM35_glc_detailed.tsv 
```
<details>
    <summary>Click to see results</summary>
  
```
Loading community: all
Running SCS for community all on medium CDM35_glc...
Running MUS for community all on medium CDM35_glc...
Running MPS for community all on medium CDM35_glc...
Done.
community	medium	receiver	donor	compound	scs	mus	mps	smetana
all	CDM35_glc	bacteria	yeast	M_acald_e	1.0	0.05	1	0.05
all	CDM35_glc	bacteria	yeast	M_anhgm_e	1.0	0.32	1	0.32
all	CDM35_glc	bacteria	yeast	M_glu__L_e	1.0	0.07	1	0.07
all	CDM35_glc	bacteria	yeast	M_glyc_e	1.0	0.01	1	0.01
all	CDM35_glc	bacteria	yeast	M_glyclt_e	1.0	0.02	1	0.02
all	CDM35_glc	bacteria	yeast	M_lac__L_e	1.0	0.09	1	0.09
all	CDM35_glc	bacteria	yeast	M_phe__L_e	1.0	0.01	1	0.01
all	CDM35_glc	bacteria	yeast	M_pnto__R_e	1.0	1.0	1	1.0
all	CDM35_glc	bacteria	yeast	M_pro__L_e	1.0	0.02	1	0.02
all	CDM35_glc	bacteria	yeast	M_pyr_e	1.0	0.07	1	0.07
all	CDM35_glc	bacteria	yeast	M_ser__L_e	1.0	0.2	1	0.2
all	CDM35_glc	bacteria	yeast	M_thr__L_e	1.0	0.03	1	0.03
all	CDM35_glc	bacteria	yeast	M_uaagmda_e	1.0	0.92	1	0.92
```

![image](https://user-images.githubusercontent.com/35606471/195675906-9efd551a-2b23-4c45-9cc2-6c89d28f2ea4.png)
<p align = "center">
Fig.3 - Alluvial diagram of SMETANA scores >= 0.2 predicted in CDM35 media with glucose as carbon source between yeast and bacteria
</p>
    
 </details>

### 🌌 CDM35 with galactose as main carbon source

```bash
$ smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_gal -o $ROOT/CDM35_gal $ROOT/models/*.xml && paste $ROOT/CDM35_gal_detailed.tsv 
```
<details>
    <summary>Click to see results</summary>

```
Loading community: all
Running SCS for community all on medium CDM35_gal...
Running MUS for community all on medium CDM35_gal...
Running MPS for community all on medium CDM35_gal...
Done.
community	medium	receiver	donor	compound	scs	mus	mps	smetana
all	CDM35_gal	bacteria	yeast	M_acald_e	1.0	0.02	1	0.02
all	CDM35_gal	bacteria	yeast	M_anhgm_e	1.0	0.46	1	0.46
all	CDM35_gal	bacteria	yeast	M_glu__L_e	1.0	0.16	1	0.16
all	CDM35_gal	bacteria	yeast	M_glyc_e	1.0	0.01	1	0.01
all	CDM35_gal	bacteria	yeast	M_glyclt_e	1.0	0.01	1	0.01
all	CDM35_gal	bacteria	yeast	M_lac__L_e	1.0	0.12	1	0.12
all	CDM35_gal	bacteria	yeast	M_phe__L_e	1.0	0.02	1	0.02
all	CDM35_gal	bacteria	yeast	M_pnto__R_e	1.0	1.0	1	1.0
all	CDM35_gal	bacteria	yeast	M_pro__L_e	1.0	0.08	1	0.08
all	CDM35_gal	bacteria	yeast	M_pyr_e	1.0	0.01	1	0.01
all	CDM35_gal	bacteria	yeast	M_ser__L_e	1.0	0.04	1	0.04
all	CDM35_gal	bacteria	yeast	M_thr__L_e	1.0	0.05	1	0.05
all	CDM35_gal	bacteria	yeast	M_trp__L_e	1.0	0.01	1	0.01
all	CDM35_gal	bacteria	yeast	M_uaagmda_e	1.0	0.82	1	0.82
```

![image](https://user-images.githubusercontent.com/35606471/195675857-e405537f-f64d-4fff-9889-94ff50a47901.png)
<p align = "center">
Fig.4 - Alluvial diagram of SMETANA scores >= 0.2 predicted in CDM35 media with galactose as carbon source between yeast and bacteria
</p>
    
 </details>
 

## 🥦 Low amino acid environment with lactose as carbon source

First, let's see what would happen in a low amino acid environment. We have already created a modified CDM35 with lactose as a carbon source and without all amino acids except for Valine. Note that ornithine and nh4 are also present as nitrogen sources.


```bash
$ smetana -v -d --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_low_AA_lcts -o $ROOT/CDM35_low_AA_lcts $ROOT/models/*.xml && paste $ROOT/CDM35_low_AA_lcts_detailed.tsv
```
<details>
    <summary>Click to see results</summary>
  
```bash
Loading community: all
Running SCS for community all on medium CDM35_low_AA_lcts...
Running MUS for community all on medium CDM35_low_AA_lcts...
Running MPS for community all on medium CDM35_low_AA_lcts...
Done.
community	medium	receiver	donor	compound	scs	mus	mps	smetana
all	CDM35_low_AA_lcts	bacteria	yeast	M_acald_e	1.0	0.01	1	0.01
all	CDM35_low_AA_lcts	bacteria	yeast	M_ala__L_e	1.0	0.12	1	0.12
all	CDM35_low_AA_lcts	bacteria	yeast	M_asp__L_e	1.0	0.07	1	0.07
all	CDM35_low_AA_lcts	bacteria	yeast	M_glu__L_e	1.0	0.07	1	0.07
all	CDM35_low_AA_lcts	bacteria	yeast	M_pro__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_lcts	bacteria	yeast	M_pyr_e	1.0	0.02	1	0.02
all	CDM35_low_AA_lcts	bacteria	yeast	M_ser__L_e	1.0	0.1	1	0.1
all	CDM35_low_AA_lcts	yeast	bacteria	M_4abut_e	1.0	0.03	1	0.03
all	CDM35_low_AA_lcts	yeast	bacteria	M_ac_e	1.0	0.03	1	0.03
all	CDM35_low_AA_lcts	yeast	bacteria	M_acald_e	1.0	0.01	1	0.01
all	CDM35_low_AA_lcts	yeast	bacteria	M_actn__R_e	1.0	0.03	1	0.03
all	CDM35_low_AA_lcts	yeast	bacteria	M_ala__L_e	1.0	0.21	1	0.21
all	CDM35_low_AA_lcts	yeast	bacteria	M_arg__L_e	1.0	0.58	1	0.58
all	CDM35_low_AA_lcts	yeast	bacteria	M_asn__L_e	1.0	0.02	1	0.02
all	CDM35_low_AA_lcts	yeast	bacteria	M_asp__L_e	1.0	0.02	1	0.02
all	CDM35_low_AA_lcts	yeast	bacteria	M_dha_e	1.0	0.02	1	0.02
all	CDM35_low_AA_lcts	yeast	bacteria	M_gal_e	1.0	0.36	1	0.36
all	CDM35_low_AA_lcts	yeast	bacteria	M_glc__D_e	1.0	0.63	1	0.63
all	CDM35_low_AA_lcts	yeast	bacteria	M_his__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_lcts	yeast	bacteria	M_ile__L_e	1.0	1.0	1	1.0
all	CDM35_low_AA_lcts	yeast	bacteria	M_leu__L_e	1.0	0.12	1	0.12
all	CDM35_low_AA_lcts	yeast	bacteria	M_met__L_e	1.0	0.02	1	0.02
all	CDM35_low_AA_lcts	yeast	bacteria	M_phe__L_e	1.0	0.04	1	0.04
all	CDM35_low_AA_lcts	yeast	bacteria	M_pyr_e	1.0	0.01	1	0.01
all	CDM35_low_AA_lcts	yeast	bacteria	M_ser__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_lcts	yeast	bacteria	M_trp__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_lcts	yeast	bacteria	M_tyr__L_e	1.0	1.0	1	1.0
```

![image](https://user-images.githubusercontent.com/35606471/195836323-74dbbc1e-be2d-48d7-b33d-c17f69e79b31.png)
<p align = "center">
Fig.5 - Alluvial diagram of SMETANA scores >= 0.2 predicted in CDM35 media with low amino acids and lactose as carbon source between yeast and bacteria
</p>
    
 </details>

  
## 🍅 Low amino acid environment with glucose as carbon source

Now let's see what would happen in a low amino acid environment (only valine) with glucose as a carbon source. Note that ornithine and nh4 are also present as nitrogen sources.

```bash
$ smetana -v -d --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_low_AA_glc -o $ROOT/CDM35_low_AA_glc $ROOT/models/*.xml && paste $ROOT/CDM35_low_AA_glc_detailed.tsv
```
<details>
    <summary>Click to see results</summary>
  
```bash
Loading community: all
Running SCS for community all on medium CDM35_low_AA_glc...
Running MUS for community all on medium CDM35_low_AA_glc...
Running MPS for community all on medium CDM35_low_AA_glc...
Done.
community	medium	receiver	donor	compound	scs	mus	mps	smetana
all	CDM35_low_AA_glc	bacteria	yeast	M_acald_e	1.0	0.37	1	0.37
all	CDM35_low_AA_glc	bacteria	yeast	M_ala__L_e	1.0	0.36	1	0.36
all	CDM35_low_AA_glc	bacteria	yeast	M_anhgm_e	1.0	0.24	1	0.24
all	CDM35_low_AA_glc	bacteria	yeast	M_asp__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_glc	bacteria	yeast	M_glu__L_e	1.0	0.11	1	0.11
all	CDM35_low_AA_glc	bacteria	yeast	M_glyc_e	1.0	0.01	1	0.01
all	CDM35_low_AA_glc	bacteria	yeast	M_glyclt_e	1.0	0.02	1	0.02
all	CDM35_low_AA_glc	bacteria	yeast	M_his__L_e	1.0	0.07	1	0.07
all	CDM35_low_AA_glc	bacteria	yeast	M_met__L_e	1.0	0.07	1	0.07
all	CDM35_low_AA_glc	bacteria	yeast	M_phe__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_glc	bacteria	yeast	M_pnto__R_e	1.0	1.0	1	1.0
all	CDM35_low_AA_glc	bacteria	yeast	M_ser__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_glc	bacteria	yeast	M_thr__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_glc	bacteria	yeast	M_uaagmda_e	1.0	0.4	1	0.4
all	CDM35_low_AA_glc	yeast	bacteria	M_4abut_e	1.0	0.02	1	0.02
all	CDM35_low_AA_glc	yeast	bacteria	M_ac_e	1.0	0.1	1	0.1
all	CDM35_low_AA_glc	yeast	bacteria	M_acald_e	1.0	0.02	1	0.02
all	CDM35_low_AA_glc	yeast	bacteria	M_ala__L_e	1.0	0.08	1	0.08
all	CDM35_low_AA_glc	yeast	bacteria	M_arg__L_e	1.0	0.86	1	0.86
all	CDM35_low_AA_glc	yeast	bacteria	M_asn__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_glc	yeast	bacteria	M_asp__L_e	1.0	0.02	1	0.02
all	CDM35_low_AA_glc	yeast	bacteria	M_dha_e	1.0	0.03	1	0.03
all	CDM35_low_AA_glc	yeast	bacteria	M_gal_e	1.0	0.29	1	0.29
all	CDM35_low_AA_glc	yeast	bacteria	M_his__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_glc	yeast	bacteria	M_ile__L_e	1.0	1.0	1	1.0
all	CDM35_low_AA_glc	yeast	bacteria	M_leu__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_glc	yeast	bacteria	M_met__L_e	1.0	0.02	1	0.02
all	CDM35_low_AA_glc	yeast	bacteria	M_pro__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_glc	yeast	bacteria	M_ser__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_glc	yeast	bacteria	M_trp__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_glc	yeast	bacteria	M_tyr__L_e	1.0	1.0	1	1.0
```

![image](https://user-images.githubusercontent.com/35606471/195836394-8a81221d-1788-4964-8d03-65e94110b285.png)
<p align = "center">
Fig.6 - Alluvial diagram of SMETANA scores >= 0.2 predicted in CDM35 media with low amino acids and glucose as carbon source between yeast and bacteria
</p>
        
    
 </details>

  
## 🍆 Low amino acid environment with galactose as carbon source

Now let's see what would happen in a low amino acid environment (only valine) with galactose as a carbon source. Note that ornithine and nh4 are also present as nitrogen sources.

```bash
$ smetana -v -d --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_low_AA_gal -o $ROOT/CDM35_low_AA_gal $ROOT/models/*.xml && paste $ROOT/CDM35_low_AA_gal_detailed.tsv
```
<details>
    <summary>Click to see results</summary>
  
```bash
Loading community: all
Running SCS for community all on medium CDM35_low_AA_gal...
Running MUS for community all on medium CDM35_low_AA_gal...
Running MPS for community all on medium CDM35_low_AA_gal...
Done.
community	medium	receiver	donor	compound	scs	mus	mps	smetana
all	CDM35_low_AA_gal	bacteria	yeast	M_acald_e	1.0	0.05	1	0.05
all	CDM35_low_AA_gal	bacteria	yeast	M_ala__L_e	1.0	0.37	1	0.37
all	CDM35_low_AA_gal	bacteria	yeast	M_anhgm_e	1.0	0.26	1	0.26
all	CDM35_low_AA_gal	bacteria	yeast	M_asn__L_e	1.0	0.06	1	0.06
all	CDM35_low_AA_gal	bacteria	yeast	M_asp__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_gal	bacteria	yeast	M_glu__L_e	1.0	0.13	1	0.13
all	CDM35_low_AA_gal	bacteria	yeast	M_glyc_e	1.0	0.01	1	0.01
all	CDM35_low_AA_gal	bacteria	yeast	M_glyclt_e	1.0	0.03	1	0.03
all	CDM35_low_AA_gal	bacteria	yeast	M_lac__L_e	1.0	0.12	1	0.12
all	CDM35_low_AA_gal	bacteria	yeast	M_leu__L_e	1.0	0.08	1	0.08
all	CDM35_low_AA_gal	bacteria	yeast	M_met__L_e	1.0	0.19	1	0.19
all	CDM35_low_AA_gal	bacteria	yeast	M_phe__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_gal	bacteria	yeast	M_pnto__R_e	1.0	1.0	1	1.0
all	CDM35_low_AA_gal	bacteria	yeast	M_pro__L_e	1.0	0.04	1	0.04
all	CDM35_low_AA_gal	bacteria	yeast	M_ser__L_e	1.0	0.26	1	0.26
all	CDM35_low_AA_gal	bacteria	yeast	M_thr__L_e	1.0	0.06	1	0.06
all	CDM35_low_AA_gal	bacteria	yeast	M_uaagmda_e	1.0	0.96	1	0.96
all	CDM35_low_AA_gal	yeast	bacteria	M_4abut_e	1.0	0.02	1	0.02
all	CDM35_low_AA_gal	yeast	bacteria	M_ac_e	1.0	0.08	1	0.08
all	CDM35_low_AA_gal	yeast	bacteria	M_acald_e	1.0	0.06	1	0.06
all	CDM35_low_AA_gal	yeast	bacteria	M_actn__R_e	1.0	0.02	1	0.02
all	CDM35_low_AA_gal	yeast	bacteria	M_ala__L_e	1.0	0.05	1	0.05
all	CDM35_low_AA_gal	yeast	bacteria	M_arg__L_e	1.0	0.93	1	0.93
all	CDM35_low_AA_gal	yeast	bacteria	M_asn__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_gal	yeast	bacteria	M_asp__L_e	1.0	0.02	1	0.02
all	CDM35_low_AA_gal	yeast	bacteria	M_dha_e	1.0	0.41	1	0.41
all	CDM35_low_AA_gal	yeast	bacteria	M_glu__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_gal	yeast	bacteria	M_his__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_gal	yeast	bacteria	M_ile__L_e	1.0	1.0	1	1.0
all	CDM35_low_AA_gal	yeast	bacteria	M_leu__L_e	1.0	0.12	1	0.12
all	CDM35_low_AA_gal	yeast	bacteria	M_met__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_gal	yeast	bacteria	M_phe__L_e	1.0	0.06	1	0.06
all	CDM35_low_AA_gal	yeast	bacteria	M_ser__L_e	1.0	0.01	1	0.01
all	CDM35_low_AA_gal	yeast	bacteria	M_trp__L_e	1.0	0.03	1	0.03
all	CDM35_low_AA_gal	yeast	bacteria	M_tyr__L_e	1.0	1.0	1	1.0
```

![image](https://user-images.githubusercontent.com/35606471/195836464-f97066c7-2833-43f9-aac7-02dbfd6d7131.png)
<p align = "center">
Fig.7- Alluvial diagram of SMETANA scores >= 0.2 predicted in CDM35 media with low amino acids and galactose as carbon source between yeast and bacteria
</p>

 </details>

## 📺 Visualizing interactions

Alluvial diagrams, AKA sankey or flow diagrams, are a quick and easy way to visualize interaction predictions generated by SMETANA. We provide the following Rscript to be used for plotting your generated results. 

<details>
    <summary>Click to see Rscript</summary>

https://github.com/franciscozorrilla/EMBOMicroCom/blob/905fb9fc674d2af731fc978079597f6027b15c1a/plot_interactions.R#L1-L23

  </details>

To start plotting your own data, first open Rstudio by clicking on the bottom left icon and searching for Rstudio. Then click to navigate to your `$ROOT` folder in the bottom right file explorer. Click on the little gear button labeled `More` and set your current folder as the working directory. Then click on the `plot_interactions.R` script, which should bring up the code shown above. Now you may run the script with the default parameters to generate an alluvial diagram. The script is hardcoded to read the CDM35 lactose SMETANA results file `CDM35_lcts_detailed.tsv` and plot to a file called `CDM35_lcts.pdf`. After generating prediction for each media condition, modify these parameters to read in and generate plots for each of the above experimental conditions.
