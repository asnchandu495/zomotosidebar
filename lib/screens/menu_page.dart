import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sidebardynamic/models/drawermodel.dart';


class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  DrawerMenu data = drawerMenu;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *0.8,
      child: Drawer(
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.lightBlueAccent,
        shadowColor: Colors.lightBlueAccent,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration:const  BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.3,
              0.9
            ], colors: [
              Colors.lightBlueAccent,
              Colors.blue,

            ]),

          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child:
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerTheme: const DividerThemeData(color: Colors.transparent),
                    ),
                    child:
                    DrawerHeader(
                      margin:const EdgeInsets.only(bottom: 0),
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration:  const BoxDecoration(

                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Colors.lightBlueAccent,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1, 12),
                              blurRadius: 3,
                              spreadRadius: -5,
                            ),

                          ],


                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(

                            backgroundImage: AssetImage('assets/${data.photo}',),
                            backgroundColor: Colors.white,
                            radius: 50,
                            // child: Image.asset('assets/${data.photo}'),
                          ),
                          const SizedBox(height: 3,),
                          Text("${data.firstName!} ${data.lastName!}", style: const TextStyle(color: Colors.white, fontSize: 20),),
                          const SizedBox(height: 3,),
                          Text(data.email!, style: const TextStyle(color: Colors.white, fontSize: 16),),
                          const SizedBox(height: 3,),
                          Text(data.phoneNumber!, style: const TextStyle(color: Colors.white, fontSize: 16),),
                          const SizedBox(height: 5,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                  child:
                  _buildDrawer()
              ),
            ],
          ),
        //   ListView(
        //
        //     padding: EdgeInsets.zero,
        //     // physics: const AlwaysScrollableScrollPhysics(),
        //     // scrollDirection: Axis.vertical,
        //
        //     children: <Widget>[
        //
        //   DrawerHeader(
        //   margin:const EdgeInsets.only(bottom: 0),
        //   padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        //   decoration: const BoxDecoration(
        //     color: Colors.lightBlueAccent,
        //     // boxShadow: [
        //     //   BoxShadow(
        //     //       color: Colors.blue.withOpacity(0.5),
        //     //       offset: Offset(0, 25),
        //     //       blurRadius: 3,
        //     //       spreadRadius: -10)
        //     // ],
        //
        //     borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(15),
        //       bottomRight: Radius.circular(15),
        //
        //     ),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black12,
        //         offset: Offset(1, 12),
        //         blurRadius: 3,
        //         spreadRadius: -5,
        //       ),
        //
        //     ]
        //
        //   ),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       CircleAvatar(
        //
        //         backgroundImage: AssetImage('assets/${data.photo}',),
        //           backgroundColor: Colors.white,
        //           radius: 35,
        //           // child: Image.asset('assets/${data.photo}'),
        //       ),
        //
        //
        //       Text(data.firstName! +" "+data.lastName!, style: TextStyle(color: Colors.white, fontSize: 20),),
        //       Text(data.email!, style: TextStyle(color: Colors.white, fontSize: 16),),
        //       Text(data.phoneNumber!, style: TextStyle(color: Colors.white, fontSize: 16),),
        //       SizedBox(height: 5,),
        //     ],
        //   ),
        // ),
        //
        //       _buildDrawer(),
        //     ],
        //   ),


        ),

      ),
    );
  }

  Widget _buildDrawer( ){

    return ListView.separated(

      padding: const EdgeInsets.only(top: 0),
      itemCount: data.menuItems!.length,
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {

        return _buildMenuList(data.menuItems![index]);

      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: 1, thickness: 1.5,indent: 60.0,color: Colors.white,);
        },
    );
  }


  Widget _buildMenuList(MenuItems menuItem) {
    // print(menuItem);

    double lp = 0;
    double fontSize = 20;
    var fontWeight = FontWeight.w400;
    if((menuItem.sublist ?? []).isEmpty ){
      return Builder(
          builder:(context) {
            return
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: lp),
                  child: ListTile(
                    leading: ConstrainedBox(
                     constraints: const BoxConstraints(
                       maxHeight: 30,
                       maxWidth: 30,
                       minHeight: 30,
                       minWidth: 30,

                     ),
                     child: Image.asset('assets/${menuItem.images}'),
                   ),
                    title: Text(
                      menuItem.title ?? "",
                      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight,color: Colors.white),
                    ),
                  ),
                ),
                onTap: (){
                  // Navigator.pop(context);
                  showToast(menuItem);
                },
              );
          });
    } else {
      return Padding(
        padding: EdgeInsets.only(left: lp),
        child:  ExpansionTile(
          collapsedIconColor: Colors.white,
          shape: const Border(),
          leading: ConstrainedBox(
            constraints: const BoxConstraints(
                maxHeight: 30,
                maxWidth: 30,
                minHeight: 30,
                minWidth: 30
            ),
            child: Image.asset('assets/${menuItem.images}'),
          ),
          textColor: Colors.black,
          iconColor: Colors.white,
          title:  Text(
            menuItem.title!,
            style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: Colors.white),
          ),
          // children: (menuItem.sublist ?? []).map(_buildMenuList).toList(),
          // children: [
          //
          //   _subDrawer(menuItem),
          // ],
          children: menuItem.sublist!.map<Widget>((subItem) => _buildMenuSubList(subItem)).toList(),

        ),
      );

    }


  }

  void showToast(menuItem){
    Fluttertoast.showToast(
        msg: 'Clicked on : ${menuItem.title}',
        toastLength: Toast.LENGTH_SHORT,

        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  Widget _subDrawer(MenuItems  menuItem){

    return ListView.separated(

      padding: const EdgeInsets.only(top: 0),
      itemCount: menuItem.sublist!.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      itemBuilder: (BuildContext context, int index) {

        return _buildMenuSubList(menuItem.sublist![index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        const DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.green,
          ),);
     return const Divider(height: 5, thickness: 5,indent: 60.0, color: Colors.white,);


      },
    );
  }
  Widget _buildMenuSubList(Sublist menuItem) {
    // print(menuItem);

    double lp = 60;
    double fontSize = 19;
    var fontWeight = FontWeight.w400;

      return Builder(
          builder:(context) {
            return
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: lp),
                  child: Container(
                    decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 1))),
                    child: ListTile(
                      // leading: ConstrainedBox(
                      //   constraints: BoxConstraints(
                      //       maxHeight: 30,
                      //       maxWidth: 30,
                      //       minHeight: 30,
                      //       minWidth: 30
                      //   ),
                      //   child: Image.asset('assets/${menuItem.images}'),
                      // ),
                     shape:const Border(
                       top: BorderSide()
                     ),
                      title: Text(
                        menuItem.title ?? "",
                        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  // Navigator.pop(context);
                  showToast(menuItem);

                  // showToast(menuItem);
                },
              );
          });



  }
}


