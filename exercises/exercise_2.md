# 🕸️ 2. Simulate community interactions between bacteria and yeast

Refer to the SMETANA [documentation](https://smetana.readthedocs.io/en/latest/usage.html#) for more details regarding usage.

```bash
$ smetana -h
```
<details>
    <summary>Click to see helpfile</summary>
  
```

usage: smetana [-h] [-c COMMUNITIES.TSV] [-o OUTPUT] [--flavor FLAVOR]
               [-m MEDIA] [--mediadb MEDIADB]
               [-g | -d | -a ABIOTIC | -b BIOTIC] [-p P] [-n N] [-v] [-z]
               [--solver SOLVER] [--molweight] [--exclude EXCLUDE]
               [--no-coupling]
               MODELS [MODELS ...]

Calculate SMETANA scores for one or multiple microbial communities.

positional arguments:
  MODELS                
                        Multiple single-species models (one or more files).
                        
                        You can use wild-cards, for example: models/*.xml, and optionally protect with quotes to avoid automatic bash
                        expansion (this will be faster for long lists): "models/*.xml". 

optional arguments:
  -h, --help            show this help message and exit
  -c COMMUNITIES.TSV, --communities COMMUNITIES.TSV
                        
                        Run SMETANA for multiple (sub)communities.
                        The communities must be specified in a two-column tab-separated file with community and organism identifiers.
                        The organism identifiers should match the file names in the SBML files (without extension).
                        
                        Example:
                            community1	organism1
                            community1	organism2
                            community2	organism1
                            community2	organism3
                        
  -o OUTPUT, --output OUTPUT
                        Prefix for output file(s).
  --flavor FLAVOR       Expected SBML flavor of the input files (cobra or fbc2).
  -m MEDIA, --media MEDIA
                        Run SMETANA for given media (comma-separated).
  --mediadb MEDIADB     Media database file
  -g, --global          Run global analysis with MIP/MRO (faster).
  -d, --detailed        Run detailed SMETANA analysis (slower).
  -a ABIOTIC, --abiotic ABIOTIC
                        Test abiotic perturbations with given list of compounds.
  -b BIOTIC, --biotic BIOTIC
                        Test biotic perturbations with given list of species.
  -p P                  Number of components to perturb simultaneously (default: 1).
  -n N                  
                        Number of random perturbation experiments per community (default: 1).
                        Selecting n = 0 will test all single species/compound perturbations exactly once.
  -v, --verbose         Switch to verbose mode
  -z, --zeros           Include entries with zero score.
  --solver SOLVER       Change default solver (current options: 'gurobi', 'cplex').
  --molweight           Use molecular weight minimization (recomended).
  --exclude EXCLUDE     List of compounds to exclude from calculations (e.g.: inorganic compounds).
  --no-coupling         Don't compute species coupling scores.
```
 </details>

  
## 🤝 SMETANA detailed algorithm enumerates all feasible interactions between metabolic networks

Refer to the [methods sections of the SMETANA paper](https://www.pnas.org/content/112/20/6449#sec-7) for details regarding the implementation of MILP probelms that are solved in order to compute the following:

1. The species coupling score (SCS) measures the dependence of growth of species A on species B (SCS<sub>A,B</sub>)
   - calculated by enumerating all possible community member subsets where species A can grow, SCS<sub>A,B</sub> is the fraction of subsets where both species A and B can grow.
2. The metabolite uptake score (MUS) measures the dependence of growth of species A on metabolite *m* (MUS<sub>A,*m*</sub>)
   - calculated by enumerating all possible metabolite requirement subsets where species A can grow, MUS<sub>A,*m*</sub> is the fraction of subsets where both species A grows and metabolite *m* is taken up.
3. The metabolite production score (MPS) is a binary score indicating whether a given species B can produce metabolite *m* (MPS = 1) or not (MPS = 0) in the community of N members (MPS<sub>B,*m*</sub>)
4. The SMETANA score ranges from 0 to 1
   - measures how strongly a receiver species relies on a donor species for a particular metabolite
   - SMETANA<sub>A,B,*m*</sub> = SCS<sub>A,B</sub> * MUS<sub>A,*m*</sub> * MPS<sub>B,*m*</sub>

## 🤔 Your turn

Run each simulation on your own machine as shown in the following code chunks. Click on the arrows to see pre-computed results and check if they match your own output.

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


## 💎 Discussion questions
* How does switching carbon source affect the metabolic interactions between yeast and bacteria?
* To what extent do these predicted interactions reflect those experimentally verified in the case study publication?

## Move on to [exercise 3](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_3.md)
