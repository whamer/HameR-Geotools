# Preparation
Before you can use the tools you need to:

## 1. [Install R](https://www.r-project.org/)

## 2. [Implement](https://docs.qgis.org/3.10/en/docs/user_manual/plugins/plugins.html) the QGIS Plugin [Processing R Provider](https://plugins.qgis.org/plugins/processing_r/)

![QGIS Plugin](./img/erweiterung.png)

![Implement QGIS Plugin](./img/erweiterunginstall.png)

## 3. Implement Tool
Either clone this repository and link the tools folder to QGIS

![Link it](./img/addrtools.png)

or create a new R-Tool 

![create a new R-Tool](./img/create_script.png "Create a new R-Tool")

and copy the content of the tool or copy the .rsx-file to the correct folder.

![rscripts folder](./img/rscripts.png "rscripts folder")

## 4. Install libraries

Install the R libraries used in the tool

![libraries in tool](./img/librariesinscript.png)

in the R environment. To do so open R

![open R](./img/openr.png)

and then install the packages

![Install R library](./img/installr.png)


## 5. Use the tool in QGIS

![Use the tool](./img/usage.png)

