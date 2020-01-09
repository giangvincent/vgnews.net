<?php
function replaceThumb($media, $type = '_thumb_normal') {
    if (file_exists(public_path('upload').'/'.$media)) {
        $mediaSize = getimagesize(public_path('upload').'/'.$media);
        if ($mediaSize[0] < 1 || $mediaSize[1] < 1) {
            return $media;
        }
        $valid_types = ["image/png" => ".png", "image/jpeg" => ".jpg", "image/gif" => ".gif"];
        $imageName = str_replace($valid_types[$mediaSize['mime']], "", $media) . $type . $valid_types[$mediaSize['mime']];
        return str_replace("images", "thumb_images", $imageName);
    } else {
        return $media;
    }
    
}