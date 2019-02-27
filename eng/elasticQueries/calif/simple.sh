GET /datacube/rwanda/_search?size=400
{
    "query": {
        "multi_match" : {
            "query" : "L08"
        }
    }
}
