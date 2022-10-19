# 🧪 4. Generate metabolic models and predict interactions using your own genomes (BONUS)

By now you will know how to use CarveMe for reconstructing draft genome scale metabolic models, and SMETANA for predicting metabolite exchanges within microbial communities. 

To test what you have learned, grab some genomes from your chosen study system of interest (e.g. gut microbiome, bioreactor, biofilm, etc.) and reconstruct metabolic models with CarveMe. Then use those metabolic models with SMETANA to predict interactions.

In the following code chunks we will start from an NCBI genome, and also pull some pre-computed GEMs from GitHub to create a mock community, you may follow along to recreate the example or use your own genomes/GEMs.

# 🗣️ Translating genomes: from DNA to protein sequences

If your genomes are in the form of DNA fasta files, run prodigal to translate to protein and annotate open reading frames (ORFs).
Download a *Eubacterium rectale* genome from RefSeq using `wget`

```bash
$ wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/209/935/GCF_000209935.1_ASM20993v1/GCF_000209935.1_ASM20993v1_genomic.fna.gz
```
Use `gunzip` to unzip the file
```bash
$ gunzip GCF_000209935.1_ASM20993v1_genomic.fna.gz
```
Use `head` to view and verify the contents of the file
```bash
$ head GCF_000209935.1_ASM20993v1_genomic.fna
```
<details>
    <summary>Click to see genome</summary>
  
```bash
>NC_021010.1 Eubacterium rectale DSM 17629 draft genome
TGAATGAACGAATTAGCCAAGTTTAACTTGACTGAGATCAACTTTTAACATGAGAGTTTGATCCTGGCTCAGGATGAACG
CTGGCGGCGTGCTTAACACATGCAAGTCGAACGAAGCACTTTATTTGATTTCCTTCGGGACTGATTATTTTGTGACTGAG
TGGCGGACGGGTGAGTAACGCGTGGGTAACCTGCCTTGTACAGGGGGATAACAGTTGGAAACGGCTGCTAATACCGCATA
AGCGCACAGCATCGCATGATGCAGTGTGAAAAACTCCGGTGGTATAAGATGGACCCGCGTTGGATTAGCTAGTTGGTGAG
GTAACGGCCCACCAAGGCGACGATCCATAGCCGACCTGAGAGGGTGACCGGCCACATTGGGACTGAGACACGGCCCAAAC
TCCTACGGGAGGCAGCAGTGGGGAATATTGCACAATGGGCGAAAGCCTGATGCAGCGACGCCGCGTGAGCGAAGAAGTAT
TTCGGTATGTAAAGCTCTATCAGCAGGGAAGATAATGACGGTACCTGACTAAGAAGCACCGGCTAAATACGTGCCAGCAG
CCGCGGTAATACGTATGGTGCAAGCGTTATCCGGATTTACTGGGTGTAAAGGGAGCGCAGGCGGTGCGGCAAGTCTGATG
TGAAAGCCCGGGGCTCAACCCCGGTACTGCATTGGAAACTGTCGTACTAGAGTGTCGGAGGGGTAAGCGGAATTCCTAGT
```
 
  </details>


Run prodigal to generate ORF annotated protein fasta file desired for CarveMe input
```bash
$ prodigal -i GCF_000209935.1_ASM20993v1_genomic.fna -a proteins.faa
```

Use `tail` to verify contents of prodigal output

```bash
$ tail proteins.faa
```
<details>
    <summary>Click to see proteins</summary>
    
```bash
>NC_021010.1_3164 # 3343617 # 3344390 # 1 # ID=1_3164;partial=00;start_type=ATG;rbs_motif=AGGAGG;rbs_spacer=5-10bp;gc_cont=0.386
MSNAINVNYMTRAYNQYQQKNAAKDQEKEDTRFADSVREKSEASGSIVGNSKIGSVSAKD
MTMVEYKQYIYNKISQIPMHPTRAGESISVTISEAGFEAMKNDPEYEAWVLNDLQVGWSQ
PDKWSGICGGAFSTIYYGASKEECHAEMWSAGYNNGNGGKIFNDKSKNSFWERRIENKKR
IENQVKKQQEKKRIQKKQAERTAYEEYAQNKRLSAQDARTRLVAESSSSVKTVTISQAVA
SYEANFTMAVSVSNKTQ*
>NC_021010.1_3165 # 3344436 # 3344951 # 1 # ID=1_3165;partial=01;start_type=ATG;rbs_motif=AGGAG;rbs_spacer=5-10bp;gc_cont=0.341
MGINGVSSYANTYTYGNVKNENVKPSKNSEKNYYAGYTMNSANKFKNVSDYSKYLTNKYK
CLTPCKNASVLIDGSVMRKACGDEKTAKWLEENLAIMPDVIRNAQKAAISHGSKLISVEF
KFTNNGTEMTTCGIFGETGTDSEIDKWLERMKEDKEKEDKKTENMIAIEATT
```
    
 </details>


# 🪚 Use CarveMe to generate GEMs for a bacterial community

Refer to the CarveMe [documentation](https://carveme.readthedocs.io/en/latest/advanced.html#) for more details regarding advanced usage.

```bash
$ carve -h
```
<details>
    <summary>Click to see helpfile</summary>
    
```bash
usage: carve [-h] [--dna | --egg | --refseq] [--diamond-args DIAMOND_ARGS]
             [-r] [-o OUTPUT] [-u UNIVERSE | --universe-file UNIVERSE_FILE]
             [--cobra | --fbc2] [-n ENSEMBLE] [-g GAPFILL] [-i INIT]
             [--mediadb MEDIADB] [-v] [-d] [--soft SOFT] [--hard HARD]
             [--reference REFERENCE]
             INPUT [INPUT ...]

Reconstruct a metabolic model using CarveMe

positional arguments:
  INPUT                 Input (protein fasta file by default, see other options for details).
                        When used with -r an input pattern with wildcards can also be used.
                        When used with --refseq an NCBI RefSeq assembly accession is expected.

optional arguments:
  -h, --help            show this help message and exit
  --dna                 Build from DNA fasta file
  --egg                 Build from eggNOG-mapper output file
  --refseq              Download genome from NCBI RefSeq and build
  --diamond-args DIAMOND_ARGS
                        Additional arguments for running diamond
  -r, --recursive       Bulk reconstruction from folder with genome files
  -o OUTPUT, --output OUTPUT
                        SBML output file (or output folder if -r is used)
  -u UNIVERSE, --universe UNIVERSE
                        Pre-built universe model (default: bacteria)
  --universe-file UNIVERSE_FILE
                        Reaction universe file (SBML format)
  --cobra               Output SBML in old cobra format
  --fbc2                Output SBML in sbml-fbc2 format
  -n ENSEMBLE, --ensemble ENSEMBLE
                        Build model ensemble with N models
  -g GAPFILL, --gapfill GAPFILL
                        Gap fill model for given media
  -i INIT, --init INIT  Initialize model with given medium
  --mediadb MEDIADB     Media database file
  -v, --verbose         Switch to verbose mode
  -d, --debug           Debug mode: writes intermediate results into output files
  --soft SOFT           Soft constraints file
  --hard HARD           Hard constraints file
  --reference REFERENCE
                        Manually curated model of a close reference species.
```
    
 </details>


## 🔐 Key points

1. The top-down reconstruction approach
   - based on a universal and well-curated bacterial model, **carves** out a species specific model based on organism's genome.
2. The BiGG database
   - connects protein sequences with standardized and curated metabolic reaction [knowledgebase](http://bigg.ucsd.edu/).
3. The carving algorithm
   - is a mixed integer linear programming (MILP) formulation that maximizes presence of high genomic evidence reactions, minimizes the presence of low genomic evidence reactions, and enforces gapless pathways.
4. The gap-filling algorithm
   - uses genomic evidence scores to prioritize and minimize the number of added reactions needed to support growth on a given media composition.

Refer to the [methods sections of the CarveMe paper](https://academic.oup.com/nar/article/46/15/7542/5042022#121026410) for details regarding the implementation of MILP probelms that are solved for carving, ensemble generation, and gap filling.

Simple command to generate model from ORF-annotated protein fasta file generated above

```bash
$ carve -v -o erectale.xml proteins.faa
```

# 🏭 Download some pre-generated GEMs

You may download precomputed CarveMe models of your choosing from [this repository](https://github.com/cdanielmachado/embl_gems).

First create a folder and include the model we just created:

```bash
$ mkdir -p embl_gems && cd embl_gems && mv ../erectale.xml .
```

Download 3 models, you may modify the code to include your favorite species. We first use `wget` to download the models and `mv` to remove strange filename extensions.

```bash
$ wget https://github.com/cdanielmachado/embl_gems/blob/master/models/e/escherichia/Escherichia_coli_str_K_12_substr_MG1655.xml.gz?raw=true && mv Escherichia_coli_str_K_12_substr_MG1655.xml.gz?raw=true Escherichia_coli_str_K_12_substr_MG1655.xml.gz
$ wget https://github.com/cdanielmachado/embl_gems/blob/master/models/e/eubacterium/Eubacterium_rectale_ATCC_33656.xml.gz?raw=true && mv Eubacterium_rectale_ATCC_33656.xml.gz?raw=true Eubacterium_rectale_ATCC_33656.xml.gz
$ wget https://github.com/cdanielmachado/embl_gems/blob/master/models/b/bacteroides/Bacteroides_caccae_ATCC_43185.xml.gz?raw=true && mv Bacteroides_caccae_ATCC_43185.xml.gz?raw=true Bacteroides_caccae_ATCC_43185.xml.gz
```

Use `gunzip` to unzip models:

```bash
$ gunzip *.gz
```

# 🌻 Predicting interactions: from GEMs to metabolite exchanges

Use SMETANA to predict interactions. To avoid specifying a media, we use the `--molweight` flag that first determines a minimal media that can support cross-feeding interactions, and then enumerates them.

```bash
$ smetana -v -d --molweight -o embl_gems *.xml && paste embl_gems_detailed.tsv
```

Use SMETANA global algorithm with the `--debug` flag to create a media composition where the community will grow and interact.

```bash
$ smetana -v -g --debug --molweight *.xml && paste debug.tsv
```

Alternatively, try simulating you community on some other [existing media composition](https://github.com/franciscozorrilla/metaGEM/blob/master/scripts/media_db.tsv).

# 📺 Visualizing interactions

Alluvial diagrams, AKA sankey or flow diagrams, are a quick and easy way to visualize interaction predictions generated by SMETANA. We provide the following Rscript to be used for plotting your generated results. 

<details>
    <summary>Click to see Rscript</summary>

https://github.com/franciscozorrilla/EMBOMicroCom/blob/e6ae5ebea9feec8a92c6c861ccbda534c8858dda/plot_interactions.R#L1-L23

  </details>


To start plotting your own data, first open Rstudio by clicking on the bottom left icon and searching for Rstudio. Then click to navigate to your `$ROOT` folder in the bottom right file explorer. Click on the little gear button labeled `More` and set your current folder as the working directory. Then click on the `plot_interactions.R` script, which should bring up the code shown above. Now you may run the script with the default parameters to generate an alluvial diagram. The script is hardcoded to read the CDM35 lactose SMETANA results file `CDM35_lcts_detailed.tsv` and plot to a file called `CDM35_lcts.pdf`. After generating prediction for each media condition, modify these parameters to read in and generate plots for each of the above experimental conditions.

# 💎 The end

Over these metabolic modeling tutorials you have learned how to:
* Generate genome-scale metabolic models from genome fasta files using CarveMe
* Enumerate, visualize, and evaluate relevant metabolic interactions between species using SMETANA
* Model the influence of media composition on the predicted metabolic interactions between community members

If you are interested in more metabolic modeling tutorials visit [SymbNET](https://github.com/franciscozorrilla/SymbNET): From Metagenomics to Metabolic Interactions.
