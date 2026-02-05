<?php
require "connection.php";

$pid = $_GET["id"];

// Fetch the product
$product = Database::search("SELECT * FROM `product` WHERE `id`='" . $pid . "'");
$pn = $product->num_rows;

if ($pn == 1) {
    // Fetch the associated images
    $imges = Database::search("SELECT * FROM `images` WHERE `product_id`='" . $pid . "'");
    $context = $imges->fetch_assoc();

    // Define the image file path and attempt to delete it
    $filename = ("images/product_img/" . $context["code"]);
    unlink($filename);

    // Delete from `recent` table (corrected syntax)
    Database::iud("DELETE FROM `recent` WHERE `product_id` = '" . $pid . "'");

    // Delete from `cart` table (if needed, uncomment)
    // Database::iud("DELETE FROM `cart` WHERE `product_id` = '" . $pid . "'");

    // Delete from `images` table
    Database::iud("DELETE FROM `images` WHERE `product_id` = '" . $pid . "'");

    // Finally, delete the product
    Database::iud("DELETE FROM `product` WHERE `id` = '" . $pid . "'");

    echo "success";
} else {
    echo "Product Does Not Exist.";
}
