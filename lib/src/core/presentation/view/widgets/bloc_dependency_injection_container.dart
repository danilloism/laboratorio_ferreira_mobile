import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:laboratorio_ferreira_mobile/src/configs/config.dart';
import 'package:laboratorio_ferreira_mobile/src/core/core.dart';
import 'package:laboratorio_ferreira_mobile/src/features/auth/auth.dart';
import 'package:laboratorio_ferreira_mobile/src/features/settings/bloc/settings_bloc.dart';
import 'package:laboratorio_ferreira_mobile/src/features/settings/bloc/settings_event.dart';
import 'package:laboratorio_ferreira_mobile/src/features/settings/data/models/setting.dart';
import 'package:laboratorio_ferreira_mobile/src/features/settings/data/repositories/settings_repository.dart';
import 'package:sembast/sembast.dart';

class BlocDependencyInjectionContainer extends StatelessWidget {
  const BlocDependencyInjectionContainer({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(
            authRepository: GetIt.I.get(),
            localSession:
                GetIt.I.get<SettingsRepository>().activeStored.session,
          )..add(const AuthEvent.appInitialized()),
        ),
        BlocProvider(create: (_) => SettingsBloc(settingsRepo: GetIt.I.get())),
        BlocProvider(
            create: (_) => ConnectivityCubit(GetIt.I
                .get(instanceName: Config.initialConnectivityInstanceName))),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<IHttpService>(
              create: (_) => GetIt.I.get<IHttpService>()),
          RepositoryProvider<Database>(create: (_) => GetIt.I.get<Database>()),
          RepositoryProvider<SettingsRepository>(
              create: (_) => GetIt.I.get<SettingsRepository>()),
          RepositoryProvider<AuthRepository>(
              create: (_) => GetIt.I.get<AuthRepository>()),
          RepositoryProvider<RouterService>(
              create: (ctx) => RouterService(AuthBloc.of(ctx))),
        ],
        child: Builder(
          builder: (context) {
            return BlocListener<AuthBloc, AuthState>(
              listenWhen: (_, current) {
                return current.maybeWhen(
                  loggedIn: (session) {
                    return session != SettingsBloc.of(context).state.session;
                  },
                  loggedOut: () {
                    return SettingsBloc.of(context).state.session != null;
                  },
                  orElse: () => false,
                );
              },
              listener: (ctx, state) {
                state.whenOrNull(
                  loggedIn: (session) => SettingsBloc.of(ctx).add(
                    SettingsEvent.activeSettingChanged(
                        Setting(session: session)),
                  ),
                  loggedOut: () => SettingsBloc.of(ctx)
                      .add(const SettingsEvent.activeSettingChanged(Setting())),
                );
              },
              child: child,
            );
          },
        ),
      ),
    );
  }
}
