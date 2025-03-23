#!/bin/bash

# 安装构建工具
# Install build tools
conda install -c conda-forge gcc=14
conda install -c conda-forge gxx
conda install ffmpeg cmake

# 设置编译环境
# Set up build environment
export CMAKE_MAKE_PROGRAM="$CONDA_PREFIX/bin/cmake"
export CC="$CONDA_PREFIX/bin/gcc"
export CXX="$CONDA_PREFIX/bin/g++"

conda install pytorch torchvision torchaudio pytorch-cuda -c pytorch -c nvidia

# 刷新环境
# Refresh environment
hash -r

pip install -r requirements.txt