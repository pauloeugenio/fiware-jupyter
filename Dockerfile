#Imagem com Jupyter Notebook e algumas bibliotecas new.

FROM python:3.8-slim-buster

RUN mkdir -p /home/notebooks
WORKDIR /home/notebooks

RUN pip install numpy \
		pandas \
		scikit-learn \
		sktime \
		sklearn \
		tensorflow \
		seaborn \
		jupyter \
		pandas-profiling \
		flask \
		notebook
EXPOSE 8888

ENTRYPOINT ["jupyter", "notebook","--ip=0.0.0.0","--allow-root","--no-browser"]
