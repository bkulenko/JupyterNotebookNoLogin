FROM python:3.6.8

ADD . /code/
WORKDIR /code/
RUN apt-get update
RUN pip install -r requirements.txt
EXPOSE 8888
CMD ["jupyter", "notebook", "--NotebookApp.token=''", "--ip=0.0.0.0", "--allow-root"]


