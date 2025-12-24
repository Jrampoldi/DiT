# Diffusion Models
This repository contains implementations of DiT (Scalable Diffusion Models with Transformers)

## Git clone
```bash
git clone https://github.com/Jrampoldi/DiT.git
```

## Install Environment via Anaconda (Recommended)
```bash
cd DiT
conda env create -f environment.yml
conda activate DiT
```

## Run Script
```bash
chmod 777 run.sh
./run.sh
```

## Troubleshoot
This will cover most issues that may occur
```bash
pip uninstall torch torchvision torchaudio
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
conda install python=3.10
pip install diffusers
pip install timm
```


