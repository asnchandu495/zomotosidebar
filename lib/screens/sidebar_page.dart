import 'package:flutter/material.dart';
import 'package:sidebardynamic/components/component1.dart';
import 'package:sidebardynamic/components/component2.dart';
import 'package:sidebardynamic/components/components.dart';
import 'package:sidebardynamic/utils/constants.dart';

class SideBarPage extends StatefulWidget {
  const SideBarPage({Key? key}) : super(key: key);

  @override
  State<SideBarPage> createState() => _SideBarPageState();
}

class _SideBarPageState extends State<SideBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        surfaceTintColor: backgroundColor,
        flexibleSpace: Container(
          height: horizontal / 10,
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width ,
        child:  Drawer(
          backgroundColor: backgroundColor,
          child: Container(
            width: MediaQuery.of(context).size.width ,
            color: backgroundColor,
            padding: const EdgeInsets.symmetric(horizontal: horizontal),
            child:   Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
                    decoration:    BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.black12,
                        //       offset: Offset.zero,
                        //       blurRadius: 1,
                        //       spreadRadius: 1,
                        //   )
                        // ],
                        border: Border.all(color: borderColor),
                        color: defaultColor,
                        borderRadius: const BorderRadius.all(Radius.circular(radius))
                    ),
                    // margin: const EdgeInsets.only(top: 10),
                    child:  Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Jhon Doe", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: fontWeight),),
                            Row(
                              children: [
                                Text("View activity", style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(fontWeight: fontWeight, color: profileActivityColor, fontSize: profileActivityFontSize),),
                                const Icon(Icons.arrow_right, color: profileActivityColor,size: profileActivityIconSize,)
                              ],
                            )
                          ],
                        ),
                          const CircleAvatar(
                          radius: profileCircleRadius,
                          backgroundColor: profileCircleColor,
                          // backgroundImage: AssetImage("assets/profilepic.jpeg",),
                            child: Icon(Icons.person, size: circularIconSize,color:profileIconColor ,),
                        )
                      ],
                    ),
                  ),
                ),
                // const SizedBox(height: 15,),
               Expanded(
                 flex: 11,
                   child: ListView(
                     children: [
                       const SizedBox(height: sizedBoxHeight,),
                       const Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Components(icon: Icons.favorite_outline, name: "Likes", ),
                           Components(icon: Icons.notifications_outlined, name: "Notifications"),
                           Components(icon: Icons.settings_outlined, name: "Settings"),
                           Components(icon: Icons.credit_card, name: "Payments"),
                         ],
                       ),
                       const SizedBox(height: sizedBoxHeight,),
                       const Component1(name: 'Choose Language', leadingIcon: Icons.g_translate_outlined, trailingIcon: Icons.keyboard_arrow_right_outlined,),
                       //       Container(
                       //         decoration:   const BoxDecoration(
                       //             boxShadow: [
                       //               BoxShadow(
                       //                 color: Colors.black12,
                       //                 offset: Offset.zero,
                       //                 blurRadius: 3,
                       //                 spreadRadius: 2,
                       //               )
                       //             ],
                       //             color: Colors.white,
                       //             borderRadius: BorderRadius.all(Radius.circular(12))
                       //         ),
                       //         padding: const EdgeInsets.all(15),
                       //         child:   Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       //           children: [
                       //             Row(
                       //               children: [
                       //                 const CircleAvatar(
                       //                   radius:15,
                       //                   backgroundColor: Colors.black12,
                       //                   child: Icon(Icons.g_translate_outlined, size: 18,),
                       //                 ),
                       //                 const SizedBox(width: 10,),
                       //                 Text("Choose Language", style: Theme.of(context).textTheme.titleMedium,),
                       //               ],
                       //             ),
                       //
                       //             const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.black26,)
                       //           ],
                       //         ),
                       //       ),
                       const SizedBox(height: sizedBoxHeight,),
                       const Component1(name: 'Your Rating', leadingIcon: Icons.favorite_outline, trailingIcon: Icons.keyboard_arrow_right_outlined,),
                       const SizedBox(height: sizedBoxHeight,),
                       // Container(
                       //   decoration:    BoxDecoration(
                       //       // boxShadow: const [
                       //       //   BoxShadow(
                       //       //     color: Colors.black12,
                       //       //     offset: Offset.zero,
                       //       //     blurRadius: 3,
                       //       //     spreadRadius: 2,
                       //       //   )
                       //       // ],
                       //       border: Border.all(color: Colors.black12),
                       //       color: Colors.white,
                       //       borderRadius: const BorderRadius.all(Radius.circular(12))
                       //   ),
                       //   padding: const EdgeInsets.all(15),
                       //   child:   Row(
                       //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       //     children: [
                       //       Row(
                       //         children: [
                       //           const CircleAvatar(
                       //             radius:15,
                       //             backgroundColor: Color.fromARGB(255, 235, 235, 235),
                       //             child: Icon(Icons.star_outline_outlined, size: 18,color: Color.fromARGB(255, 154, 154, 154)),
                       //           ),
                       //           const SizedBox(width: 10,),
                       //           Text("Your rating", style: Theme.of(context).textTheme.titleMedium,),
                       //         ],
                       //       ),
                       //       Row(
                       //         children: [
                       //           Container(
                       //             width: 60,
                       //             height: 30,
                       //             decoration:   const BoxDecoration(
                       //                 color: Color.fromARGB(255, 235, 235, 235),
                       //                 borderRadius: BorderRadius.all(Radius.circular(12))
                       //             ),
                       //             child: const Row(
                       //               mainAxisAlignment: MainAxisAlignment.center,
                       //               children: [
                       //                 Text("--"),
                       //                 Icon(Icons.star_rate_rounded, color: Color.fromARGB(255, 154, 154, 154),),
                       //               ],
                       //             ),
                       //           ),
                       //           const Icon(Icons.keyboard_arrow_right_outlined, color: Color.fromARGB(255, 154, 154, 154),),
                       //         ],
                       //       ),
                       //     ],
                       //   ),
                       // ),
                       // const SizedBox(height: 15,),
                       Container(
                         padding: const EdgeInsets.symmetric(vertical: vertical * 2),
                         decoration:     BoxDecoration(
                             // boxShadow: [
                             //   BoxShadow(
                             //     color: Colors.black12,
                             //     offset: Offset.zero,
                             //     blurRadius: 1,
                             //     spreadRadius: 1,
                             //   )
                             // ],
                             border: Border.all(color: borderColor),
                             color: defaultColor,
                             borderRadius: const BorderRadius.all(Radius.circular(radius))
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Container(
                                   decoration:   BoxDecoration(
                                       color:  sideItemColor,
                                       border: Border.all(color: sideItemColor),
                                       borderRadius: const BorderRadius.only(topRight: Radius.circular(radius), bottomRight: Radius.circular(radius))
                                   ),
                                   height: horizontal * 3,
                                   width: horizontal / 2.5,
                                 ),
                                 const SizedBox(width: sizedBoxHeight / 1.5,),
                                 Text("Food Orders", style: Theme.of(context).textTheme.titleMedium,),
                               ],
                             ),
                             const SizedBox(height: sizedBoxHeight,),
                             Container(
                               padding:  EdgeInsets.zero,
                               child: const Column(
                                 children: [
                                   Component2(leadingIcon: Icons.bookmark_border, trailingIcon: Icons.keyboard_arrow_right_outlined, name: "Your orders"),
                                   // Container(
                                   //   padding: const EdgeInsets.symmetric(horizontal: 12),
                                   //   child: Row(
                                   //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   //     children: [
                                   //       Row(
                                   //         children: [
                                   //           const CircleAvatar(
                                   //             radius:15,
                                   //             backgroundColor: Color.fromARGB(255, 235, 235, 235),
                                   //             child: Icon(Icons.bookmark_border,color: Color.fromARGB(255, 154, 154, 154), size: 18,),
                                   //           ),
                                   //           const SizedBox(width: 12,),
                                   //           Text("Your orders", style: Theme.of(context).textTheme.titleMedium,),
                                   //         ],
                                   //       ),
                                   //       const Icon(Icons.keyboard_arrow_right_outlined, color: Color.fromARGB(255, 154, 154, 154),)
                                   //     ],
                                   //   ),
                                   // ),
                                   SizedBox(height: sizedBoxHeight / 1.5,),
                                   Divider(indent: dividerIndent,height: dividerHeight,thickness: dividerThickness,),
                                   SizedBox(height: sizedBoxHeight / 1.5,),
                                   Component2(leadingIcon: Icons.favorite_outline, trailingIcon: Icons.keyboard_arrow_right_outlined, name: "Favorite orders"),
                                   // Container(
                                   //   padding: const EdgeInsets.symmetric(horizontal: 12),
                                   //   child: Row(
                                   //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   //     children: [
                                   //       Row(
                                   //         children: [
                                   //           const CircleAvatar(
                                   //             radius:15,
                                   //             backgroundColor:Color.fromARGB(255, 235, 235, 235),
                                   //             child: Icon(Icons.favorite_outline,color: Color.fromARGB(255, 154, 154, 154), size: 18,),
                                   //           ),
                                   //           const SizedBox(width: 12,),
                                   //           Text("Favorite orders", style: Theme.of(context).textTheme.titleMedium,),
                                   //         ],
                                   //       ),
                                   //       const Icon(Icons.keyboard_arrow_right_outlined, color: Color.fromARGB(255, 154, 154, 154),)
                                   //     ],
                                   //   ),
                                   // ),
                                   SizedBox(height: sizedBoxHeight / 1.5,),
                                   Divider(indent: dividerIndent,height: dividerHeight,thickness: dividerThickness,),
                                   SizedBox(height: sizedBoxHeight / 1.5,),
                                   Component2(leadingIcon: Icons.library_books_outlined, trailingIcon: Icons.keyboard_arrow_right_outlined, name: "Address book"),
                                   // Container(
                                   //   padding: const EdgeInsets.symmetric(horizontal: 12),
                                   //   child: Row(
                                   //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   //     children: [
                                   //       Row(
                                   //         children: [
                                   //           const CircleAvatar(
                                   //             radius:15,
                                   //             backgroundColor: Color.fromARGB(255, 235, 235, 235),
                                   //             child: Icon(Icons.library_books_outlined,color: Color.fromARGB(255, 154, 154, 154), size: 18,),
                                   //           ),
                                   //           const SizedBox(width: 12,),
                                   //           Text("Address book", style: Theme.of(context).textTheme.titleMedium,),
                                   //         ],
                                   //       ),
                                   //       const Icon(Icons.keyboard_arrow_right_outlined, color: Color.fromARGB(255, 154, 154, 154),)
                                   //     ],
                                   //   ),
                                   // ),
                                   SizedBox(height: sizedBoxHeight / 1.5,),
                                   Divider(indent: dividerIndent,height: dividerHeight,thickness: dividerThickness,),
                                   SizedBox(height: sizedBoxHeight / 1.5,),
                                    Component2(leadingIcon: Icons.help_outline, trailingIcon: Icons.keyboard_arrow_right_outlined, name: "Online ordering help")
                                   // Container(
                                   //   padding: const EdgeInsets.symmetric(horizontal: 12),
                                   //   child: Row(
                                   //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   //     children: [
                                   //       Row(
                                   //         children: [
                                   //           const CircleAvatar(
                                   //             radius:15,
                                   //             backgroundColor: Color.fromARGB(255, 235, 235, 235),
                                   //             child: Icon(Icons.help_outline,color: Color.fromARGB(255, 154, 154, 154), size: 18,),
                                   //           ),
                                   //           const SizedBox(width: 12,),
                                   //           Text("Online ordering help", style: Theme.of(context).textTheme.titleMedium),
                                   //         ],
                                   //       ),
                                   //       const Icon(Icons.keyboard_arrow_right_outlined, color: Color.fromARGB(255, 154, 154, 154),)
                                   //     ],
                                   //   ),
                                   // ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                        const SizedBox(height: sizedBoxHeight,),
                        const Component1(name: 'About', leadingIcon: Icons.info_outline, trailingIcon: Icons.keyboard_arrow_right_outlined,),
                        const SizedBox(height: sizedBoxHeight,),
                        const Component1(name: 'Send feedback', leadingIcon: Icons.rate_review_outlined, trailingIcon: Icons.keyboard_arrow_right_outlined,),
                        const SizedBox(height: sizedBoxHeight,),
                        const Component1(name: 'Rate us on play store', leadingIcon: Icons.star_outline, trailingIcon: Icons.keyboard_arrow_right_outlined,),
                        const SizedBox(height: sizedBoxHeight,),
                        const Component1(name: 'Logout', leadingIcon: Icons.power_settings_new_outlined, trailingIcon: Icons.keyboard_arrow_right_outlined,),
                        const SizedBox(height: sizedBoxHeight * 5,),
                     ],
                   )
               )
                // Container(
                //   decoration:   const BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black12,
                //           offset: Offset.zero,
                //           blurRadius: 3,
                //           spreadRadius: 2,
                //         )
                //       ],
                //       color: Colors.white,
                //       borderRadius: BorderRadius.all(Radius.circular(12))
                //   ),
                //   padding: const EdgeInsets.all(15),
                //   child:   Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Row(
                //         children: [
                //           const CircleAvatar(
                //             radius:15,
                //             backgroundColor: Colors.black12,
                //             child: Icon(Icons.g_translate_outlined, size: 18,),
                //           ),
                //           const SizedBox(width: 10,),
                //           Text("Choose Language", style: Theme.of(context).textTheme.titleMedium,),
                //         ],
                //       ),
                //
                //       const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.black26,)
                //     ],
                //   ),
                // ),
                // Expanded(
                //     flex: 3,
                //     child:
                //   Container(
                //     height: 25,
                //     color: Colors.white10,
                //     // decoration: const BoxDecoration(
                //     //   // color: Colors.white
                //     // ),
                //   )
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
