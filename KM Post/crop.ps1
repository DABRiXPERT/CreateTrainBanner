mkdir cropped_images
Get-ChildItem *km.png | ForEach-Object {
    magick $_.FullName -gravity center -crop 1200x750+0+0 +repage "cropped_images\$($_.Name)"
}
