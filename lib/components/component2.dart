import 'package:flutter/material.dart';

class Component2 extends StatelessWidget {
  const Component2({Key? key, required this.leadingIcon, required this.trailingIcon, required this.name}) : super(key: key);
  final IconData leadingIcon, trailingIcon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
               CircleAvatar(
                radius:15,
                backgroundColor: Color.fromARGB(255, 235, 235, 235),
                child: Icon(leadingIcon,color: Color.fromARGB(255, 154, 154, 154), size: 18,),
              ),
              const SizedBox(width: 12,),
              Text(name, style: Theme.of(context).textTheme.titleMedium?.copyWith(color:const Color.fromARGB(255, 28, 28, 28)),),
            ],
          ),

           Icon(trailingIcon, color: Color.fromARGB(255, 154, 154, 154),)
        ],
      ),
    );
  }
}
