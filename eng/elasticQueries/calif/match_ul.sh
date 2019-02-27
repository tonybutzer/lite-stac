#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search' -d '{
    "query": {
        "bool" : {
            "must" : {
                "match_all" : {}
            },
            "filter" : {
                "geo_distance" : {
                    "distance" : "1m",
                    "ul" : {
                        "lat" : 38.325455,
                        "lon" : -120.811664
                    }
                }
            }
        }
    }
}'
