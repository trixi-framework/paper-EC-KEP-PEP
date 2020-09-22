# On entropy conservation, kinetic energy preservation, pressure equilibrium preservation, and local linear stability

[![License: MIT](https://img.shields.io/badge/License-MIT-success.svg)](https://opensource.org/licenses/MIT)
[![DOI](https://zenodo.org/badge/DOI/TODO.svg)](https://doi.org/TODO)


This repository contains information and code to reproduce the results presented in the article
```
@online{ranocha2020ec-kep-pep,
  title={On entropy conservation, kinetic energy preservation,
         pressure equilibrium preservation, and local linear stability},
  author={Ranocha, Hendrik and Gassner, Gregor J},
  year={2020},
  month={09},
  eprint={2009.TODO},
  eprinttype={arXiv},
  eprintclass={math.NA}
}
```

If you find these results useful, please cite the article mentioned above. If you
use the implementations provided here, please **also** cite this repository as
```
@misc{ranocha2020ec-kep-pep-repro,
  title={Reproducibility: {O}n entropy conservation, kinetic energy preservation,
         pressure equilibrium preservation, and local linear stability},
  author={Ranocha, Hendrik and Gassner, Gregor J},
  year={2020},
  month={09},
  howpublished={\url{https://github.com/trixi-framework/paper-EC-KEP-PEP}},
  doi={TODO}
}
```


## Abstract

TODO


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
