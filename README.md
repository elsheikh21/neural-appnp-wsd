# Exploiting the WordNet Graph Globally by Integrating PageRank into Neural Word Sense Disambiguation
<!-- 
This repo hosts the work trying to achieve break the State of the Art (SOTA) in Word Sense Disambiguation (WSD) task by EWISER (Michele Bevilacqua & Roberto Navigli (2020)) by integrating their approach with Approximate Personalized Propagation of Neural Predictions (APPNP). 
-->

This repo hosts the code necessary to reproduce the results of our EMNLP 2021 paper, *Exploiting the Global WordNet Graph in Neural Word Sense Disambiguation by Integrating Personalized PageRank*, by Ahmed ElSheikh, Michele Bevilacqua and Roberto Navigli, which you can read on [EMNLP Anthology]().

This repository relies on the [`Simone's CODE`](https://github.com/sapienzaNLP/multilabel-wsd).

## How to Cite
```
@inproceedings{bevilacqua-navigli-2020-breaking,
    title = "Breaking Through the 80{\%} Glass Ceiling: {R}aising the State of the Art in Word Sense Disambiguation by Incorporating Knowledge Graph Information",
    author = "Bevilacqua, Michele  and Navigli, Roberto",
    booktitle = "Proceedings of the 58th Annual Meeting of the Association for Computational Linguistics",
    month = jul,
    year = "2020",
    address = "Online",
    publisher = "Association for Computational Linguistics",
    url = "https://www.aclweb.org/anthology/2020.acl-main.255",
    pages = "2854--2864",
    abstract = "Neural architectures are the current state of the art in Word Sense Disambiguation (WSD). However, they make limited use of the vast amount of relational information encoded in Lexical Knowledge Bases (LKB). We present Enhanced WSD Integrating Synset Embeddings and Relations (EWISER), a neural supervised architecture that is able to tap into this wealth of knowledge by embedding information from the LKB graph within the neural architecture, and to exploit pretrained synset embeddings, enabling the network to predict synsets that are not in the training set. As a result, we set a new state of the art on almost all the evaluation settings considered, also breaking through, for the first time, the 80{\%} ceiling on the concatenation of all the standard all-words English WSD evaluation benchmarks. On multilingual all-words WSD, we report state-of-the-art results by training on nothing but English.",
}
```


## Abstract

Neural Word Sense Disambiguation (WSD) has recently been shown to benefit from the incorporation of pre-existing knowledge, such as that coming from the WordNet graph. However,   state-of-the-art approaches have been successful in exploiting only the local structure of the graph, with only close neighbors of a given synset influencing the prediction. In this work, we improve a classification model by recomputing logits as a function of both the vanilla independently produced logits and the global WordNet graph. We achieve this  by incorporating an online neural approximated PageRank, which enables us to refine edge weights as well. This method allows us to exploit the global graph structure while keeping space requirements linear in the number of edges. We obtain strong improvements, matching the current state of the art


## Installation

- make sure to have miniconda installed. if not, [install it](https://docs.conda.io/en/latest/miniconda.html)
- It is recommended to create a fresh `conda` env to use the repo
  
  ```bash
  - conda create -n ewiser_ext python=3.6.9 pip
  - conda activate ewiser_ext
  - git clone github.com/elsheikh21/nlp_thesis.git
  - pip install -r requirements.txt
  - pip install torch==1.5.0+cu101 torchvision==0.6.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html
  - pip install torch-sparse torch-scatter -f https://pytorch-geometric.com/whl/torch-1.5.0+cu101.html
  ```

- if it needs `APEX` to be installed

  ```bash
  git clone https://github.com/NVIDIA/apex
  cd apex
  pip install -v --disable-pip-version-check --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./
  ```

---

## Externally downloadable resources

### EWISER English checkpoints

<!-- - [SemCor](https://drive.google.com/file/d/1TIwCn-0NA3yUXG5FOkPgFcoP3aHJmiSZ/view?usp=sharing)
- [SemCor + untagged glosses](https://drive.google.com/file/d/1tW4PjTgdRbVvq9CGq-0ePCsgtkXnEGsN/view?usp=sharing)
- [SemCor + tagged glosses + WordNet Examples](https://drive.google.com/file/d/11RyHBu4PwS3U2wOk-Le9Ziu8R3Hc0NXV/view?usp=sharing) -->

- SemCor
- SemCor + untagged glosses
- SemCor + tagged glosses + WordNet Examples

### Datasets

- [WSD Evaluation Framework](http://lcl.uniroma1.it/wsdeval): contains the SemCor training corpus, along with the evaluation datasets from Senseval and SemEval.

### Sense Embeddings

Pre-preprocessed SensEmBERT+LMMS <!--  OR ARES  --> embeddings is needed to train your model:

- [SensEmBERT + LMMS Embeddings](https://drive.google.com/file/d/11v4FUMyHdpFBrkRJt8cGyy6xkM9a_Emp/view?usp=sharing)

<!-- - [ARES Embeddings](https://drive.google.com/file/d/11riHw5BLay9ORAbLC-2Cl6dYXnd9ZJnx/view?usp=sharing) -->

---

## Evaluate

- vim the `predict_eval_script.sh` to add your `<ckpt_dir>/<best_mdl_path>`

- then run the following
  
  ```bash
  cd wsd_thesis
  sh predict_eval_script.sh # OR
  nohup sh predict_eval_script.sh > eval_script.out  # to log the results
  ```

---

## Train

- All flags related to training & model params can be found in `train.py` & `wsd/models/model.py`
- Run the following script
  
  ```bash
  cd yat_thesis
  sh train.sh
  ```

- or to make it run in background
  
    ```bash
    nohup sh train.sh > experiment_name.out & 
    ```


## License
This project is released under the CC-BY-NC 4.0 license (see `LICENSE.txt`). If you use EWISER, please put a link to this repo.

## Acknowledgements
The authors gratefully acknowledge the support of the <a href="http://mousse-project.org">ERC Consolidator Grant MOUSSE</a> No. 726487 under the European
Union's Horizon 2020 research and innovation programme.

This work was supported in part by the MIUR under the grant "Dipartimenti di eccellenza 2018-2022" of the Department of Computer Science of the Sapienza University of Rome.
