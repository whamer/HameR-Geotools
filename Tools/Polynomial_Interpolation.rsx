##HameR Geotools=group
##Layer=vector
##X=Field Layer
##Order=number
##Extent=extent
##Resolution=number
##Poly_Raster=output raster
##Poly_Vector=output vector
##showplots
library(raster)
library(sf)

trainda=as.data.frame(st_coordinates(Layer))
trainda$aim=Layer[[X]]

model <- lm(aim ~ poly(X,Order)+poly(Y,Order),data=trainda)

newda=raster(ext=Extent,resolution=c(Resolution,Resolution),crs=st_crs(Layer)$proj4string)
coords=coordinates(newda)
newda$X=coords[,1]
newda$Y=coords[,2]

Poly_Raster=predict(newda,model)

Poly_Vector=as.data.frame(do.call("rbind",Map(function(x){
  model_cv <- lm(aim ~ poly(X,Order)+poly(Y,Order),data=trainda[-x,])
  ret_da=data.frame(fold=x,
                    var1.pred=predict(model_cv,trainda[x,]),
                    observed=trainda[x,"aim"])
  ret_da$residual=ret_da$observed-ret_da$var1.pred
  
  return(ret_da)
},
x=1:nrow(trainda))))

st_geometry(Poly_Vector)=st_geometry(Layer)

loocv2=data.frame(Predicted=Poly_Vector$var1.pred,Observed=Poly_Vector$observed)
plot(loocv2,asp=1)
abline(0,1)
legend("topleft", legend=c(paste("RMSE:",round(sqrt(mean(Poly_Vector$residual^2,na.rm=TRUE)),3))))