#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search' -d '{
        "query": {
            "range" : {
                "creation_dt" : {
                    "gte" : "2014-6-20",
                    "lt" :  "2014-6-26"
                }
            }
        }
}'
