<!DOCTYPE html>
<html>
<head>
    <title>Image Display</title>
</head>
<body>
    <h1>Image Display Example</h1>

    <?php
    // Path to the image file
    $imagePath = 'images/2.png';

    // Get the image type (extension)
    $imageType = pathinfo($imagePath, PATHINFO_EXTENSION);

    // Read image data and encode it as a base64 string
    $imageData = base64_encode(file_get_contents($imagePath));

    // Generate the data URI for the image
    $dataUri = 'data:image/' . $imageType . ';base64,' . $imageData;
    ?>

    <img src="<?php echo $dataUri; ?>" alt="Image">

</body>
</html>
