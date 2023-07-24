import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/updateuser/updateuser_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/updateuser.dart';

import 'package:project2/ui/widgets/textfieldwidget.dart';

import '../../functions/accountinfo.dart';

class ProfileOverView extends StatefulWidget {
  final String name;
  final String phone;
  const ProfileOverView({super.key, required this.name, required this.phone});

  @override
  State<ProfileOverView> createState() => _ProfileOverViewState();
}

final namecontroller = TextEditingController();
final phonecontroller = TextEditingController();
final _updateuserformkey = GlobalKey<FormState>();

class _ProfileOverViewState extends State<ProfileOverView> {
  @override
  void initState() {
    namecontroller.text = widget.name;
    phonecontroller.text = widget.phone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      fetchUserforupdate(context);
      context.read<UpdateuserBloc>().add(ImageSelectEvent(null));
    });
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<UpdateuserBloc, UpdateuserState>(
          builder: (context, state) {
            return Form(
              key: _updateuserformkey,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: size.height / 4,
                        width: size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Rectanglewavebg.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 50,
                        right: 10,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    String imagepath = await pickprofileimage();
                                    // ignore: use_build_context_synchronously
                                    context
                                        .read<UpdateuserBloc>()
                                        .add(ImageSelectEvent(imagepath));
                                    log(state.imageurl);
                                  },
                                  child: CircleAvatar(
                                    radius: 50,
                                    child: SizedBox.fromSize(
                                      size: size,
                                      child: ClipOval(
                                        child: state.selectedimage != null
                                            ? state.selectedimage == 'no-img'
                                                ? Image.asset(
                                                    'assets/images/profiletemp.jpg')
                                                : Image.file(
                                                    File(state.selectedimage!),
                                                    fit: BoxFit.cover,
                                                  )
                                            : state.imageurl == 'no-img'
                                                ? Image.asset(
                                                    'assets/images/profiletemp.jpg')
                                                : Image.network(
                                                    state.imageurl,
                                                    fit: BoxFit.cover,
                                                  ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: -15,
                                  top: -5,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.camera,
                                      size: 20,
                                      color: colorwhite,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.name,
                                  overflow: TextOverflow.ellipsis,
                                  style: fontstyle(
                                      color: colorwhite, fontSize: 20),
                                ),
                                Text(
                                  state.phone,
                                  style: fontstyle(
                                      color: colorwhite, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      TextFieldWidget(
                          label: 'username',
                          ispass: false,
                          controller: namecontroller,
                          type: TextInputType.text),
                      TextFieldWidget(
                          label: 'phone',
                          ispass: false,
                          controller: phonecontroller,
                          type: TextInputType.text),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          side: const BorderSide(
                            color: colorblue,
                            width: 2.0,
                          ),
                        ),
                        onPressed: () async {
                          if (_updateuserformkey.currentState!.validate()) {
                            if (state.selectedimage != null) {
                              String imageurl = await uploadprofileimage(
                                  state.selectedimage!, false);
                              // ignore: use_build_context_synchronously
                              updateProfile(context, namecontroller.text,
                                  phonecontroller.text, imageurl);
                              // ignore: use_build_context_synchronously
                              context
                                  .read<UpdateuserBloc>()
                                  .add(ImageSelectEvent(state.selectedimage));
                            }
                          }
                          // ignore: use_build_context_synchronously
                          fetchUserforupdate(context);
                          fetchUserData(context);
                        },
                        child: Text(
                          'update',
                          style: fontstyle(color: textcolorblue),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
