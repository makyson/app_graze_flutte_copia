import 'package:flutter/material.dart';










class CustomTextField extends StatelessWidget {
  final Color? bordercolor;
  final double top;
  final double left;
  final double right;
  final double bottom;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String labelText;
  final bool obscureText;
  final double border;
  final String? Function(String?)? validator;

  const CustomTextField({super.key,
    this.top=0,
    this.left=0,
    this.right=0,
    this.bottom=0,
    this.bordercolor,
    required this.controller,
    this.focusNode,
    required this.labelText,
    this.obscureText = false,
    this.border=15.0,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(left, top, right, bottom),
      child: TextFormField(

        controller: controller,
        focusNode: focusNode,
        autofocus: true,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color:  Color.fromRGBO(25, 25, 25, 70),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(border),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(border),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(border),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(border),
          ),
        ),
        style: Theme.of(context).textTheme.bodyLarge,
        validator: validator,
      ),
    );
  }
}