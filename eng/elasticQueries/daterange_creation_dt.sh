#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search' -d '{
        "query": {
            "range" : {
                "creation_dt" : {
                    "gte" : "now-40d/d",
                    "lt" :  "now/d"
                }
            }
        }
}'
