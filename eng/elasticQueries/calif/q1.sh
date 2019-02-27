curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/datacube/rwanda/_search?size=400' -d '{
    "query": {
        "bool": {
            "must": {
                "match_all": {}
            },
            "filter": {
                "geo_shape": {
                    "footprint": {
                        "shape": {
                            "type": "Polygon",
                            "coordinates": [
                                [
                                    [-119.36417, 36.93],
                                    [-119.22, 36.93],
                                    [-119.22, 36.81],
                                    [-119.36417, 36.81],
                                    [-119.36417, 36.93]
                                ]
                            ]
                        }
                    }
                }
            }
        }
    }
}'

