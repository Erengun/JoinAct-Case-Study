import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/getstore/get_store_helper.dart';
import '../../../di/components/service_locator.dart';
import 'nav_bar_ui_model.dart';

part 'nav_bar_logic.g.dart';

@riverpod
class BottomNavBarLogic extends _$BottomNavBarLogic {
  /// Write nav index to get store,
  /// so that it can be used to continue from where the user left off
  final GetStoreHelper _getStoreHelper = getIt<GetStoreHelper>();
  @override
  BottomNavBarUiModel build() {
    /// Get nav index from get store and set it to state
    /// the bottom nav bar will use this state to set the current index
    /// when the app is opened
    return BottomNavBarUiModel(navIndex: getNavIndex());
  }

  void setNavIndex(int index) {
    state = state.copyWith(navIndex: index);
    _getStoreHelper.saveNavigationIndex(index);
  }

  int getNavIndex() {
    return _getStoreHelper.getNavigationIndex() ?? 0;
  }
}
