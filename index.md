---
title       : MEPI group meeting, 2017 
subtitle    : 
author      : Mukarram Hossain
job         : University of Cambridge
framework   : revealjs        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : zenburn      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
revealjs:
theme: serif
transition: cube
center: "false"
knit        : slidify::knit2slides
---
  
## Alignment-free subtyping of HIV sequences
<br></br>
**Mukarram Hossain**
<br></br>
Department of Veterinary Medicine  
University of Cambridge
<br></br>
MEPI group meeting, March 2017 
<br></br>
<img src="assets/img/uc-colour-reveresed.png" width="30%" style="border: 0px">&nbsp;


---
  
### Subtype classification
  
- Viruses are often grouped into subtypes.
- Subtypes have wide implications on the following studies of viruses:
    - clinical
    - epidemiological
    - structural
    - functional
- Existing classification techniques mostly rely on alignments followed by phylogenetic and/or statistical algorithms.

---

### Alignment uncertainty

<img src="assets/img/ha.sp.png" width="65%" style="border: 0px">&nbsp;

---

### Alignment-free classification

- Lossless compression techniques have shown promising results for biological sequence classification:
  - Protein family prediction (Begleiter et al., 2004)
  - Protein structure prediction (Ferragina et al., 2007)

---
  
<br></br>
<img src="assets/img/comet_title.png" width="100%" style="border: 0px">&nbsp;

---
  
### COMET 
  
- COMET is an ultrafast alignment free subtyping tool
- Uses **P**rediction by **P**artial **M**atching (PPM)
- Initially designed for HIV-1
- COMET was tested on both synthetic (1090698) and clinical (10625) HIV datasets
- Sensitivity and specificity were comparable to or higher than:
    - REGA (de Oliveira *et al.*, 2005) and 
    - SCUEAL (Pond *et al.*, 2009)
- Detected and identified new recombinant forms

---

### COMET algorithm

- Builds variable-order Markov models for each reference sequence
- Given a query, COMET calculates log likelihood of observing a base at each positions
- This results in a matrix of likelihood values
- Subtype call is done using a decision tree

---

### The decision tree

<img src="assets/img/decision_tree.png" width="550px" height="600px" style="border: 0px">&nbsp;

---

### Classification using Neural Networks

- *Neural networks* are computational system mimicking biological brain
- Consists of a cluster of neural units organised in layers

<br></br>
<img src="assets/img/ann.jpg" width="40%" style="border: 0px">&nbsp;

---

### ANN: design

- The input layer consists of 32 neurons:
    - gets values from the fixed context 
- Hidden layer consists of **N** neurons
    - processes inputs coming from the input layer using wights and biases
- Output layer consists of 4 neurons
    - uses *softmax funnction* to generate probabilities for the Nucleotide bases A, C, G, T 

---

### ANN : implementation

- Based on the example code from the book 'Neural networks and deep learning' by Michael Nielsen
- Written in Python3 

---

### ANN: training

- We use the reference sequence set used in **COMET** to train the ANN
- Cross-validation is done using randomly removing one sequence from the training set
- Cross-entropy cost function is used to update network weights and biases

---

### ANN: subtyping

- For each nucleotide positions in the query sequence: 
    - ANNs from each subtype generates probabilities of seeing the nucleotide given previous context
- The decision tree used in COMET is used to predict the subtype of the query sequence

---

### Cross-validation

<img src="assets/img/accuracy_8_500_train.png" width="70%" style="border: 0px">&nbsp;

---

### Test datasets

- Reference
- Vanderbilt
- PR-RT 

---

### Accuracy comparison

<img src="assets/img/compare.png" width="60%" style="border: 0px">&nbsp;

---

### Future direction

- Optimise neural network parameters
- Larger context size?
- Recursive Neural Networks (RNN)?
- Report breakpoints for potential novel recombinants 
- Implement using TensorFlow 

---

<br></br>
<img src="assets/img/questions.jpg" width="600px" class="centred" style="margin: 10px 10px" />
  
