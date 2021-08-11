import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resume_room/src/core/constants/app_constants.dart';
import 'package:resume_room/src/core/constants/asset_constants.dart';
import 'package:resume_room/src/core/router/app_router.dart';
import 'package:resume_room/src/core/router/router.gr.dart';
import 'package:resume_room/src/core/ui/theme/theme.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart';
import 'package:resume_room/src/l10n/l10n.dart';
import 'package:resume_room/src/core/ui/theme/index.dart';
import 'package:resume_room/src/core/extensions/string.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _emailController;
  TextEditingController? _passwordController;

  @override
  void initState() {
    super.initState();
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
                  context.l10n.signIn,
                  style: Theme.of(context).textTheme.headline6?.bold,
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
                  validator: (value) => value!.validateEmpty(context),
                ),
                GestureDetector(
                  onTap: () => "pressed",
                  child: Text(
                    context.l10n.forgotYourPassword,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.medium
                        .copyWith(color: KColors.blueGray),
                  ),
                ),
                ElevatedButton(
                  onPressed: _onSubmit,
                  child: Text(context.l10n.signIn),
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "${context.l10n.notAMemberYet} ",
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(color: KColors.blueGray),
                        ),
                        TextSpan(
                          text: context.l10n.createAnAccount,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              ?.bold
                              .copyWith(color: Theme.of(context).primaryColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async =>
                                await appRouter.push(const SignUpPageRoute()),
                        ),
                      ],
                    ),
                  ),
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
