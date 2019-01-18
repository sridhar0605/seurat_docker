FROM rocker/r-base

# seurat and r dependencies
RUN apt-get update -y && apt-get install -y --no-install-recommends curl libhdf5-dev python3-pip \
    build-essential \
    bzip2 \
    curl \
    g++ \
    git \
    less \
    libcurl4-openssl-dev \
    libpng-dev \
    libssl-dev \
    libxml2-dev \
    make \
    pkg-config \
    rsync \
    unzip \
    wget \
    zip \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    hdf5-tools \
    hdf5-helpers \
    ncurses-dev \

# umap
RUN pip3 install setuptools && \
    pip3 install umap-learn

# clean
WORKDIR /tmp
ADD install.r /tmp/
RUN R -f /tmp/install.r
## Fix library path
RUN echo "R_LIBS_USER='/usr/local/lib/R/site-library'" >> /usr/local/lib/R/etc/Renviron && \
    echo "R_LIBS=\${R_LIBS-'/usr/local/lib/R/site-library:/usr/local/lib/R/library:/usr/lib/R/library'}" >> /usr/local/lib/R/etc/Renviron


RUN rm -rf /tmp/* && \
   apt-get autoremove -y && \
   apt-get autoclean -y && \
   rm -rf /var/lib/apt/lists/* && \
   apt-get clean
