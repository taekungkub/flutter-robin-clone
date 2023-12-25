// import 'package:flutter/material.dart';

// class CategoryFavorite extends StatefulWidget {
//   const CategoryFavorite({super.key});

//   @override
//   State<CategoryFavorite> createState() => _CategoryFavoriteState();
// }

// class _CategoryFavoriteState extends State<CategoryFavorite> {
//   final List<String> filters = const [
//     'All',
//     'Addidas',
//     'Nike',
//     'Bata',
//   ];

//   late String selectedFilter;

//   @override
//   void initState() {
//     super.initState();
//     selectedFilter = filters[0];
//   }

//   @override
//   Widget build(BuildContext context) {
//     const border = OutlineInputBorder(
//       borderSide: BorderSide(
//         color: Color.fromRGBO(225, 225, 225, 1),
//       ),
//       borderRadius: BorderRadius.horizontal(
//         left: Radius.circular(50),
//       ),
//     );

//     return SizedBox(
//       height: 60,
//       child: ListView.builder(
//         itemCount: filters.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           final filter = filters[index];
//           return Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 8.0,
//             ),
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   selectedFilter = filter;
//                 });
//               },
//               child: Chip(
//                 backgroundColor: selectedFilter == filter
//                     ? Theme.of(context).colorScheme.primary
//                     : const Color.fromRGBO(245, 247, 249, 1),
//                 side: const BorderSide(
//                   color: Color.fromRGBO(245, 247, 249, 1),
//                 ),
//                 label: Text(filter),
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 4,
//                 ),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
