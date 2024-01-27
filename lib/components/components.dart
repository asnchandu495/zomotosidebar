import 'package:flutter/material.dart';

class Components extends StatelessWidget {
  const Components({Key? key, required this.icon, required this.name}) : super(key: key);
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(5),
      decoration:    BoxDecoration(

          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     offset: Offset.zero,
          //     blurRadius: 1,
          //     spreadRadius: 1,
          //   )
          // ],
          border: Border.all(color: Colors.black12),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),

      width: 88 ,
      height: 90,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(icon, size: 28,color: const Color.fromARGB(255, 28, 28, 28),),
          const SizedBox(height: 15, ),
          Text(name,style: Theme.of(context).textTheme.bodySmall
              ?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: const Color.fromARGB(255, 28, 28, 28)),)
        ],
      ),
    );
  }
}
