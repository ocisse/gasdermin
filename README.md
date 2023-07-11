gasdermin
==============================

gasdermin molecular evolution

Description of project:
The gasdermin family is a family of pore-forming proteins that includes six members, gasdermins A-E and pejvakin. This family has been identified as the effector of pyroptosis, which is programmed lytic cell death this is an essential mechanism in innate defense against infection and which has been implicated in a diverse array of inflammatory conditions. So far, gasdermin D, gasdermin E, and gasdermin B have all been identified to become activated upon cleavage of the linker region, separating the pore-forming N-terminal domain and regulatory C-terminal domain. Pejvakin, the one gasdermin family member not associated with pyroptosis and whose C-terminal domain is atypical, may be activated by ROS. No activation mechanism has been identified for gasdermin A or C. We want to pursue an evolutionary analysis of this family of proteins and put it in the context of known facts regarding individual members of the family to gain new insights into the role of this family throughout evolution.

Scope of project:
We will collect sequences, perform a multiple sequence alignment, and generate a tree displaying the evolutionary relationship between known members of the gasdermin family. We will then use information that we already know regarding the gasdermin family (like known cleavage sites) to provide additional context to evolutionary relationships that we observe

Goals of project:
1. Better understand the evolutionary development of the gasdermin family as the family diversified to provide new context for the environment that helped shaped host-pathogen interactions 
2. Gain insights into the function and activation mechanisms of the members of the gasdermin family by combining molecular evolution analyses with known facts regarding members of this family
3. Improve our understanding of the importance of gasdermin-related immune defense in animals, particularly relating it to the caspase family of proteases
4. Create tools for future reference for generating or supporting hypotheses regarding potentially important residues in the protein based on our work or that of others’ work

Initial analysis performed by Stephen Kovacs:
Data collection:
Searched for sequences via RefSeq database using PubMed
Search terms used for each member:
Gsdma: Gsdma*
Gsdmb: Gsdmb*
Gsdmc: Gsdmc* OR Mlze*
Gsdmd: Gsdmd*
Gsdme: Gsdme* OR Dfna5*
Pjvk: Pjvk* OR Dfnb59* OR Gsdmf*

Initial exclusion criteria:
Designated “LOW QUALITY PROTEIN” or “PARTIAL”
Isoform chosen based on homology with other members of family

Alignment program: 
ClustalO

PhyML treebuilding through Seaview. 
Tree building program setting:

 Sequence filename:				 seaview.PmxVfA.phy
                . Data type:					 aa
                . Alphabet size:				 20
                . Sequence format:				 interleaved
                . Number of data sets:				 1
                . Nb of bootstrapped data sets:			 0
                . Compute approximate likelihood ratio test:	 yes (SH-like branch supports)
                . Model name:					 LG
                . Proportion of invariable sites:		 0.000000
                . Number of subst. rate categs:			 4
                . Gamma distribution parameter:			 estimated
                . 'Middle' of each rate class:			 mean
                . Amino acid equilibrium frequencies:		 model
                . Optimise tree topology:			 yes
                . Tree topology search:				 Best of NNIs and SPRs
                . Starting tree:				 BioNJ
                . Add random input tree:			 no
                . Optimise branch lengths:			 yes
                . Optimise substitution model parameters:	 yes
                . Run ID:					 none
                . Random seed:					 1588509090
                . Subtree patterns aliasing:			 no
                . Version:					 20120412

. Log likelihood obtained after NNI moves : -212111.095585
. Log likelihood obtained after SPR moves : -212112.217775

. Log likelihood of the current tree: -212111.095585.

Final treebuilding visualization:
Figtree v1.4.4


Project Organization (outdated - TBU)
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.readthedocs.io


--------

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>
