# Exploiting the WordNet Graph Globally by Integrating PageRank into Neural Word Sense Disambiguation
<!-- 
This repo hosts the work trying to achieve break the State of the Art (SOTA) in Word Sense Disambiguation (WSD) task by EWISER (Michele Bevilacqua & Roberto Navigli (2020)) by integrating their approach with Approximate Personalized Propagation of Neural Predictions (APPNP). 

---
-->
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
