## Guide to Install Tensorflow and PyTorch for Apple Silicon

Most ML Frameworks rely on NVIDIA's CUDA to tap into the parallel processing capabilities offered by NVIDIA GPUs. 
<br>
<br>
In contrast, Apple has a different GPU architecture for its M1 and M2 CPUs. While built upon traditional GPU principles, this architecture is finely tuned to meet Apple's specific requirements. 
<br>
<br>
To enable GPU support for TensorFlow and PyTorch on MacOS, the following prerequisites must be met:
- Mac Computers with Apple Silicon
- macOS 12.0 or later
- Python 3.8
- Xcode CLI tools (install them using `xcode-select — install`)
<br>
Also, make sure you have pip (or install pip):

```shell
python3 -m pip install --upgrade pip
```
<br>

### Install Tensorflow <br>
****
```shell
SYSTEM_VERSION_COMPAT=0 python3 -m pip install tensorflow-macos
SYSTEM_VERSION_COMPAT=0 python3 -m pip install tensorflow-metal
SYSTEM_VERSION_COMPAT=0 python3 -m pip install tensorflow_datasets
```


You can check that TensorFlow is now using GPU:
```python
import tensorflow as tf
import tensorflow_datasets as tfds
print("TensorFlow version:", tf.__version__)
print("Num GPUs Available: ", len(tf.config.experimental.list_physical_devices('GPU')))

tf.config.list_physical_devices('GPU')
```
Check out [mps-benchmark.ipynb](mps-benchmark.ipynb) for the LeNet-5 training code to verify it is using GPU.

### Install PyTorch <br>
****
```shell
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
sh Miniconda3-latest-MacOSX-x86_64.sh
```
and then you can simply install PyTorch as
```shell
SYSTEM_VERSION_COMPAT=0 python3 -m pip install --pre torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/nightly/cpu
```
Again, check out [mps-benchmark.ipynb](mps-benchmark.ipynb) for the LeNet-5 training code to verify it is using GPU.


