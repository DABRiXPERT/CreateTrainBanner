mkdir cropped_images
magick "Start(0km).png" -gravity south -crop 1200x900+0+0 +repage "cropped_images\Start(0km).png"