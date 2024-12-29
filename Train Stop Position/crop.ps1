mkdir cropped_images
Get-ChildItem *.png | ForEach-Object {
    magick $_.FullName -gravity center -crop 500x750+0+0 +repage "cropped_images\$($_.Name)"
}
