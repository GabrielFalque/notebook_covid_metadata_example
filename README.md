# Analyse de données du SARS-CoV-2

## Lignées 

On a va étudier les métadonnées des séquences de SARS-CoV-2 prélevées en Afrique, faisant partie des lignées suivantes telles que définies par [Pangolin](https://cov-lineages.org/)
A, A.11, A.12, A.18, A.19, A.21, A.23, A.23.1, A.25, A.27, A.28, A.29, AY.1, AY.100, AY.106, AY.107, AY.108, AY.109, AY.111, AY.112

Elles sont stockées dans le fichier *lineages_of_interest.txt* et les métadonnées sous forme de tableau sont stockées dans le fichier *covid_example_metadata.tsv*.
Ces métadonnées peuvent être récupérées en exécutant les commandes suivantes sur son terminal. Il faut auparavant avoir activé son environnement conda où son invite de commande ncbi_datasets a été installée :

`bash execute_ncbi_lineages_search_africa.sh -i lineages_of_interest.txt -o covid_example_metadata.tsv`

## Jupyter notebook

Passez la partie installation si c'est déjà fait sur votre ordinateur.

### Installation

1. Installer Jupyter Notebook sur Windows :

Prérequis : Installer Python (via python.org ou Anaconda).
Commandes :
Ouvrez l'invite de commande (ou terminal Anaconda) et exécutez :

```
pip install notebook
jupyter notebook
```
    
2. Installer Jupyter Notebook sur Linux :

Prérequis : Assurez-vous que Python et pip sont installés.
Commandes :
Ouvrez un terminal et exécutez :

```
sudo apt update
sudo apt install python3-pip
pip install notebook
jupyter notebook
```

Dans les deux cas, Jupyter s'ouvrira dans le navigateur par défaut une fois la commande exécutée.

### Ouverture du notebook

Taper la commande suivante :

`jupyter notebook notebook_covid_metadata_example.ipynb`

### Utilisation du notebook 

On peut exécuter une cellule du notebook en tapant `Ctrl`+`Entrée` sur son clavier ou sur le sigle :arrow_forward: en haut du notebook.
On peut exécuter la totalité du notebook en cliquant en haut sur le sigle :fast_forward: en haut du notebook.

### Découverte du notebook

Je vous laisse regarder comment on peut traiter nos données en jetant un coup d'oeil au notebook et en l'exécutant.
