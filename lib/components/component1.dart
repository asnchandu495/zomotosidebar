import 'package:flutter/material.dart';

class Component1 extends StatelessWidget {
  const Component1({Key? key,  required this.name, required this.leadingIcon, required this.trailingIcon}) : super(key: key);
  final IconData leadingIcon, trailingIcon;
  final String name;

  @override
  Widget build(BuildContext context) {
    bool isTrue = true;
    return Container(
      decoration:    BoxDecoration(
          // boxShadow: const [
          //   BoxShadow(
          //     color: Colors.black12,
          //     offset: Offset.zero,
          //     blurRadius: 1,
          //     spreadRadius: 1,
          //   )
          // ],
          border: Border.all( color: Colors.black12) ,
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      padding: const EdgeInsets.all(15),
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
               CircleAvatar(
                radius:15,
                backgroundColor: const Color.fromARGB(255, 235, 235, 235),
                child: Icon(leadingIcon, size: 18,color: const Color.fromARGB(255, 154, 154, 154),),
              ),
              const SizedBox(width: 10,),
              Text(name, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: const Color.fromARGB(255, 28, 28, 28)),),
            ],
          ),
          Row(
            children: [
              Visibility(
                visible: name == "Your Rating",
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 30,
                      decoration:   const BoxDecoration(
                          color: Color.fromARGB(255, 235, 235, 235),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("--"),
                          Icon(Icons.star_rate_rounded, color: Color.fromARGB(255, 154, 154, 154),),
                        ],
                      ),
                    ),
                    // const Icon(Icons.keyboard_arrow_right_outlined, color: Color.fromARGB(255, 154, 154, 154),),
                  ],
                ),
              ),
              Icon(trailingIcon, color: const Color.fromARGB(255, 154, 154, 154))
            ],
          ),
        ],
      ),
    );
  }
}
