# enph259-jupyter
 A Jupyter server fully configured for ENPH 259 in a Docker container

## Container
Comes preinstalled with Jupyter, the [standard Python science libraries](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook), the PDF Report exporter, and other libraries used in the course (lmfit and plotly).

You can start a Jupyter environment in your terminal's current directory with the following command ([Docker](https://docker.com) needs to be installed)
```sh
docker run --it -p 8888:8888 -v "$PWD":/home/jovyan nicholascarr/enph259-jupyter
```

## NBConvert PDF Report Exporter
This component is a custom NBConvert exporter that has the 
report template set as default. If this is installed, JupyterLab will 
add a `PDF_report` option to the `Download as` menu.

This is included with the container, but it can be installed for your own Jupyter installation by running these commands in this repository
```sh
cd nbconvert_pdf_report_exporter
python setup.py install
```
