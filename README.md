#  Gallery Builder 

This application allows user to select multiple images from their device's gallery and display them in a list view.

## Features

*   **Multiple Image Selection:** User can select multiple images from their device's gallery at once.
*   **List View Display:** Selected images are displayed in a list layout.
  

## Getting Started

1.  **Prerequisites:**
    *   Flutter SDK installed.
    *   Android Studio 
2.  **Installation:**
    *   Clone this repository
       ```bash
          git clone https://github.com/Hanan-Mosa/gallery_builder.git
       ```
    *   Get Dependancies
      
       ```bash
          flutter pub get
       ```
   *    Run the app
     
        ```bash
          flutter run
         ```

## Code Explanation

The code uses the `image_picker` plugin to allow the user to select images from their device's gallery.</br>
The `pickMultipleImages()` method is used to select multiple images. </br>
The selected images are then displayed in a `ListView`. </br>
The `ListView` display the images in a list format, using `Image.file` to load them from their file paths.

## Video Demo

https://github.com/user-attachments/assets/fa8409c2-4304-48a0-b02c-b84ae4819d28


