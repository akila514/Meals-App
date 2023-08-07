// import 'package:flutter/material.dart';

// import '../models/meal.dart';

// class DescripstionScreen extends StatelessWidget {
//   const DescripstionScreen(
//       {super.key, required this.imgUrl, required this.meal});

//   final String imgUrl;
//   final Meal meal;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(meal.title),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 200,
//             child: Image.network(
//               imgUrl,
//               fit: BoxFit.fill,
//               width: double.infinity,
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
//               itemCount: meal.ingredients.length,
//               itemBuilder: (context, index) => Text(
//                 meal.ingredients[index],
//                 textAlign: TextAlign.left,
//                 style: const TextStyle(
//                     color: Colors.white, fontWeight: FontWeight.w300),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: ListView.builder(
//               padding: const EdgeInsets.all(16),
//               itemCount: meal.steps.length,
//               itemBuilder: (context, index) => Text(
//                 meal.steps[index],
//                 textAlign: TextAlign.left,
//                 style: const TextStyle(
//                     color: Colors.white, fontWeight: FontWeight.w300),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
