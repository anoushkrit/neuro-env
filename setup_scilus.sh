sudo apt install libblas-dev liblapack-dev gfortran
sudo apt-get install git g++ python libeigen3-dev zlib1g-dev libqt5opengl5-dev libqt5svg5-dev libgl1-mesa-dev libfftw3-dev libtiff5-dev libpng-dev
sudo apt-get install python3-distutils build-essential
sudo apt install libfreetype6-dev
ENV=tractolearn
PROGRAM_PATH=/neuro/programs
conda create -n $ENV python=3.10 && source ~/.bashrc
conda activate ${ENV}
#mrtrix
conda install -c mrtrix3 mrtrix3
conda update -c mrtrix3 mrtrix3
#scilpy
pip install --upgrade setuptools wheel
pip install numpy
git clone https://github.com/getspams/spams-python && cd spams-python && pip install -e .
cd .. && rm -rf spams-python 
cd $PROGRAM_PATH
git clone https://github.com/scilus/scilpy.git
export SETUPTOOLS_USE_DISTUTILS=stdlib
cd scilpy/ && pip install -e .
# dmriQCpy
pip install git+https://github.com/scilus/dmriqcpy.git
# ants
cd $PROGRAM_PATH
wget https://github.com/ANTsX/ANTs/releases/download/v2.5.3/ants-2.5.3-ubuntu-20.04-X64-gcc.zip
unzip ants-2.5.3-ubuntu-20.04-X64-gcc.zip
export PATH=$PROGRAM_PATH/ants-2.5.3/bin:$PATH && source ~/.bashrc
# echo 'export PATH=$PROGRAM_PATH/ants-2.5.3/bin:$PATH' >> ~/.bashrc







