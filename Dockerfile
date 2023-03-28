FROM  docker.io/continuumio/miniconda3

# Install conda packages.
RUN conda update -qy conda \
    && conda install -y -c conda-forge \
      pymol-open-source \
      ipykernel \
      jupyterlab \
      py3dmol \
      matplotlib \
    && conda clean --all --yes

# pymol runtime
RUN	apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && \
	DEBIAN_FRONTEND=noninteractive apt-get -y install \
	libdbus-1-3 \ 
	libfontconfig1 \ 
	libgl1-mesa-glx \ 
	libglib2.0-0 \ 
	libice6 \ 
	libsm6 \ 
	libxau6 \ 
	libxcb-icccm4 \  
	libxcb-image0 \ 
	libxcb-keysyms1 \ 
	libxcb-randr0 \ 
	libxcb-render-util0 \ 
	libxcb-shape0 \ 
	libxcb-xfixes0 \ 
	libxcb-xinerama0 \ 
	libxcb-xinput0 \ 
	libxi6 \ 
	libxkbcommon-x11-0 \ 
	libxrender1 \ 
	mesa-utils  && \
	DEBIAN_FRONTEND=noninteractive apt-get -y autoremove
