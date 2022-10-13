# 🔄 2. Simulate community interactions between bacteria and yeast

## CDM35 with lactose as main carbon source

```bash
smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_lcts -o CDM35_lcts $ROOT/models/*.xml && paste CDM35_lcts_detailed.tsv 
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

## CDM35 with glucose as main carbon source

```bash
smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_glc -o CDM35_glc $ROOT/models/*.xml && paste CDM35_glc_detailed.tsv 
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

## CDM35 with galactose as main carbon source

```bash
smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_gal -o CDM35_gal $ROOT/models/*.xml && paste CDM35_gal_detailed.tsv 
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

## 💎 Discussion questions
* How does switching carbon source affect the metabolic interactions between yeast and bacteria?
* To what extent do these predicted interactions reflect those experimentally verified in the case study publication?

## Move on to [exercise 3](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_3.md)
