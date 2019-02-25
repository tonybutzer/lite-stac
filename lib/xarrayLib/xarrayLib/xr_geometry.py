""" This is where geometry stuff lives more to come ..."""

from geojson import Polygon
from pyproj import Proj
import pygeoj


def return_aoi_polygon(aoi_ul, aoi_lr):

    ul = aoi_ul
    lr = aoi_lr
    ur = (ul[0],lr[1])
    ll = (lr[0],ul[1])

    aoi_poly = Polygon(coordinates = [ul, ur, lr, ll, ul])

    return aoi_poly


def geo_translate(lat,lon,epsg="epsg:5072"):
    """ converts lat lon to albers X and Y

        Returns: x, y
    """
    # print(lat,lon)

    p = Proj(init=epsg) # EPSG code AEA


    x,y = p(lon,lat)

    # print(x,y)
    return(x,y)


def geo_untranslate(x,y,epsg="epsg:5072"):
    """ converts albers X and Y to lat, lon

        Returns: lat, lon
    """
    # print(x,y)

    p = Proj(init=epsg) # EPSG code AEA


    glon, glat = p(x, y, inverse=True)


    # print(glat,glon)
    return(glat,glon)

def _return_geo_walk_coordinates(geo_file):
    testfile = pygeoj.load(geo_file)
    for feature in testfile:
        return (feature.geometry.coordinates)


def return_geo_walk_coordinates(geo_file):
    return(_return_geo_walk_coordinates(geo_file))


def bounding_box_tuple_from_geojson(aoi_geojson_file_name):
        coords = _return_geo_walk_coordinates(aoi_geojson_file_name)
        print(coords)
        bbox='hello'
        bbox = (coords[0][3], coords[0][1])
        return(bbox)

