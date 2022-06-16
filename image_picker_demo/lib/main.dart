import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ImagePickerView(),
  ));
}

class ImagePickerView extends StatefulWidget {
  const ImagePickerView({Key? key}) : super(key: key);

  @override
  State<ImagePickerView> createState() => _ImagePickerViewState();
}

class _ImagePickerViewState extends State<ImagePickerView> {

  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Images'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(imageFile != null)
              ClipOval(
                child: Container(
                  width: 480,
                  height: 380,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                    image: DecorationImage(
                        image: FileImage(imageFile!),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              )
            else
              ClipOval(
                child: Container(
                  width: 480,
                  height: 380,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(55.0),
                  ),
                  child: const Text('Image Appear Here', style: TextStyle(
                      fontSize: 26,color: Colors.white),),
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              child: TextButton(
                  onPressed: ()=> getImage(source: ImageSource.camera),
                  child: const Text('From Camera ',
                      style: TextStyle(fontSize: 18,color: Colors.white))
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              child: TextButton(
                  onPressed: ()=> getImage(source: ImageSource.gallery),
                  child: const Text('From Gallery',
                      style: TextStyle(fontSize: 18,color: Colors.white))
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
      source: source,
    );

    if(file?.path != null){
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
