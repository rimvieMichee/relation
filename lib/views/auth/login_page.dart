import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:relation/helpers/utils/ui_mixins.dart';

import '../../helpers/my_widgets/my_button.dart';
import '../../helpers/my_widgets/my_spacing.dart';
import '../../helpers/my_widgets/my_text.dart';
import '../../widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin, UIMixin {
  bool rememberMe = false;
  bool obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
/*              Align(
                child: Image.asset(
                  Images.appLogo,
                  width: MySpacing.fullWidth(context) * 0.60,
                  height: MySpacing.fullHeight(context) * 0.30,
                  fit: BoxFit.fill,
                ),
              ),*/
              TextInputFields(
                keyboardType: TextInputType.phone,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15.w, vertical: 16),
                //obSecureText: controller.showPassword,
                filled: true,
                suffixIconConstraints:
                    BoxConstraints(maxHeight: 16, maxWidth: 35),
                name: "Numéro de téléphone",
                hintText: "Veuillez entrer votre numéro de téléphone",
              ).paddingSymmetric(horizontal: 10.w),
              MySpacing.height(20),
              TextInputFields(
                keyboardType: TextInputType.text,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15.w, vertical: 16),
                //obSecureText: controller.showPassword,
                filled: true,
                suffixIconConstraints:
                    BoxConstraints(maxHeight: 16, maxWidth: 35),
                name: "Mot de passe",
                suffixWidget: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.visibility_outlined,
                      size: 20,
                      color: contentTheme.black,
                    ),
                  ),
                ),
                hintText: "Veuillez entrer votre mot de passe",
              ).paddingSymmetric(horizontal: 10.w),
              MySpacing.height(40),
              MyButton.large(
                onPressed: () {
                  Get.offNamed("/HomeScreen");
                },
                elevation: 1,
                borderRadiusAll: 8,
                padding: MySpacing.xy(20, 22),
                block: true,
                backgroundColor: contentTheme.onPrimary,
                child: MyText.bodySmall(
                  'Connexion',
                  fontWeight: 600,
                  fontSize: 16.sp,
                  color: contentTheme.background,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
