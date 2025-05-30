import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttter_9/ui/widgets/screen_background.dart';
import 'package:fluttter_9/ui/widgets/tm_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(
        fromProfileScreen: true,
      ),
        body: ScreenBackground(
          child: SingleChildScrollView(
            child: Padding(
              key: _formKey,
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      'Update Profile',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    
                    
                    _buildPhotoPickerWidget(),
                    const SizedBox(
                      height: 24,
                    ),
                    
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailTEController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),

                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,

                      controller: _firstNameTEController,
                      decoration: const InputDecoration(
                        hintText: 'First Name',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,

                      controller: _lastNameTEController,
                      decoration: const InputDecoration(
                          hintText: 'Last Name'
                      ),
                    ),
                    const SizedBox(height: 8,),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: _mobileTEController,
                      decoration: const InputDecoration(
                          hintText: 'Mobile'
                      ),
                    ),
                    const SizedBox(height: 8,),
                    TextFormField(

                      controller: _passwordTEController,
                      decoration: InputDecoration(
                          hintText: 'Password'
                      ),
                    ),
                    const SizedBox(height: 25,),
                    ElevatedButton(
                        onPressed: _onTapSubmitButton,
                        child: const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 32,),

                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildPhotoPickerWidget() {
    return GestureDetector(
      onTap: _onTapPhotoPicker,
      child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              )
                            ),
                            alignment: Alignment.center,
                            child: const Text('Photo',style: TextStyle(color: Colors.white),),
                          ),
                          const SizedBox(width: 8,),
                          Text('Select Your Photo')
                        ],
                      ),
                    ),
    );
  }

  void _onTapPhotoPicker(){

  }

  void _onTapSubmitButton(){}

  void _onTapForgotPassword(){}


  void _onTapSignInButton(){
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();

    super.dispose();
  }

}





