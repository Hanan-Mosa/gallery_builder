import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GalleryBuilderView extends StatefulWidget {
  const GalleryBuilderView({super.key});

  @override
  State<GalleryBuilderView> createState() => _GalleryBuilderViewState();
}

class _GalleryBuilderViewState extends State<GalleryBuilderView> {
  List<File?> imagesFiles = [];

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             if(imagesFiles.isNotEmpty)
               Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => SizedBox(
                        width:MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.4,
                          child: Image.file(imagesFiles[index]!,fit: BoxFit.cover,)),
                      separatorBuilder: (context, index) => Divider(
                            thickness: 2,
                            color: Colors.deepPurple,
                          ),
                      itemCount: imagesFiles.length)),
              FilledButton(onPressed: ()async{
                final List<XFile> images = await picker.pickMultiImage();
                if(images.isNotEmpty){
                  imagesFiles =images.map((image)=>File(image.path)).toList();
                }
                setState(() {

                });
              }, child: Text('Pick Image'))
            ],
          ),
        ),
      ),
    );
  }

}
