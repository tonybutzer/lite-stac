#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search' -d '{
    "query": {
        "bool": {
            "must" : {
                "multi_match": {
                    "operator": "and",
                    "query": "L1TP"
                }
            },
            "filter": {

                "bool": {

                    "must": {

                        "range" : { "creation_dt": { "gte": "2018-11-20" } }

                    }

                }

            }

        }

    }
}'


