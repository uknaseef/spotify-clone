import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import '../../components/common_widgets/common_scaffold_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffoldWidget(
      body: Column(
        children: [
          60.verticalSpace,
          Text(
            "Sign In",
            style: FontPalette.font30Bold.copyWith(color: Color(0xff383838)),
          ),
          22.verticalSpace,
          SupportText(),
          38.verticalSpace,
          CustomTextField(hintText: "Enter Username Or Email"),
          16.verticalSpace,
          CustomTextField(hintText: "Password",isPassword: true,),
        ],
      ),
    );
  }
}

class SupportText extends StatelessWidget {
  const SupportText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: FontPalette.font12Regular.copyWith(color: Colors.black),
        children: [
          const TextSpan(text: 'If You Need Any Support '),
          TextSpan(
            text: 'Click Here',
            style: FontPalette.font12Regular.copyWith(color: Color(0xff38B432)),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle the click action
                    print('Click Here tapped!');
                  },
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: FontPalette.font16Medium.copyWith(color: Color(0xff8D8D8D)),
        contentPadding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 29),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.black87),
        ),
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
                : null,
        // filled: true,
        // fillColor: Colors.transparent,
      ),
    );
  }
}
