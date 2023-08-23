import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/src/either.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../utils/context_extensions.dart';

import '../../../models/admin/category/category.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../widgets/app_bar_gone.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'admin_page_logic.dart';
import 'admin_page_ui_model.dart';
import 'widgets/header.dart';
import 'widgets/social_tile_widget.dart';
import 'widgets/theme_widget.dart';

class AdminPage extends ConsumerStatefulWidget {
  const AdminPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdminPageState();
}

class _AdminPageState extends ConsumerState<AdminPage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(fetchCategoriesProvider.future)
        .then((Either<String, GetCategoriesResponse> response) => response.fold(
              (String errorMessage) => ref
                  .read(adminPageLogicProvider.notifier)
                  .setError(errorMessage),
              (GetCategoriesResponse response) => ref
                  .read(adminPageLogicProvider.notifier)
                  .setCategories(response.categories),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final AdminPageUIModel categoryLogic = ref.read(adminPageLogicProvider);
    return Scaffold(
        appBar: const EmptyAppBar(),
        bottomNavigationBar: const BottomNavBar(),
        backgroundColor: context.colorScheme.background,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Header(text: 'Admin Section'),
              const Divider(),
              const ThemeWidget(),
              const Header(text: 'Categories'),
              if (categoryLogic.categories == null)
                const Expanded(child: Center(child: Text('No data')))
              else
                categoryLogic.errorMessage != null
                    ? Center(
                        child: Text(
                          categoryLogic.errorMessage!,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      )
                    : categoryLogic.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : // show Categories
                        Expanded(
                            child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ListView.builder(
                                itemBuilder: (BuildContext context, int index) {
                              final Category category =
                                  categoryLogic.categories![index];
                              return ListTile(
                                title: Text(
                                  category.id.toString(),
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                subtitle: Text(
                                  category.name,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Ionicons.trash_outline),
                                ),
                              );
                            }),
                          ))
            ]));
  }
}

class LanguageTile extends StatelessWidget {
  const LanguageTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      onChanged: (bool newValue) {
        /// Example: Change locale
        /// The initial locale is automatically determined by the library.
        /// Changing the locale like this will persist the selected locale.
        context.setLocale(newValue ? const Locale('tr') : const Locale('en'));
      },
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      value: context.locale == const Locale('tr'),
      title: Text(
        tr('toggle_language'),
        style:
            Theme.of(context).textTheme.titleMedium!.apply(fontWeightDelta: 2),
      ),
    );
  }
}
