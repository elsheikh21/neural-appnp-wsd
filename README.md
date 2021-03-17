 # Extending EWISER with EACL 2021

This repo hosts my work for my masters program thesis in NLP, Under the supervision of Prof. Roberto Navigli and PhD. Michele Bevilacqua. Trying to break the State of the Art (SOTA) in Word Sense Disambiguation (WSD) task by integrating EWISER approach with Framing WSD as multilabel classification problem by Simone Cantone. The SOTA model achieved 79.0% on WSD Unified Evaluation framework.

---

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

### EWISER English checkpoints:
* [SemCor](https://drive.google.com/file/d/1TIwCn-0NA3yUXG5FOkPgFcoP3aHJmiSZ/view?usp=sharing)
* [SemCor + untagged glosses](https://drive.google.com/file/d/1tW4PjTgdRbVvq9CGq-0ePCsgtkXnEGsN/view?usp=sharing)
* [SemCor + tagged glosses + WordNet Examples](https://drive.google.com/file/d/11RyHBu4PwS3U2wOk-Le9Ziu8R3Hc0NXV/view?usp=sharing)

### Datasets:
* [WSD Evaluation Framework](http://lcl.uniroma1.it/wsdeval): contains the SemCor training corpus, along with the evaluation datasets from Senseval and SemEval.

### Sense Embeddings

Pre-preprocessed ARES embeddings is needed to train your model:
* [ARES Embeddings](https://drive.google.com/file/d/11riHw5BLay9ORAbLC-2Cl6dYXnd9ZJnx/view?usp=sharing)

---

## Evaluate
  - To be written later


--- 

## Train
  - To be written later
