## Example results

As the title suggests, these are example of what the SMETANA output may look like.
Differences between your own results and these scores are likely the results of solver instability and multiple alternative solutions.

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
