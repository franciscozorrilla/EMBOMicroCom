# 🧫 3. Explore effect of interactions as a function of media composition

We have already simulated the effect of switching carbon sources on the metabolic interactions. In this exercise we will further explore modifications to the media by tweaking components such as amino acids, vitamins, and ions.

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
  
 </details>


## 💎 Discussion questions

## Move on to [exercise 4](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_4.md)
