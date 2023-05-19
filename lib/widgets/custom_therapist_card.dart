import 'package:flutter/material.dart';

class CustomTherpistCard extends StatefulWidget {
  final String image;
  final String name;
  final int numStars;
  final VoidCallback onTap;

  const CustomTherpistCard({
    Key? key,
    required this.image,
    required this.name,
    required this.numStars,
    required this.onTap,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomTherpistCardState createState() => _CustomTherpistCardState();
}

class _CustomTherpistCardState extends State<CustomTherpistCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              isSelected = !isSelected;
            },
          );
        },
        child: Container(
          width: 180,
          height: 65,
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: Colors.transparent,
              width: 2,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 12),
                SizedBox(
                  height: 120,
                  width: 180,
                  child: Image.asset(widget.image),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    widget.numStars,
                    (_) => Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                    width: 60,
                    height: 33,
                    decoration: const BoxDecoration(
                      color: Color(0xffa69fbd),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        'INFO',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
