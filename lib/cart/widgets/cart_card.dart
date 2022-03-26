// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:milky_way/milky_way.dart';
// import 'package:super_nova/cart/cart.dart';
// import 'package:super_nova/product_details/product_details.dart';

// class CartCard extends StatelessWidget {
//   const CartCard({
//     Key? key,
//     required this.cart,
//   }) : super(key: key);

//   final Cart cart;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       type: MaterialType.card,
//       child: InkWell(
//         onTap: () {},
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Checkbox(
//                     value: false,
//                     onChanged: (value) {},
//                   ),
//                   Text(
//                     cart.name,
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 8),
//               ListView.separated(
//                 itemCount: cart.items.length,
//                 //TODO (mehade369): watch the video on CustomScrollView and ListView, https://www.youtube.com/watch?v=Q_X-_7_Xz-Q

//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 separatorBuilder: (context, index) => const SizedBox(height: 8),
//                 itemBuilder: (context, index) {
//                   final item = cart.items.elementAt(index);

//                   return Dismissible(
//                     key: Key(item.id.toString()),
//                     onDismissed: (_) {
//                       context.read<CartCubit>().removeProductFromACart(
//                             cart: cart,
//                             product: item,
//                           );
//                     },
//                     child: CartItemCard(
//                       key: ValueKey(item.id),
//                       item: item,
//                       onQuantityChange: (quantity) {
//                         context.read<CartCubit>().onProductQuantityChanged(
//                               cart: cart,
//                               product: item,
//                               quantity: quantity,
//                             );
//                       },
//                       onTap: () => context.pushMaterialPageRoute(
//                         (context) => ProductDetailsPage(productId: item.id),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
