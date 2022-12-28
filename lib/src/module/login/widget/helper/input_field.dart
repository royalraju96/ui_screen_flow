import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField(
      {super.key,
      required this.hint,
      required this.icon,
      required this.enteredValue});

  final String hint;
  final IconData icon;

  final Map<String, dynamic> enteredValue;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            onChanged: (value) {
              setState(() {
                widget.enteredValue[widget.hint] = value;
              });
            },
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white,
                hintText: widget.hint,
                prefixIcon: Icon(widget.icon)),
          ),
        ),
      ),
    );
  }
}
