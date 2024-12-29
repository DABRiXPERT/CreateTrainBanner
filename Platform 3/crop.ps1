mkdir cropped_images
Get-ChildItem *.png | ForEach-Object {
    magick $_.FullName -gravity center -crop 1000x1000+0+0 +repage "cropped_images\$($_.Name)"
}
