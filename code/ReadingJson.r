library(jsonlite)

pizza <- fromJSON('data/FavoriteSpots.json')
pizza
pizza$Name
pizza$Details
class(pizza$Details)
pizza$Details[[1]]
class(pizza$Details[[1]])
pizza$Coordinates

pizza <- fromJSON('data/FavoriteSpots.json') %>% tidyr::unnest()
pizza

pizza$Zip

library(leaflet)

leaflet(pizza)

leaflet(pizza) %>% 
    addTiles()

leaflet(pizza) %>% 
    addTiles() %>% 
    addMarkers(
        lng = ~ longitude,
        lat = ~ latitude,
        popup = ~ Name
    )
