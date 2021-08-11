import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resume_room/src/core/constants/app_constants.dart';
import 'package:resume_room/src/core/constants/asset_constants.dart';
import 'package:resume_room/src/core/router/app_router.dart';
import 'package:resume_room/src/core/router/router.gr.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart'
    show Base, RoundedIconButton;
import 'package:resume_room/src/core/ui/theme/index.dart';
import 'package:resume_room/src/l10n/l10n.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              kBrandLogo,
                              semanticsLabel: kAppName,
                              width: 72.w,
                              height: 72.h,
                            ),
                            RoundedIconButton(
                              onPressed: () => "pressed",
                              icon: Icons.close,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        SvgPicture.asset(
                          kNetworkingImage,
                          semanticsLabel: kAppName,
                          width: 300.w,
                          height: 300.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: context.l10n.landingActionTextPart1,
                              style: Theme.of(context).textTheme.bodyText1,
                              children: <TextSpan>[
                                TextSpan(
                                  text: context.l10n.landingActionTextPart2,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.bold,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        OutlinedButton(
                          onPressed: () async => await appRouter.push(
                            const SignInPageRoute(),
                          ),
                          child: Text(context.l10n.signIn),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        ElevatedButton(
                          onPressed: () async => await appRouter.push(
                            const SignUpPageRoute(),
                          ),
                          child: Text(context.l10n.createAccount),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
