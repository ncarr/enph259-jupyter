# enph259-jupyter
 A Jupyter server fully configured for ENPH 259 in a Docker container

## Why?
Exporting to PDF and accessing files are a pain in Colab and 
a fresh Jupyter install still needs a bunch of LaTeX dependencies 
and all of the science libraries before you can get working. Even 
Jupyter Lab in Anaconda doesn't support exporting to a report-style 
PDF without a custom exporter or resorting to the command-line. 
With this container, you can get working in just a couple minutes.

## Container
Comes preinstalled with Jupyter, 
the [standard Python science libraries](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook), 
the PDF Report exporter, and other libraries used in examples 
given to us by the TAs (lmfit and plotly).

You can start a container with a Jupyter environment open to a directory on 
your computer with the following command 
(Note that [Docker](https://docker.com) needs to be installed 
and that the path to the directory needs replacing)
```sh
docker run --name lab -d --restart always -p 8888:8888 --mount type=bind,source=/path/to/folder/for/notebooks,target=/home/jovyan nicholascarr/enph259-jupyter
```

Then you can open `localhost:8888/?token=the token you see in the console` in your browser to get started!

## NBConvert PDF Report Exporter
This component is a custom NBConvert exporter that has the 
report template set as default. If this is installed, JupyterLab will 
add a `PDF_report` option to the `Export Notebook As` menu.

This is included with the container, but it can be installed for your own 
Jupyter installation by running these commands in this repository
```sh
cd nbconvert_pdf_report_exporter
python setup.py install
```
