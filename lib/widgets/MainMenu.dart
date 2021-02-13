import 'package:flutter/material.dart';

import 'package:kids_world/widgets/MenuItems.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: (){
          //print('inside onPressed..');
          showDialog(
              barrierColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: AlertDialog(
                    backgroundColor: Colors.transparent,
                    content: Container(
                      width: double.maxFinite,
                      height: 100.0,
                      child: menuItems(context),
                    ),
                  ),
                );
              }
          );
          // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MenuScreen(items: MenuItemsList().items)));
          //MenuScreen(items: MenuItemsList().items, context: context);
          //MenuLayout().build(context),
          // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WordMatch()));
        },
        elevation: 10.0,
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        child: Icon(
          Icons.menu,
          size: 35.0,
        ),
      ),
      padding: EdgeInsets.only(top: 300.0),
    );
    // return Scaffold(
    //   floatingActionButton: FloatingActionButton(
    //     child: Icon(Icons.menu, color: Colors.redAccent),
    //     onPressed: (){},
    //   ),
    //   bottomNavigationBar: BottomAppBar(
    //     color: Colors.yellow,
    //     child: Container(height: 50.0),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    // );
  }
}

// class MenuLayout extends StatelessWidget {
//   @override
//   Widget build(context) {
//     print('inside MenuLayout..');
//     return menuItems(context);
//   }
// }
