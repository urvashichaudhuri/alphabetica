// import 'package:flutter/material.dart';
// import 'package:kids_world/MenuItemsList.dart';
// import 'package:kids_world/widgets/WordMatch.dart';
// import 'package:kids_world/Main.dart';
//
// class MenuScreen extends StatelessWidget{
//   final List<Item> items;
//   MenuScreen({Key key, @required this.items}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black12,
//         //title: Text('Find the word with letter'),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           color: Colors.white,
//           tooltip: MaterialLocalizations.of(context).backButtonTooltip,
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyApp()));
//           },
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index){
//           return Card(
//             elevation: 10.0,
//             margin: EdgeInsets.only(
//               top: 10.0,
//               left: 15.0,
//               right: 15.0,
//             ),
//             child: ListTile(
//               title: Text(items[index].title, style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'PT_Sans')),
//               subtitle: Text(items[index].description, style: TextStyle(fontSize: 17, color: Colors.white, fontFamily: 'PT_Sans')),
//               tileColor: items[index].tileColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WordMatch()));
//               }
//             ),
//           );
//         }
//       ),
//     );
//   }
// }