import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:tharad_task/core/ui/app_images.dart';

class CustomImagePicker extends StatefulWidget {
  final Function(XFile?)? onImageSelected;

  const CustomImagePicker({Key? key, this.onImageSelected}) : super(key: key);

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  XFile? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
      widget.onImageSelected!(image);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: _selectedImage == null
          ? DottedBorder(
              color: const Color(0xFF42867B),
              strokeWidth: 1,
              dashPattern: const [10, 10],
              borderType: BorderType.RRect,
              radius: const Radius.circular(8),
              child: Container(
                width: 350.w,
                height: 87.h,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F7F6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppImage(image: 'camera.svg', width: 24, height: 24),
                      const SizedBox(height: 5),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'الملفات المسموح بيها :  JPEG , PNG\n',
                              style: TextStyle(fontSize: 8),
                            ),
                            TextSpan(
                              text: 'الحد الأقصى : 5MB',
                              style: TextStyle(fontSize: 6),
                            ),
                          ],
                        ),
                        style: TextStyle(
                          color: Color(0xFF998C8C),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  Container(
                    color: Color(0xffF4F7F6),
                    width: 170.w,
                    height: 90.h,
                    child: Image.file(
                      File(_selectedImage!.path),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 6.h,
                    left: 6.w,
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: Container(
                        height: 18.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                          color: const Color(0xff42867B),
                          borderRadius: BorderRadius.circular(75),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: AppImage(
                            image: 'camera.svg',
                            color: Colors.white,
                            width: 12.w,
                            height: 12.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
