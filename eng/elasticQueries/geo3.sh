#! /bin/bash
curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search' -d '{
"query": {
    "bool": {
      "must": [
              {"range": {"creation_dt": {"gte": "2013-07-06"}}},
              {"range": {"creation_dt": {"lt": "2013-07-07"}}}
              ],
      "filter": [ {
"geo_shape": {
                    "footprint": {
                        "shape": {
                            "type": "Polygon",
                            "coordinates": [
                                [
                                    [-2.219, 30.2097],
                                    [-2.1639, 30.2097],
                                    [-2.1639, 30.2464],
                                    [-2.219, 30.2464],
                                    [-2.219, 30.2097]
                                ]
                            ]
                        }
                    }
                }
             }
        ]
    }
  }
}'


