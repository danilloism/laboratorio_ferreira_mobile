import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:laboratorio_ferreira_mobile/src/core/bloc/navigation_index_cubit.dart';
import 'package:laboratorio_ferreira_mobile/src/core/core.dart';
import 'package:laboratorio_ferreira_mobile/src/features/auth/auth.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/detalhes_contato/view/detalhes_contato_page.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/editor_contato/bloc/editor_contato_cubit.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/editor_contato/view/editor_contato_page.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/lista_contatos/view/lista_contatos_page_view.dart';
import 'package:laboratorio_ferreira_mobile/src/features/servico/presentation/view/pages/servicos_page_view.dart';
import 'package:laboratorio_ferreira_mobile/src/features/settings/bloc/settings_bloc.dart';

enum HomePageTabs {
  inicio,
  contatos,
  servicos;

  Widget get page {
    switch (this) {
      case HomePageTabs.inicio:
        return const InicioPageView();
      case HomePageTabs.contatos:
        return const ContatosPageView();
      case HomePageTabs.servicos:
        return const ServicosPageView();
    }
  }
}

enum Routes {
  home(path: '/:tab(inicio|contatos|servicos)'),
  inicio(path: '/inicio'),
  contatos(path: '/contatos'),
  detalhesContato(path: ':uid'),
  editarContato(path: 'editar'),
  servicos(path: '/servicos'),
  welcome(path: '/welcome'),
  settings(path: '/settings'),
  login(path: '/login');

  final String path;

  const Routes({required this.path});

  String? Function(GoRouterState)? get redirect {
    switch (this) {
      case Routes.inicio:
        return (state) => state.namedLocation(
              Routes.home.name,
              params: {'tab': HomePageTabs.inicio.name},
            );
      case Routes.contatos:
        return (state) => state.namedLocation(
              Routes.home.name,
              params: {'tab': HomePageTabs.contatos.name},
            );
      case Routes.servicos:
        return (state) => state.namedLocation(
              Routes.home.name,
              params: {'tab': HomePageTabs.servicos.name},
            );
      default:
        return null;
    }
  }

  Widget Function(BuildContext, GoRouterState)? get builder {
    switch (this) {
      case Routes.home:
        return (_, state) {
          final tab = HomePageTabs.values.byName(state.params['tab']!);
          return BlocProvider<NavigationIndexCubit>(
            create: (_) => NavigationIndexCubit(tab.index),
            child: const HomePage(),
          );
        };

      case Routes.editarContato:
        return (ctx, state) {
          final uid = state.params['uid'];
          return BlocProvider(
            create: (ctx) =>
                EditorContatoCubit(SettingsBloc.of(ctx).state.session?.contato),
            child: const EditorContatoPage(),
          );
        };

      case Routes.detalhesContato:
        return (ctx, state) {
          final uid = state.params['uid'];
          if (uid == 'me') {}
          return DetalhesContatoPage(
              SettingsBloc.of(ctx).state.session!.contato);
        };

      case Routes.welcome:
        return (_, __) {
          return const WelcomePage();
        };

      case Routes.settings:
        return (_, __) => const SettingsPage();

      case Routes.login:
        return (_, __) => BlocProvider<LoginFormCubit>(
              create: (_) => LoginFormCubit(),
              child: const LoginPage(),
            );

      default:
        return null;
    }
  }
}