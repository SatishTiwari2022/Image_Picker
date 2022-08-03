Image Picker plugin for Flutter


A Flutter plugin for iOS and Android for picking images from the image library, and taking new pictures with the camera.


In this example i create a new method who's name is getImage and passing a parameter  which is the ImageSource type
through this method just call and pass the ImageSource it either   camera type  or gallery type ,this method work as comman 
which increase the reusebility and reduce the line of code as well.

example: 

void getImage({required ImageSource source}) async {
    
    final file = await ImagePicker().pickImage(
      source: source,);
    if(file?.path != null){
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }





# Image_Picker

![6orit1](https://user-images.githubusercontent.com/107614710/182571069-3eedd627-68b7-4b6c-9236-3c113490db31.gif)



