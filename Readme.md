# lite-stac

Create xarrays from a cloud based data lake full of Cogs and STAC items in a STAC Catalog


# GOALS

1. Easy to install
2. Easy to use
3. Very small codebase
4. Exploit others code and synergies


# INSTALLATION

1. cd pkg - make
2. cd lib - make




## Three libraries

litelasticLIB  litestacLib  xarrayLib

### litestacLib

This is the lightest of the odc-lite suite - needs no supporting database 

does not use elasticSearch either

uses the sample landsat-pds cloud based COGs and STAC

### litelasticLIB

This odc-lite library uses elasticSearch in lieu of the original postgres database


### xarrayLib

This library is re-usable xarray buiilding software for a given AOI.


###  TBD - noteLib


### TBD litegeopLib

this will use geopandas - on the roadmap but lower priority



