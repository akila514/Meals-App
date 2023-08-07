// import 'package:flutter/material.dart';
// import 'package:meals/models/meal.dart';

// class SingleMealItems extends StatelessWidget {
//   const SingleMealItem({super.key, required this.meal});

//   final Meal meal;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 24),
//       decoration: BoxDecoration(
//           color: Theme.of(context).primaryColorDark.withOpacity(0.1),
//           borderRadius: BorderRadius.circular(10)),
//       child: Expanded(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 50,
//               child: Text(
//                 meal.title,
//                 style: const TextStyle(color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             SizedBox(
//               height: 150,
//               child: Image.network(
//                 meal.imageUrl,
//                 loadingBuilder: (context, child, loadingProgress) =>
//                     loadingProgress == null
//                         ? child
//                         : LinearProgressIndicator(
//                             color:
//                                 Theme.of(context).primaryColor.withOpacity(0.1),
//                           ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
