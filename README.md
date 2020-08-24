# HameR-Geotools
R-scripts making geoprocessing tools from R ready to use in QGIS

Before you can use the tools you need to take some [preparation steps](preparation.md).

## Tool overview:

| Name | Function | Required packages |
|------|----------|-------------------|
|[IDW CV](./Tools/IDW_CV.rsx)|Inverse distance weighting interpolation and leave one out cross validation|gstat, raster, sf [Link]("./lib_r/idw_cv.r")|
|      |          |                   |