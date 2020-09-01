# IDW CV


| Parameter | Default | Meaning |
|------|----------|-------------------|
|Layer (vector)| ~~~~ | The point layer containing the aim variable|
|X (Field of Layer)| ~~~~ | The column containing the data of the aim variable|
|IDP (number)| 2 | Inverse dinstance Power|
|Number of Neighbours (number)| ~~~~ | Maximum of Neighbours considered for the interpolation|
|Use Raster as Aim (Boolean)| True | If True, the information of the *Raster as Aim* are used for the *IDW Raster*. Else the *Extent* and *Resolution* are used.|
|Raster as Aim (optional raster)| ~~~~ | Raster structure used for the *IDW Raster*|
|Extent (optional)| ~~~~ | Extent used for the *IDW Raster*|
|Resolution (optional number)| ~~~~ | Resolution used for the *IDW Raster*|
|IDW_Raster (output raster)| ~~~~ | Raster containing the IDW prediction|
|IDW_Vector (output vector)| ~~~~ | Vector containing the result of a Leave one out crossvalidation|

