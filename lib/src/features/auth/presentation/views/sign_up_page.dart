import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resume_room/src/core/constants/app_constants.dart';
import 'package:resume_room/src/core/constants/asset_constants.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart';
import 'package:resume_room/src/l10n/l10n.dart';
import 'package:resume_room/src/core/ui/theme/index.dart';
import 'package:resume_room/src/core/extensions/string.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _firstNameController;
  TextEditingController? _lastNameController;
  TextEditingController? _emailController;
  TextEditingController? _passwordController;

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController(text: '');
    _lastNameController = TextEditingController(text: '');
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
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
                  context.l10n.createAccount,
                  style: Theme.of(context).textTheme.headline6?.bold,
                ),
                CustomTextFormField(
                  labelText: context.l10n.firstName,
                  hintText: context.l10n.firstNamePlaceholder,
                  controller: _firstNameController,
                  textInputAction: TextInputAction.next,
                  validator: (value) => value!.validateEmpty(context),
                ),
                CustomTextFormField(
                  labelText: context.l10n.lastName,
                  hintText: context.l10n.lastNamePlaceholder,
                  controller: _lastNameController,
                  textInputAction: TextInputAction.next,
                  validator: (value) => value!.validateEmpty(context),
                ),
                CustomTextFormField(
                  labelText: context.l10n.email,
                  hintText: context.l10n.emailPlaceholder,
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  validator: (value) => value!.validateEmail(context),
                ),
                CustomTextFormField(
                  labelText: context.l10n.password,
                  hintText: context.l10n.passwordCreatePlaceholder,
                  controller: _passwordController,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  validator: (value) => value!.validatePassword(context),
                ),
                ElevatedButton(
                  onPressed: _onSubmit,
                  child: Text(context.l10n.createAccount),
                )
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
