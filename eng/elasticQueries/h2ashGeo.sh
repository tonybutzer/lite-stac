curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search?size=30' -d '{
    "aggregations" : {
        "tony" : {
            "geohash_grid" : {
                "field" : "ul", 
                "precision" : 3
            }
        },
        "map_zoom": {
                "geo_bounds": {
                    "field": "ul"
                }
        }
    }
}'

