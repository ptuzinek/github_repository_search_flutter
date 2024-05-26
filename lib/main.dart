import 'package:flutter/material.dart';
import 'package:github_repository_search_flutter/injectable/injectable.dart';
import 'package:github_repository_search_flutter/presentation/routing/router.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HookedBlocConfigProvider(
      injector: () => getIt.get,
      builderCondition: (state) => state != null,
      listenerCondition: (state) => state != null,
      child: MaterialApp.router(
        routerConfig: router,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
      ),
    );
  }
}
