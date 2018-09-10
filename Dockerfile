#FROM rust:latest as builder
#RUN apt-get update && apt-get install -y libfontconfig1-dev libgraphite2-dev libharfbuzz-dev libicu-dev zlib1g-dev

#RUN cargo install tectonic --force

FROM continuumio/anaconda3
RUN apt-get update \
     && apt-get -y install build-essential \
     && conda config --add channels conda-forge \
     && conda update --all \
     && conda install setuptools \
     && conda install sphinx \
     && conda install -y tectonic \
     && apt-get -y --no-install-recommends install pandoc pandoc-citeproc \
    && rm -rf /var/lib/apt/lists/* 

#COPY --from=builder /usr/local/cargo/bin/tectonic /usr/bin/
#COPY --from=builder /root/.cache/Tectonic/ /root/.cache/Tectonic/
WORKDIR /usr/src/tex


#libicu57 removed from ubuntu, replaced with libicu60
#apt-get install -y --no-install-recommends libfontconfig1 libgraphite2-3 libharfbuzz0b zlib1g libharfbuzz-icu0 libssl1.1 ca-certificates build-essential libicu60 \
   
