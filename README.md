# Preventing pressure oscillations does not fix local linear stability issues of entropy-based split-form high-order schemes

[![License: MIT](https://img.shields.io/badge/License-MIT-success.svg)](https://opensource.org/licenses/MIT)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4054366.svg)](https://doi.org/10.5281/zenodo.4054366)


This repository contains information and code to reproduce the results presented in the article
```
@online{ranocha2020preventing,
  title={Preventing pressure oscillations does not fix local linear stability
         issues of entropy-based split-form high-order schemes},
  author={Ranocha, Hendrik and Gassner, Gregor J},
  year={2020},
  month={09},
  eprint={2009.13139},
  eprinttype={arXiv},
  eprintclass={math.NA}
}
```

If you find these results useful, please cite the article mentioned above. If you
use the implementations provided here, please **also** cite this repository as
```
@misc{ranocha2020preventing-repro,
  title={Reproducibility: {P}reventing pressure oscillations does not fix local
         linear stability issues of entropy-based split-form high-order schemes},
  author={Ranocha, Hendrik and Gassner, Gregor J},
  year={2020},
  month={09},
  howpublished={\url{https://github.com/trixi-framework/paper-EC-KEP-PEP}},
  doi={10.5281/zenodo.4054366}
}
```


## Abstract

Recently, it was discovered that the entropy-conserving/dissipative high-order split-form
discontinuous Galerkin discretizations have robustness issues when trying to solve the simple
density wave propagation example for the compressible Euler equations. The issue is related to
missing local linear stability, i.e. the stability of the discretization towards perturbations
added to a stable base flow. This is strongly related to an anti-diffusion mechanism, that is
inherent in entropy-conserving two-point fluxes, which are a key ingredient for the high-order
discontinuous Galerkin extension. In this paper, we investigate if pressure equilibrium preservation
is a remedy to these recently found local linear stability issues of entropy-conservative/dissipative
high-order split-form discontinuous Galerkin methods for the compressible Euler equations.
Pressure equilibrium preservation describes the property of a discretization to keep pressure
and velocity constant for pure density wave propagation. We present the full theoretical derivation,
analysis, and show corresponding numerical results to underline our findings.
The source code to reproduce all numerical experiments presented in this article is available online
([DOI: 10.5281/zenodo.4054366](https_//doi.org/10.5281/zenodo.4054366)).


## Numerical experiments

The numerical experiments presented in the paper use [Trixi.jl](https://github.com/trixi-framework/Trixi.jl),
a flexible tree-based numerical simulation framework for PDEs written in Julia.
To reproduce the numerical experiments, you need to install [Julia](https://julialang.org/).

The `notebooks` directory contains Jupyter notebooks with code and instructions to reproduce the numerical
experiments, including postprocessing.

The numerical experiments were carried out using Julia v1.5.1.


## Authors

* [Hendrik Ranocha](https://ranocha.de) (KAUST, Saudi Arabia)
* [Gregor Gassner](https://www.mi.uni-koeln.de/NumSim/gregor-gassner) (University of Cologne, Germany)


## Disclaimer

Everything is provided as is and without warranty. Use at your own risk!
