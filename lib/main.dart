import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/cubit/locale_cubit.dart';
import 'package:food_app/core/utils/theme_data.dart';
import 'package:food_app/core/utils/widgets/splash_view.dart';

import 'core/locale/app_localization.dart';
// import 'package:flutter_l';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocaleCubit()..getSavedLanguage(),
        ),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) {
          if (state is ChangeLocaleState) {
            return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) {
                return AnnotatedRegion<SystemUiOverlayStyle>(
                  value: const SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                  ),
                  child: MaterialApp(
                    locale: state.locale,
                    supportedLocales: const [Locale('en'), Locale('ar')],
                    localizationsDelegates: const [
                      AppLocalization.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate
                    ],
                    theme: Styles.themeData(
                        context: context,
                        fontFamily: state.locale.languageCode == 'en'
                            ? 'DMSans'
                            : 'Tajawal'),
                    debugShowCheckedModeBanner: false,
                    home: const SplashView(),
                  ),
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
