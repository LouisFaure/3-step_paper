# 3-step mechanism paper

This repository holds the notebooks to reproduce the figures of the 3-step mechanism manuscript

## Setting up environment (GPU enabled)

```bash
mamba create -n rapids-22.06-stable -c rapidsai -c nvidia -c conda-forge -c r \
    cuml=22.06 cugraph=22.06 python=3.9 cudatoolkit=11.5 r-mgcv rpy2 -y
mamba activate rapids-22.06-stable
mamba install -c conda-forge mscorefonts imagemagick tectonic
pip install scFates harmonyTS palantir cellrank kb_python
pip install git+https://github.com/LouisFaure/scanpy@gpu-additions
```