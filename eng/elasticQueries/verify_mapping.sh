#! /bin/bash
 
curl -XGET 'http://elastic:9200/datacube/_mapping' | python -m json.tool
