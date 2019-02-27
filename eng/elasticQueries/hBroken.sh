curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search?size=0' -d '{
"size" : 0,
  "query": {
    "constant_score": {
      "filter": {
        "geo_bounding_box": {
          "ul": { 
            "top_left": {
              "lat":  45.01,
              "lon": -90
            },
            "bottom_right": {
              "lat": -7.01,
              "lon": 90.01
            }
          }
        }
      }
    }
  },
    "aggregations" : {
        "tony" : {
            "geohash_grid" : {
                "field" : "ul", 
                "precision" : 4
            }
        },
        "aggs": {
                "geo_bounds": {
                    "field": "ul"
                }
        }
    }
}'

