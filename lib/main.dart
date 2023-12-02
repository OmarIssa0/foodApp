import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food_app/core/locale/cubit/locale_cubit.dart';

import 'core/locale/app_localization.dart';
import 'features/home/presentation/view/home_view.dart';
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
            return MaterialApp(
              locale: state.locale,
              supportedLocales: const [Locale('en'), Locale('ar')],
              localizationsDelegates: const [
                AppLocalization.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              // localeResolutionCallback: (deviceLocal, supportedLocales) {
              //   for (var locale in supportedLocales) {
              //     if (deviceLocal != null &&
              //         deviceLocal.languageCode == locale.languageCode) {
              //       return deviceLocal;
              //     }
              //   }
              //   return supportedLocales.first;
              // },
              theme: ThemeData(
                useMaterial3: true,
                fontFamily:
                    state.locale.languageCode == 'en' ? 'DMSans' : 'Tajawal',
              ),
              debugShowCheckedModeBanner: false,
              home: const HomeView(),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
