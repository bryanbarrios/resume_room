import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resume_room/src/core/constants/app_constants.dart';
import 'package:resume_room/src/core/constants/asset_constants.dart';
import 'package:resume_room/src/core/ui/theme/theme.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart';
import 'package:resume_room/src/l10n/l10n.dart';
import 'package:resume_room/src/core/ui/theme/index.dart';
import 'package:resume_room/src/core/extensions/string.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Base(
      appBar: AppBar(),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
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
                  context.l10n.resetPassword,
                  style: Theme.of(context).textTheme.headline6?.bold,
                ),
                Text(
                  context.l10n.resetPasswordInstructions,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: KColors.blueGray),
                ),
                CustomTextFormField(
                  labelText: context.l10n.email,
                  hintText: context.l10n.emailPlaceholder,
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  validator: (value) => value!.validateEmail(context),
                ),
                ElevatedButton(
                  onPressed: _onSubmit,
                  child: Text(context.l10n.resetPassword),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {}
  }
}
