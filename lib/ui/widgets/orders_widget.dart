import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/user/order/order.dart';
import '../features/user/user_logic.dart';
import '../features/user/user_ui_model.dart';

class OrderHistoryWidget extends ConsumerWidget {
  const OrderHistoryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserUIModel userPanelUIModel = ref.watch(userLogicProvider);
    final List<Order> orderHistory = userPanelUIModel.orders;

    return orderHistory.isEmpty
        ? const Center(
            child: Text('No orders yet'),
          )
        : ListView.builder(
            itemCount: orderHistory.length,
            itemBuilder: (BuildContext context, int index) {
              final Order order = orderHistory[index];
              return ListTile(
                title: Text('Order #${order.id}'),
                subtitle: Text('Date: ${order.time}'),
                trailing: Text('Total: \$${order.items.length} items'),
              );
            },
          );
  }

  String parseTime(String time) {
    final DateTime dateTime = DateTime.parse(time);
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }
}
