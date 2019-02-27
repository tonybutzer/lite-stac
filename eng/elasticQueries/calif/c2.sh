#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search' -d '{
"query": {
    "bool": {
      "must": [
              {"range": {"creation_dt": {"gte": "2014-06-20"}}},
              {"range": {"creation_dt": {"lt": "2014-06-24"}}}
              ],
      "filter": [ {
"geo_shape": {
                    "footprint": {
                        "shape": {
                            "type": "Polygon",
                            "coordinates": [
                                [
                                    [36.93, -119.36417],
                                    [36.93, -119.22],
                                    [36.81, -119.22],
                                    [36.81, -119.36417],
                                    [36.93, -119.36417]
                                ]
                            ]
                        }
                    },
                }
             }
        ]
    }
  }
}'


