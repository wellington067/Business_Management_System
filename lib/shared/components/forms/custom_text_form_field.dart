import 'package:business_management_system/shared/constants/style_constantes.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      this.onChanged,
      this.label,
      this.controller,
      this.keyboardType,
      this.hintText,
      this.isPassword,
      this.icon,
      this.isBordered,
      this.decoration,
      this.enabled,
      this.validateForm, this.maxLength});

  final Function? validateForm;
  final String? label;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final Function(String)? onChanged;
  final IconData? icon;
  final int? maxLength;
  final bool? isBordered;
  final bool? enabled;
  final InputDecoration? decoration;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword ?? false;
    widget.controller?.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    widget.controller?.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
       
        obscureText: _obscureText,
        controller: widget.controller,
        enabled: widget.enabled ?? true,
        style: widget.enabled == false
            ? TextStyle(color: Colors.grey.withOpacity(0.6))
            : null,
        decoration: (widget.decoration ?? const InputDecoration()).copyWith(
          filled: true,
          fillColor: Colors.grey[300],
          disabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(color: Color.fromARGB(0, 0, 0, 0))),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(0, 0, 0, 0)),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          prefixIcon: widget.icon == null ? null : Icon(widget.icon),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: kErrorColor )),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(12.0),
            
          ),
          errorStyle: const TextStyle(
            color: kErrorColor,
            backgroundColor: Color.fromARGB(0, 255, 255, 255),
          ),
          labelText: widget.label,
          hintText: widget.hintText,
          suffixIcon: widget.isPassword == true &&
                  widget.controller?.text.isNotEmpty == true
              ? InkWell(
                  onTap: _toggleVisibility,
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                )
              : null,
        ),
        validator: (value) => widget.validateForm!(value),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void updateObscureText() {
    setState(() {
      _obscureText = widget.controller?.text.isEmpty ?? true;
    });
  }
}