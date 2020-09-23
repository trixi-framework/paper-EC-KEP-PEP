import Pkg
Pkg.activate(".")
Pkg.instantiate()


using DelimitedFiles
using LinearAlgebra
using Printf
using SparseArrays

using DiffEqCallbacks
using ForwardDiff
using JSON
using OrdinaryDiffEq
using UnPack
using RecursiveArrayTools
using Roots
using StaticArrays
using SummationByPartsOperators
import SymPy; sp=SymPy

import FFTW; FFTW.set_num_threads(1)

using PyCall, LaTeXStrings; import PyPlot; plt=PyPlot
inset_locator = pyimport("mpl_toolkits.axes_grid.inset_locator")

cycler = pyimport("cycler").cycler
line_cycler   = (cycler(color=["#E69F00", "#56B4E9", "#009E73", "#0072B2", "#D55E00", "#CC79A7", "#F0E442"]) +
                 cycler(linestyle=["-", "--", "-.", ":", "-", "--", "-."]))
marker_cycler = (cycler(color=["#E69F00", "#56B4E9", "#009E73", "#0072B2", "#D55E00", "#CC79A7", "#F0E442"]) +
                 cycler(linestyle=["none", "none", "none", "none", "none", "none", "none"]) +
                 cycler(marker=["4", "2", "3", "1", "+", "x", "."]))

plt.rc("axes", prop_cycle=line_cycler)
plt.rc("text", usetex=true)
plt.rc("text.latex", preamble="\\usepackage{newpxtext}\\usepackage{newpxmath}\\usepackage{commath}\\usepackage{mathtools}")
plt.rc("font", family="serif", size=18.)
plt.rc("savefig", dpi=100)
plt.rc("legend", loc="best", fontsize="medium", fancybox=true, framealpha=0.5)
plt.rc("lines", linewidth=2.5, markersize=10, markeredgewidth=2.5)

function fit_error_growth(t, err)
    @assert axes(t) == axes(err)

    A = hcat(one.(t), t)
    c1, c2 = A \ log.(err)
    exp(c1), c2
end

relative_error(a, b) = (a - b) / max(abs(a), abs(b))

