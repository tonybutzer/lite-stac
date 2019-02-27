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
        }
    }
}'

