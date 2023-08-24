import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../admin_page_logic.dart';

class CreateCategoryDialog extends ConsumerWidget {
  const CreateCategoryDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController nameController = TextEditingController();
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //TODO: add localization
          const Gap(16),
          const Text('Add Category'),
          const Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Category Name',
              ),
            ),
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  if (nameController.text.isEmpty) {
                    return;
                  }
                  ref
                      .read(adminPageLogicProvider.notifier)
                      .createCategory(nameController.text);
                  Navigator.pop(context);
                },
                child: const Text('Add'),
              ),
            ],
          ),
          const Gap(16),
        ],
      ),
    );
  }
}
