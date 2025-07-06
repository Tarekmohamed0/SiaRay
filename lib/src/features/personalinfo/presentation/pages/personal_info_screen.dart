import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:final_project/src/features/personalinfo/data/models/profile_request.dart';
import 'package:final_project/src/features/personalinfo/presentation/bloc/personalinfo_bloc.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:redacted/redacted.dart';

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({super.key});
  final UserModel? userBox = sl<HiveHelper<UserModel>>().get('cachedUser');
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final File? image = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: CustomScrollView(slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios, color: Colors.black)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Personal Info',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: BlocListener<PersonalinfoBloc, PersonalinfoState>(
              listenWhen: (previous, current) =>
                  current is Loading || current is Loaded || current is Error,
              listener: (context, state) {
                if (state is Loading) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else if (state is Loaded) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Profile updated successfully'),
                  ));
                } else if (state is Error) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Error: ${state.message}'),
                  ));
                }
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: 'profile_image',
                        child: Stack(children: [
                          GestureDetector(
                            onTap: () {
                              _pickImage(context, image);
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: RepaintBoundary(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: CachedNetworkImage(
                                    imageUrl: userBox?.user?.image ??
                                        'https://picsum.photos/200/300',
                                    placeholder: (context, url) => Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey.shade200,
                                      ),
                                    ).redacted(
                                        redact: true,
                                        configuration: RedactedConfiguration(
                                          animationDuration:
                                              Duration(milliseconds: 400),
                                          redactedColor: Colors.grey.shade200,
                                        ),
                                        context: context),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      buildCustomField(context,
                          controller: nameController,
                          title: 'Name',
                          placeholder: 'Name'),
                      buildCustomField(context,
                          controller: phoneController,
                          title: 'Phone',
                          placeholder: 'Phone'),
                      buildCustomField(context,
                          controller: cityController,
                          title: 'City',
                          placeholder: 'City'),
                      SizedBox(
                        height: 20.h,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0xff468ED1)),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            minimumSize: WidgetStatePropertyAll(
                                Size(double.infinity, 50)),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              sl<PersonalinfoBloc>().add(UpdateProfile(
                                profileRequest: ProfileRequest(
                                  name: nameController.text,
                                  phone: phoneController.text,
                                  city: cityController.text,
                                  image: sl<PersonalinfoBloc>().image ??
                                      File(''), // Add your image file here
                                ),
                              ));
                            }
                          },
                          child: Text(
                            'Update Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.spMin),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}

Widget buildCustomField(
  BuildContext context, {
  String? title,
  String? placeholder,
  IconData? icon,
  IconData? leading,
  TextEditingController? controller,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ?? 'null',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        SizedBox(
          height: 10.h,
        ),
        CupertinoTextField(
          controller: controller,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff468ED1)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(15),
          placeholder: placeholder,
        ),
      ],
    ),
  );
}

Future<void> _pickImage(BuildContext context, File? image) async {
  final ImagePicker picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    final imageFile = File(pickedFile.path);
    final int imageSize = await imageFile.length();

    final imageSizeInMB = (imageSize / (1024 * 1024)).toStringAsFixed(2);
    print('Image size is: $imageSizeInMB MB');

    if (imageSize > 5 * 1024 * 1024) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
            'الصورة كبيرة جدًا (${imageSizeInMB}MB)، لازم تكون أقل من 5MB.'),
      ));
      return; // عشان تمنع الصورة من إنها تتحط
    }

    sl<PersonalinfoBloc>().image = imageFile;
    print('Selected image: ${imageFile.path}');
  } else {
    print('No image selected');
  }
}
