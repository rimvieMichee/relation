import 'package:flutter/material.dart';
import 'package:relation/helpers/theme/admin_theme.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AdminTheme.theme.contentTheme.primary,
      ),
    );
  }
}
