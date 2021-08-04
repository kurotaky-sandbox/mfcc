FROM continuumio/anaconda3

RUN apt-get update
RUN apt-get install -y build-essential graphviz-dev graphviz pkg-config libsndfile1

RUN pip install --upgrade pip && \
    pip install autopep8 && \
    pip install Keras && \
    pip install tensorflow && \
    pip install graphviz && \
    pip install pydotplus && \
    pip install scikit-learn && \
    pip install soundfile && \
    pip install librosa && \
    pip install pydub

WORKDIR /workdir

EXPOSE 8888

ENTRYPOINT ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

CMD ["--notebook-dir=/workdir"]
