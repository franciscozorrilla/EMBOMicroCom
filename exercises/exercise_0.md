# 🏁 0. Start by cloning this repo

First open the terminal on your virtual machine. Click on the icon at the bottom left of the dekstop to show applications, then search for the terminal. 

Use the `git` command to download repo contents to your virtual machine. 

```bash
$ git clone https://github.com/franciscozorrilla/EMBOMicroCom.git
```
Copy the code above after the `$` into your terminal window.

<details>
    <summary>Click to see expected output</summary>

```bash
Cloning into 'EMBOMicroCom'...
remote: Enumerating objects: 38, done.
remote: Counting objects: 100% (38/38), done.
remote: Compressing objects: 100% (33/33), done.
remote: Total 38 (delta 11), reused 17 (delta 4), pack-reused 0
Receiving objects: 100% (38/38), 219.94 KiB | 670.00 KiB/s, done.
Resolving deltas: 100% (11/11), done.
```

  </details>

*Note*: if you use the built-in code-copy button make sure you delete the `$` before entering the commands in your terminal, otherwise you will get an error message such as 

```bash
$: command not found
```

## 💲 Running the code

In the following `.md` files, the dollar sign symbol within code chunks denotes lines of code that you should run in your terminal window, e.g.
```bash
$ echo "down here you can see the expected output of your commands"
```
<details>
    <summary>Click to see expected output</summary>

```bash
down here you can see the expected output of your commands
```
 </details>


Move into repo folder using `cd`
```bash
$ cd EMBOMicroCom
```

Set the variable `ROOT` as the root of your `EMBOMicroCom` repo 
```bash
$ ROOT=$(pwd)
```

To navigate to the root folder from your terminal from any directory
```bash
$ cd $ROOT
```

List contents of cloned repo using `ls`
```bash
$ ls $ROOT
```
<details>
    <summary>Click to see expected output</summary>

```bash
exercises  LICENSE  media.tsv  models  README.md
```
 </details>

  

# 🥛 Yeast - Lactic Acid Bacteria interactions

Familiarize yourself with the following case study involving *S. cerevisiae* and *L. lactis*:

* [Yeast Creates a Niche for Symbiotic Lactic Acid Bacteria through Nitrogen Overflow](https://www.sciencedirect.com/science/article/pii/S2405471217303903)

<p align="center"><img src="https://user-images.githubusercontent.com/35606471/195670251-b73df0b0-8694-49a2-a181-991fd6114016.png" /></p>
<p align = "center">
Fig.1 - Graphical abstract from Ponomarova et al. 2017
</p>


In the following exercises, we will use a simple two-species system described in the above publication to model metabolic interactions. In particular, we will focus on the interactions between *L. lactis* and *S. cerevisiae*

## 💎 Discussion questions

* Do you expect cross-feeding of metabolites between *S. cerevisiae* and *L. lactis*? If so, what metabolites?
* How do environmental media conditions influence metabolic interactions? Do you expect more or less interactions in rich vs minimal media?

## Move on to [exercise 1](https://github.com/franciscozorrilla/EMBOMicroCom/blob/main/exercises/exercise_1.md)
