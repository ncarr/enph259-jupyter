FROM jupyter/scipy-notebook

RUN conda install --quiet --yes \
  'lmfit' \
  'plotly' \
  && \
  conda clean --all -f -y && \
  fix-permissions "${CONDA_DIR}"

USER root
COPY nbconvert_pdf_report_exporter /tmp/nbconvert_pdf_report_exporter
WORKDIR /tmp/nbconvert_pdf_report_exporter
RUN python setup.py install && \
  rm -rf /tmp/nbconvert_pdf_report_exporter
USER $NB_UID

WORKDIR $HOME
ENV JUPYTER_ENABLE_LAB=yes