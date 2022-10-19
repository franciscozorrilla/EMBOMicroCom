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

  
# 🤝 SMETANA detailed algorithm enumerates all feasible interactions between metabolic networks

Refer to the [methods sections of the SMETANA paper](https://www.pnas.org/content/112/20/6449#sec-7) for details regarding the implementation of MILP probelms that are solved in order to compute the following:

1. The species coupling score (SCS) measures the dependence of growth of species A on species B (SCS<sub>A,B</sub>)
   - calculated by enumerating all possible community member subsets where species A can grow, SCS<sub>A,B</sub> is the fraction of subsets where both species A and B can grow.
2. The metabolite uptake score (MUS) measures the dependence of growth of species A on metabolite *m* (MUS<sub>A,*m*</sub>)
   - calculated by enumerating all possible metabolite requirement subsets where species A can grow, MUS<sub>A,*m*</sub> is the fraction of subsets where both species A grows and metabolite *m* is taken up.
3. The metabolite production score (MPS) is a binary score indicating whether a given species B can produce metabolite *m* (MPS = 1) or not (MPS = 0) in the community of N members (MPS<sub>B,*m*</sub>)
4. The SMETANA score ranges from 0 to 1
   - measures how strongly a receiver species relies on a donor species for a particular metabolite
   - SMETANA<sub>A,B,*m*</sub> = SCS<sub>A,B</sub> * MUS<sub>A,*m*</sub> * MPS<sub>B,*m*</sub>

# 🥼 Run 3 computational experiments

Run each simulation on your own machine as shown in the following code chunks.

# 🐄 CDM35 with lactose as main carbon source

```bash
$ smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_lcts -o $ROOT/CDM35_lcts $ROOT/models/*.xml && paste $ROOT/CDM35_lcts_detailed.tsv 
```
  
# 🍬 CDM35 with glucose as main carbon source

```bash
$ smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_glc -o $ROOT/CDM35_glc $ROOT/models/*.xml && paste $ROOT/CDM35_glc_detailed.tsv 
```

# 🌌 CDM35 with galactose as main carbon source

```bash
$ smetana -d -v --flavor cobra --mediadb $ROOT/media.tsv -m CDM35_gal -o $ROOT/CDM35_gal $ROOT/models/*.xml && paste $ROOT/CDM35_gal_detailed.tsv 
```

# 📺 Visualizing interactions

Alluvial diagrams, AKA sankey or flow diagrams, are a quick and easy way to visualize interaction predictions generated by SMETANA. We provide the following Rscript to be used for plotting your generated results. 

<details>
    <summary>Click to see Rscript</summary>

https://github.com/franciscozorrilla/EMBOMicroCom/blob/905fb9fc674d2af731fc978079597f6027b15c1a/plot_interactions.R#L1-L23

  </details>

To start plotting your own data, open Rstudio and navigate to your `$ROOT` folder in the bottom right file explorer. Click on the little gear button labeled `More` and set your current folder as the working directory. Then click on the `plot_interactions.R` script, which should bring up the code. Now you may run the script with the default parameters to generate an alluvial diagram.
    
The script is hardcoded to read the CDM35 lactose SMETANA results file `CDM35_lcts_detailed.tsv` and plot to a file called `CDM35_lcts.pdf`. After generating prediction for each media condition, modify these parameters to read in and generate plots for each of the above experimental conditions. You may also have a look at some [precomputed results](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/precomputed_simulations.md) for comparison, or if you run into any trouble generating results of your own.

# 💎 Discussion questions
* How does switching carbon source affect the metabolic interactions between yeast and bacteria?
* To what extent do these predicted interactions reflect those experimentally verified in the case study publication?
* Come up with some variation of CDM35 media by removing glucose/lactose/galactose and adding a new carbon source, e.g. trehalose, maltose, etc. Then enumerate interactions with SMETANA in that media, plot, and compare the interactions to the simulations above. How do the interactions look? Was there something unexpected?

## Move on to [exercise 3](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_3.md)
