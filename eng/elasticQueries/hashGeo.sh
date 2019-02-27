curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search?size=1400' -d '{
    "aggregations" : {
        "tony aggregate geohashish" : {
            "geohash_grid" : {
                "field" : "ul", 
                "precision" : 3
            }
        }
    }
}'

