import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utils/colors.dart';
import 'package:graduation/features/auth/presentation/pages/sign_in_page.dart';
import 'package:graduation/features/store_portfollio/data/data_sources/repo_store_imp.dart';
import 'package:graduation/features/store_portfollio/presentation/manager/store_port_cubit.dart';
import 'package:graduation/service_lecoter.dart';

void main() {
  setupService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => StorePortCubit
            (getIt.get<RepoStoreImp>()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: ColorManager.primaryColor),
          useMaterial3: true,
        ),
        home: const LogInScreen(),
      ),
    );
  }
}
