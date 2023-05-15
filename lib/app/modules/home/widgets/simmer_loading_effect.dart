// import 'package:flutter/material.dart';
// import 'package:music/app/data/constant/colors_constant.dart';
// import 'package:shimmer/shimmer.dart';

// class ShimmerLoadingWidget extends StatelessWidget {
//   const ShimmerLoadingWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: CustomeColor.backgroundColor,
//       child: ListView.separated(
//         separatorBuilder: (context, index) {
//           return const SizedBox(
//             height: 10,
//           );
//         },
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             // color: CustomeColor.backgroundCardColor,
//             child: Shimmer.fromColors(
//               baseColor: const Color(0xFFEBEBF4),
//               highlightColor: const Color(0xFFEBEBF4),
//               child: ListTile(
//                 leading: Container(
//                   width: 48.0,
//                   height: 48.0,
//                   decoration: BoxDecoration(
//                       color: Colors.grey[300],
//                       borderRadius: BorderRadius.circular(50.0)),
//                 ),
//                 title: Container(
//                   width: double.infinity,
//                   height: 16.0,
//                   margin: const EdgeInsets.only(top: 8.0),
//                   color: Colors.grey[300],
//                 ),
//                 // subtitle: Container(
//                 //   width: double.infinity,
//                 //   height: 12.0,
//                 //   margin: const EdgeInsets.only(top: 8.0),
//                 //   color: Colors.grey[300],
//                 // ),
//                 trailing: Container(
//                   width: 48.0,
//                   height: 16.0,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//         itemCount: 10,
//       ),
//     );
//   }
// }
