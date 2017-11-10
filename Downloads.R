# Policy :
# https://data.seattle.gov/Permitting/Building-Permits-Current/mags-97de
download.file(url = "https://data.seattle.gov/api/views/mags-97de/rows.csv?accessType=DOWNLOAD", destfile = "/home/rstudio/data/building_data.csv")

# Claims data :
# https://data.seattle.gov/Public-Safety/Seattle-Real-Time-Fire-911-Calls/kzjm-xkqj
download.file(url = "https://data.seattle.gov/api/views/kzjm-xkqj/rows.csv?accessType=DOWNLOAD", destfile = "/home/rstudio/data/call_data.csv")

# Shapefile of buildings :
# https://data.seattle.gov/dataset/2009-Building-Outlines/y7u8-vad7
download.file(url = "https://data.seattle.gov/api/views/y7u8-vad7/files/fTGdgmOAUetGuX6v8gtQ6BXsMYNMeBMsqULTTrntx0E?filename=Building%20Outlines%202009.zip", destfile = "/home/rstudio/data/seatle_shape.zip")

# POI Data :
# http://download.geofabrik.de/north-america.html
download.file(url = paste0("http://download.geofabrik.de/north-america/us/washington-latest.osm.pbf"), destfile = "/home/rstudio/data/latest.osm.pbf")

#unpack PoIs data
system("cd /home/rstudio/data;ls;java -Xmx4g -jar osmpois.jar latest.osm.pbf")

# Zones in Seattle :
# https://data.seattle.gov/dataset/Neighborhoods/2mbt-aqqx
# download.file(url = "https://data.seattle.gov/download/2mbt-aqqx/application%2Fzip", destfile = "/home/rstudio/data/seatle_zones.zip")
