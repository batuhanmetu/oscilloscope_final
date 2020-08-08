import imageio as iio
from skimage import filters
from skimage.color import rgb2gray,rgba2rgb  # only needed for incorrectly saved images
from skimage.measure import regionprops
import numpy as np

image = rgb2gray(rgba2rgb(iio.imread('leftm.tif')))
threshold_value = filters.threshold_otsu(image)
labeled_foreground = (image > threshold_value).astype(int)
properties = regionprops(labeled_foreground, image)
center_of_mass = properties[0].centroid
weighted_center_of_mass = properties[0].weighted_centroid

print(center_of_mass)
print(weighted_center_of_mass)


image = rgb2gray(rgba2rgb(iio.imread('rightm.tif')))
threshold_value = filters.threshold_otsu(image)
labeled_foreground = (image > threshold_value).astype(int)
properties = regionprops(labeled_foreground, image)
center_of_mass2 = properties[0].centroid
weighted_center_of_mass2 = properties[0].weighted_centroid

print(center_of_mass2)
print(weighted_center_of_mass2)
print(center_of_mass[0]-center_of_mass2[0],center_of_mass[1]-center_of_mass2[1])
print(weighted_center_of_mass[0]-weighted_center_of_mass2[0],weighted_center_of_mass[1]-weighted_center_of_mass2[1])
