import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../models/admin/category/category.dart';
import '../admin_page_logic.dart';
import '../admin_page_ui_model.dart';

class CategoryListView extends ConsumerWidget {
  const CategoryListView({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AdminPageUIModel categoryLogic = ref.watch(adminPageLogicProvider);
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          itemCount: categoryLogic.categories.length,
          itemBuilder: (BuildContext context, int index) {
            final Category category = categoryLogic.categories[index];
            return ListTile(
              title: Text(
                category.id.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: Text(
                category.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: IconButton(
                onPressed: () {
                  ref
                      .read(adminPageLogicProvider.notifier)
                      .removeCategory(category.id);
                },
                icon: const Icon(Ionicons.trash_outline),
              ),
            );
          }),
    ));
  }
}
