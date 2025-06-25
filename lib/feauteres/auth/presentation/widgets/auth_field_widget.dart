import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthFieldWidget extends StatefulWidget {
  const AuthFieldWidget({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.isPasswordField = false, // 👈 default: false
  });

  final TextEditingController controller;
  final String hintText;
  final String prefixIcon;
  final bool isPasswordField;

  @override
  State<AuthFieldWidget> createState() => _AuthFieldWidgetState();
}

class _AuthFieldWidgetState extends State<AuthFieldWidget> {
  late FocusNode _focusNode;
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _obscureText = widget.isPasswordField;

    _focusNode.addListener(() {
      setState(() {});
    });

    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    widget.controller.dispose();
    super.dispose();
  }

  bool get _isFocused => _focusNode.hasFocus;
  bool get _hasText => widget.controller.text.isNotEmpty;

  Color get _iconColor {
    if (_hasText) return Colors.black;
    if (_isFocused) return const Color(0xff6A5AE0);
    return const Color(0xff9E9E9E);
  }

  Color get _fillColor =>
      _isFocused ? const Color(0xffEEF0FF) : Colors.grey.shade50;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      controller: widget.controller,
      obscureText: _obscureText,
      cursorHeight: 16,
      cursorColor: Colors.black,
      cursorWidth: 1.5,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color(0xff9E9E9E),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SvgPicture.asset(widget.prefixIcon, color: _iconColor),
        ),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: SvgPicture.asset(
                  _obscureText
                      ? 'assets/icons/eye_show.svg'
                      : 'assets/icons/eye_off.svg',
                  color: _iconColor,
                ),
              )
            : null,
        fillColor: _fillColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xff6A5AE0)),
        ),
      ),
    );
  }
}
