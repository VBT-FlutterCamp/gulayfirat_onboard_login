import 'package:flutter/material.dart';
import 'package:onboard/product/companents/colors/app_colors.dart';
import '../../../../product/companents/size/app_size.dart';
import '../../../../product/widgets/text_form_widget.dart';
import '../../../home_screen/view/home_screen.dart';
import 'build_login_button_widget.dart';

class BuildTextFormFieldWidgets extends StatefulWidget {
  BuildTextFormFieldWidgets({Key? key}) : super(key: key);

  @override
  _BuildTextFormFieldWidgetsState createState() =>
      _BuildTextFormFieldWidgetsState();
}

class _BuildTextFormFieldWidgetsState extends State<BuildTextFormFieldWidgets> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool showPassword = true;
  showPass() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  isValidation() {
    if (formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormFieldWidget(
              controller: _emailController,
              hintText: "email",
              labelText: "Email",
              prefixIcon: Icon(
                Icons.email,
                color: AppColors.userIconColor,
              ),
              radius: 20,
              height: SizeHelper.getHeightSize(context) * 0.07,
              validator: (value) {
                if (!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                        .hasMatch(_emailController.text) &&
                    value!.isEmpty) {
                  return "email format is incorrect";
                }
              },
            ),
            SizedBox(height: SizeHelper.getHeightSize(context) * 0.01),
            TextFormFieldWidget(
              controller: _passwordController,
              obscureText: showPassword,
              hintText: "password",
              labelText: "Password",
              prefixIcon: Icon(
                Icons.lock,
                color: AppColors.userIconColor,
              ),
              radius: 20,
              height: SizeHelper.getHeightSize(context) * 0.07,
              validator: (value) {
                if (value!.length > 6) {
                  return "Password length must be longer than 6";
                }
              },
              suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      showPass();
                    });
                  },
                  child: Icon(
                    showPassword ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.userIconColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
