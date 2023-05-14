import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class CustomContainer extends StatefulWidget {
  CustomContainer(
      {Key? key,
      this.height,
      this.width,
      this.text,
      this.icon,
      this.onSelected})
      : super(key: key);

  final double? height;
  final double? width;
  final String? text;
  final IconData? icon;
  final Function(bool)? onSelected;

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
          });
          widget.onSelected?.call(_isSelected);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: _isSelected ? const Color(0xff9b94b0) : Colors.white,
            border: Border.all(
              color: _isSelected
                  ? const Color(0xff9b94b0)
                  : const Color(0xffbebcc7),
              width: 3,
            ),
          ),
          height: widget.height,
          width: widget.width,
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Text(
                widget.text!,
                style: const TextStyle(
                    color: Color(0xffbebcc7),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              const Spacer(
                flex: 1,
              ),
              FaIcon(
                widget.icon,
                size: 42,
                color: const Color(0xffbebcc7),
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
