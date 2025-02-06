import 'package:flutter/material.dart';
import 'package:gallery_builder/gallery_builder/gallery_builder_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery Builder',
      debugShowCheckedModeBanner: false,
      home: GalleryBuilderView(),
    );
  }
}