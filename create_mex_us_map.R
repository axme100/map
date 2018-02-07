library(maptools)
library(raster)

# Read shape file of US
north_america=readShapePoly("political_boundary_data/pb.shp")

# Just get contiguous MEX and US
mex_us <- north_america[which(north_america@data$COUNTRY == "MEX"
                           | north_america@data$COUNTRY == "USA"
                           & north_america@data$STATE != "US-AK"
                           & north_america@data$STATE != "US-HI"),]

plot(mex_us)

# Now I just have to export the image to an appropriate size
# The image is at width 1200 height 878