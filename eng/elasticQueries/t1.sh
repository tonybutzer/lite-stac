curl --header 'Content-Type: application/json' -XPOST 'http://elastic:9200/georaw/_search?size=400' -d '{
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





				[-119.37744140625, 36.81368259124586],
          [-119.234619140625, 36.81368259124586],
          [-119.234619140625, 36.92793899776678],
          [-119.37744140625, 36.92793899776678],
          [-119.37744140625, 36.81368259124586]
                                ]
                            ]
                        }
                    }
                }
            }
        }
    }
}'

