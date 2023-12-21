python3 -m pip install --upgrade pip
SYSTEM_VERSION_COMPAT=0 python3 -m pip install tensorflow-macos
SYSTEM_VERSION_COMPAT=0 python3 -m pip install tensorflow-metal
SYSTEM_VERSION_COMPAT=0 python3 -m pip install tensorflow_datasets

curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
sh Miniconda3-latest-MacOSX-x86_64.sh

SYSTEM_VERSION_COMPAT=0 python3 -m pip install --pre torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/nightly/cpu