# Polynomial Interpolation


| Parameter | Default | Meaning |
|------|----------|-------------------|
|Layer (vector)| ~~~~ | The point layer containing the aim variable|
|X (Field of Layer)| ~~~~ | The column containing the data of the aim variable|
|Order (number)| 1 | Polynomial order of the interpolation|
|Use Raster as Aim (Boolean)| True | If True, the information of the *Raster as Aim* are used for the *Poly Raster*. Else the *Extent* and *Resolution* are used.|
|Raster as Aim (optional raster)| ~~~~ | Raster structure used for the *Poly Raster*|
|Extent (optional)| ~~~~ | Extent used for the *Poly Raster*|
|Resolution (optional number)| ~~~~ | Resolution used for the *Poly Raster*|
|Poly_Raster (output raster)| ~~~~ | Raster containing the Polynomial prediction|
|Poly_Vector (output vector)| ~~~~ | Vector containing the result of a Leave one out crossvalidation|

