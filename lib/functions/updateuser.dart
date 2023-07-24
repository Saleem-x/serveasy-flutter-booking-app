import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project2/bloc/updateuser/updateuser_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:uuid/uuid.dart';

void fetchUserforupdate(BuildContext context) {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User user = firebaseAuth.currentUser!;

  firestore
      .collection('users')
      .doc(user.uid)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;

      String name = data['name'];
      String phone = data['age'];
      String imgageurl = data['profileimage'];

      context
          .read<UpdateuserBloc>()
          .add(GetUserDetailsEvent(name, phone, imgageurl));
    } else {
      log('Document does not exist');
      final name = user.email!.split('@');
      final email = user.email!;
      String image = 'no-img';
      context
          .read<UpdateuserBloc>()
          .add(GetUserDetailsEvent(name[0], email, image));
    }
  }).catchError((error) {
    log('Error getting document: $error');
  });
}

pickprofileimage() async {
  String? image;
  final imagePicked =
      await ImagePicker().pickImage(source: ImageSource.gallery);
  if (imagePicked != null) {
    image = imagePicked.path;
  }
  return image ?? 'no-img';
}

uploadprofileimage(String imagepath, bool isold) async {
  FirebaseStorage storage = FirebaseStorage.instance;

  String imagename = const Uuid().v4();
  Reference storagerefs =
      storage.ref().child('profile-images').child('$imagename.jpg');
  if (isold) {
    UploadTask uploadTask = storagerefs.putString(imagepath);
    TaskSnapshot storageSnapshot =
        await uploadTask.whenComplete(() => {log('completed')});
    String imageUrl = await storageSnapshot.ref.getDownloadURL();
    return imageUrl;
  }
  UploadTask uploadTask = storagerefs.putFile(File(imagepath));
  TaskSnapshot storageSnapshot =
      await uploadTask.whenComplete(() => {log('completed')});
  String imageUrl = await storageSnapshot.ref.getDownloadURL();
  return imageUrl;
}

updateProfile(
    BuildContext context, String name, String phone, String imageurl) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User user = firebaseAuth.currentUser!;

  try {
    await firestore.collection('users').doc(user.uid).update({
      'name': name,
      'age': phone,
      'profileimage': imageurl,
    });
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          content: Row(
            children: [
              const Icon(
                Icons.info,
                color: colorwhite,
              ),
              Text(
                'user details updated successfully',
                style: fontstyle(color: colorwhite),
              )
            ],
          )));
  } catch (e) {
    log(e.toString());
  }
}

Future<void> getAllImagesFromProfileimages(String imagepath) async {
  log(imagepath);
  List<String> imageUrls = [];
  try {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference storageRef = storage.ref().child('profile-images');
    ListResult result = await storageRef.listAll();
    for (Reference ref in result.items) {
      String imageUrl = await ref.getDownloadURL();
      imageUrls.add(imageUrl);
      log(imageUrl);
    }
  } catch (e) {
    log('Error retrieving images from collection: $e');
  }

  for (int i = 0; i < imageUrls.length; i++) {
    if (imageUrls[i] == imagepath) {
      FirebaseStorage storage = FirebaseStorage.instance;
      Reference fileRef = storage.refFromURL(imagepath);

      await fileRef.delete();
      log('yes');
    }
  }
}
