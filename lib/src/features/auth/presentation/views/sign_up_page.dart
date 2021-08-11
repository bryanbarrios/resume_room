import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resume_room/src/core/constants/app_constants.dart';
import 'package:resume_room/src/core/constants/asset_constants.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart';
import 'package:resume_room/src/l10n/l10n.dart';
import 'package:resume_room/src/core/ui/theme/index.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      appBar: AppBar(),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Wrap(
            runSpacing: 16.h,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(
                  kBrandLogo,
                  semanticsLabel: kAppName,
                  width: 72.w,
                  height: 72.h,
                ),
              ),
              Text(
                context.l10n.createAccount,
                style: Theme.of(context).textTheme.headline6?.bold,
              ),
              CustomTextFormField(
                labelText: context.l10n.firstName,
                hintText: context.l10n.firstNamePlaceholder,
              ),
              CustomTextFormField(
                labelText: context.l10n.lastName,
                hintText: context.l10n.lastNamePlaceholder,
              ),
              CustomTextFormField(
                labelText: context.l10n.email,
                hintText: context.l10n.emailPlaceholder,
              ),
              CustomTextFormField(
                labelText: context.l10n.password,
                hintText: context.l10n.passwordCreatePlaceholder,
              ),
              ElevatedButton(
                onPressed: () => "pressed",
                child: Text(context.l10n.createAccount),
              )
            ],
          ),
        ),
      ),
    );
  }
}
