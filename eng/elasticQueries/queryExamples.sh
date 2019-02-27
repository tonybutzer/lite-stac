#! /bin/bash -x
curl --header 'Content-Type: application/json' -XGET 'http://elastic:9200/datacube/rwanda/_search?q=L1TP'  | python -m json.tool | grep red

echo "#################################################################################"
echo "#################################################################################"
echo "#################################################################################"
echo "#################################################################################"
echo "#################################################################################"
echo "#################################################################################"

#curl --header 'Content-Type: application/json' -XGET 'http://elastic:9200/datacube/rwanda/_search?q=creation_dt:[2018-01-01 TO 2018-01-05]'  | python -m json.tool |grep red
curl --header 'Content-Type: application/json' -XGET 'http://elastic:9200/datacube/rwanda/_search?q=creation_dt:>2018-11-01'  | python -m json.tool |grep red
