import 'package:flutter/material.dart';

class ButtonSelect extends StatelessWidget {
  final String label;
  final String index;
  final String route;
  const ButtonSelect({
    Key? key,
    required this.label,
    required this.index,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(route),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.withOpacity(0.3),
                  ),
                  child: Center(
                      child: Text(
                    index,
                    style: const TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w600),
                  )),
                ),
                const SizedBox(width: 10),
                Text(label, style: const TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
