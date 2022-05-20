# [Simulating the phenomena of altered states of consciousness using virtual reality](thesis.pdf)

**Author**: Jakub Hlusička
**Supervisor**: Ing. Josef Kortan

[Read here.](thesis.pdf)

## Abstract

In this thesis, I explore contemporary attempts at the replication of various aspects of psychedelic-induced altered states of consciousness (ASCs) via software; primarily, the phenomena related to visual perception. Then, I describe my implementation of a replication, which simulates select aspects of a low-dose ASC induced by classical, serotonergic psychedelics, using immersive virtual reality (VR). I describe a study, which I have conducted in order to measure the impact of the resulting implementation on the results of psychometric questionnaires (5D-ASC, 11-ASC) typically used in the evaluation of subjective effects in clinical studies of psychedelics.

## Prerequisites

* The Technika font.

```
$ sudo apt install texlive-xetex texlive-bibtex-extra biber texlive-science
$ sudo pip3 install pygments
```

## Building

```sh
$ git clone git@github.com:Limeth/master-thesis
$ make
$ open build/main.pdf
```

## License

The template is adapted from [Tim Baccaert's master's thesis](https://github.com/timplication/master-thesis).
Files in `ctu/logos` are copyrighted by the Czech Technical University in Prague and details about their license can be found [here](https://cvut.cz).
Files in `img/reused` are copyrighted by their respective owners, as documented in the [rendered document](thesis.pdf).
The rest of the thesis is provided under the [Creative Commons Attribution 4.0 International license
(CC-BY-4.0)](https://creativecommons.org/licenses/by/4.0/).
