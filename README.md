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


<div style="width:360px;max-width:100%;"><div style="height:0;padding-bottom:202.22%;position:relative;"></div><p><a href="https://imgflip.com/gif/6orit1">via Imgflip</a></p></div>


# Image_Picker
<a href="https://imgflip.com/gif/6o1axv">via Imgflip</a>
