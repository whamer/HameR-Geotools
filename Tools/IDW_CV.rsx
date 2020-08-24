##HameR Geotools=group
##Layer=vector
##X=Field Layer
##IDP=number
##Extent=extent
##Resolution=number
##IDW_Raster=output raster
##IDW_Vector=output vector
##showplots
library(gstat)
library(raster)
library(sf)

newda=as(raster(ext=Extent,resolution=c(Resolution,Resolution),crs=st_crs(Layer)$proj4string,vals=1), 'SpatialGridDataFrame')

la = as(Layer,"Spatial")
la = la[X]
IDW_Raster=raster(krige(formula(paste(X,"~1")),as(Layer,"Spatial"),newdata = newda,nmax = 7,set = list(idp = IDP)))

IDW_Vector=krige.cv(formula(paste(X,"~1")),Layer, nmax = 7, set = list(idp = IDP))
loocv2=data.frame(Predicted=IDW_Vector$var1.pred,Observed=IDW_Vector$observed)
plot(loocv2,asp=1)
abline(0,1)
legend("topleft", legend=c(paste("RMSE:",round(sqrt(mean(IDW_Vector$residual^2,na.rm=TRUE)),3))))

