#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search' -d '{
"query": {
    "bool": {
      "must": [
              {"range": {"creation_dt": {"gt": "2016-11-01"}}},
              {"range": {"creation_dt": {"lt": "2018-11-25"}}}
              ],
      "filter": [ {
                "geo_distance" : {
                    "distance" : "500m",
                    "ul" : {
                        "lat" : -3.2905,
                        "lon" : 31.3108
                    }
                }}
        ]
    }
  }
}'


