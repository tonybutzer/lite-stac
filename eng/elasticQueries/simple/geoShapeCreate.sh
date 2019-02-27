#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/geotest/geo/_search' -d '{
   "geotest": {
    "mappings": {
        "geo": {
            "properties": {
                "location": {
                    "type": "geo_shape",
                    "tree": "quadtree",
                    "precision": "1m"
                }
            }
        }
    }
  }
}'
