#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search' -d '{
    "query": {
        "bool" : {
            "must" : {
                "match_all" : {}
            },
            "filter" : {
                "geo_distance" : {
                    "distance" : "2600m",
                    "ul" : {
                        "lat" : -3.2905,
                        "lon" : 31.3108
                    }
                }
            }
        }
    }
}'
