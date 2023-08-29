import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

/// Extension for BuildContext to get theme, textTheme and colorScheme
extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
}

extension ContextExtension on BuildContext {
  void showAwesomeSnackBar({
    required String title,
    required String message,
    String actionText = 'OK',
    void Function()? onActionPressed,
  }) {
    final SnackBar snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: ContentType.failure,
      ),
    );

    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void showAwesomeMaterialBanner({
    required String title,
    required String message,
    String actionText = 'OK',
    void Function()? onActionPressed,
  }) {
    final MaterialBanner materialBanner = MaterialBanner(
      elevation: 0,
      backgroundColor: Colors.transparent,
      forceActionsBelow: true,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: ContentType.success,
        inMaterialBanner: true,
      ),
      actions: const <Widget>[SizedBox.shrink()],
    );

    ScaffoldMessenger.of(this)
      ..hideCurrentMaterialBanner()
      ..showMaterialBanner(materialBanner);
  }
}
