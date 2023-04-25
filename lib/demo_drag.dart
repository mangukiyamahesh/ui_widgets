import 'package:flutter/material.dart';

class DemoDrag extends StatefulWidget {
  const DemoDrag({Key? key}) : super(key: key);

  @override
  State<DemoDrag> createState() => _DemoDragState();
}

class _DemoDragState extends State<DemoDrag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
      ),
      body: Stack(
        children: [
          Transform.rotate(
            angle: 0,
            child: Image.asset("assets/images/Fruit-Salad-7.jpg"),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.1,
            maxChildSize: 0.9,
            snap: true,
            snapSizes: [0.4, 0.6],
            // expand: true,
            builder: (BuildContext context, ScrollController scrollController) {
              return ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.blue.withOpacity(0.3),
                    child: ListTile(
                      title: Text('Item $index'),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('DraggableScrollableSheet'),
//       ),
//       body: Stack(
//         children: [
//           Image.network(
//             'https://images.unsplash.com/photo-1632700454633-28ad72be520b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
//             height: 500,
//             width: 500,
//             fit: BoxFit.cover,
//           ),
//           SizedBox.expand(
//             child: DraggableScrollableSheet(
//               initialChildSize: 0.3,
//               maxChildSize: 0.9,
//               minChildSize: 0.13,
//               builder:
//                   (BuildContext context, ScrollController scrollController) {
//                 return Container(
//                   color: Colors.blue[100],
//                   child: ListView.builder(
//                     controller: scrollController,
//                     itemCount: 25,
//                     itemBuilder: (BuildContext context, int index) {
//                       return ListTile(title: Text('Item $index'));
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
