import logging
from dcindexLib.ix_api_elastic import ix_elastic_all_metatdata_MTL


# ################# MAIN ################### #

# get parameters here later hard code for now

logging.basicConfig(format='%(asctime)s %(levelname)s %(message)s', level=logging.INFO)

my_bucket = 'landsat-pds'
top_directory_prefix = "c1/L8/172/062"
e_index = 'rwanda'
e_type ='cube'
ix_elastic_all_metatdata_MTL(e_index, e_type, my_bucket, top_directory_prefix)

