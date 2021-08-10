import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resume_room/src/core/constants/app_constants.dart';
import 'package:resume_room/src/core/constants/asset_constants.dart';
import 'package:resume_room/src/core/ui/widgets/widgets.dart' show Base;
import 'package:resume_room/src/core/ui/theme/index.dart';
import 'package:resume_room/src/l10n/l10n.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(
                height: 32.h,
              ),
              SvgPicture.asset(
                kNetworkingImage,
                semanticsLabel: kAppName,
                width: 310.w,
                height: 310.h,
              ),
              SizedBox(
                height: 24.h,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: context.l10n.landingActionTextPart1,
                  style: Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                    TextSpan(
                      text: context.l10n.landingActionTextPart2,
                      style: Theme.of(context).textTheme.bodyText1?.bold,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              OutlinedButton(
                onPressed: () => "pressed",
                child: Text(context.l10n.signIn),
              ),
              SizedBox(
                height: 16.h,
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
