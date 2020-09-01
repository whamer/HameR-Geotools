# HameR-Geotools
R-scripts making geoprocessing tools from R ready to use in QGIS

Before you can use the tools you need to take some [preparation steps](preparation.md).

## Tool overview:

| Name | Function | Required packages | Help |
|------|----------|-------------------|------|
|[IDW CV](./Tools/IDW_CV.rsx)|Inverse distance weighting interpolation and leave one out cross validation|gstat, raster, sf [Link](./lib_r/idw_cv.r)|[Link](./lib_r/idw_cv_help.md)|
|[Polynomial Interpolation](./Tools/Polynomial_Interpolation.rsx)|Polynomial Interpolation and leave one out cross validation|raster, sf [Link](./lib_r/idw_cv.r)|[Link](./lib_r/polynom_help.md)|