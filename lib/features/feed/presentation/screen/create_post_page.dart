import 'dart:io';
import 'package:coordonate_app/features/feed/presentation/widgets/create_post_widgets/poster.dart';
import 'package:coordonate_app/router/routes.dart';
import 'package:coordonate_app/utils/helper/helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';

class CreatePostPage extends StatefulWidget {
  final PrefManager prefManager;
  static final postController = TextEditingController();

  CreatePostPage({required this.prefManager, Key? key}) : super(key: key);

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  FocusNode _textFieldFocusNode = FocusNode();
  File? imageFile;

  Future _pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      // File imgFile = File(image.path);
      setState(() {
        this.imageFile = File(image.path);
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future _pickImageFromCamera() async {
    try {
      final cameraImage =
          await ImagePicker().pickImage(source: ImageSource.camera);
      if (cameraImage == null) return;
      setState(() {
        this.imageFile = File(cameraImage.path);
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<File> storeImage(String imagePath) async {
    final directory = await getApplicationCacheDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Create Post'),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.goNamed(AppRoutes.Feed),
        ),
        actions: [
          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: const Text(
                  'POST',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Poster(
                  userName: widget.prefManager.userProfileName,
                  userPhoto: widget.prefManager.userProfilePhoto,
                ),
              ),
              if (imageFile == null)
                GestureDetector(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: TextField(
                          controller: CreatePostPage.postController,
                          focusNode: _textFieldFocusNode,
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "what's on your mind?",
                            hintStyle: TextStyle(
                                fontSize: 30.sp, fontWeight: FontWeight.w200),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 320.h,
                      )
                    ],
                  ),
                  // child: TextFormField(
                  //   controller: CreatePostPage.postController,
                  //   maxLines: 17,
                  //   decoration: InputDecoration(
                  //       hintText: "Write here...",
                  //       border: InputBorder.none,
                  //       hintStyle: TextStyle(fontSize: 30.sp)),
                  // ),
                  onTap: () {
                    FocusScope.of(context).requestFocus(_textFieldFocusNode);
                  },
                ),
              if (imageFile != null)
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: TextField(
                        controller: CreatePostPage.postController,
                        focusNode: _textFieldFocusNode,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "What's on your mind?"),
                      ),
                    ),
                    SizedBox(
                      height: 400.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Image.file(
                          File(imageFile!.path),
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    
                  ],
                ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          if (imageFile == null)
            Column(
              children: [
                GestureDetector(
                  onTap: () => _pickImage(),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.3.h)),
                    child: Padding(
                      padding: EdgeInsets.all(8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 35.h,
                          ),
                          Text(
                            "Photo/Video",
                            style: TextStyle(fontSize: 20.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.3.h),
                      left: BorderSide(color: Colors.black, width: 0.3.h),
                      right: BorderSide(color: Colors.black, width: 0.3.h),
                    )),
                    child: Padding(
                      padding: EdgeInsets.all(8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 35.h,
                          ),
                          Text(
                            "Tag",
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.3.h),
                      left: BorderSide(color: Colors.black, width: 0.3.h),
                      right: BorderSide(color: Colors.black, width: 0.3.h),
                    )),
                    child: Padding(
                      padding: EdgeInsets.all(8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_city_outlined,
                            size: 35.h,
                          ),
                          Text(
                            "Location",
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.3.h),
                      left: BorderSide(color: Colors.black, width: 0.3.h),
                      right: BorderSide(color: Colors.black, width: 0.3.h),
                    )),
                    child: Padding(
                      padding: EdgeInsets.all(8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.live_tv_outlined,
                            size: 35.h,
                          ),
                          Text(
                            "Live Video",
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.3.h),
                      left: BorderSide(color: Colors.black, width: 0.3.h),
                      right: BorderSide(color: Colors.black, width: 0.3.h),
                    )),
                    child: Padding(
                      padding: EdgeInsets.all(8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.gif,
                            size: 35.h,
                          ),
                          Text(
                            "gif",
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _pickImageFromCamera(),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.3.h),
                      left: BorderSide(color: Colors.black, width: 0.3.h),
                      right: BorderSide(color: Colors.black, width: 0.3.h),
                    )),
                    child: Padding(
                      padding: EdgeInsets.all(8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.camera_alt_outlined,
                            size: 35.h,
                          ),
                          Text(
                            "Camera",
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
