// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:laboratorio_ferreira_mobile/src/core/domain/domain.dart';
import 'package:laboratorio_ferreira_mobile/src/core/misc/extensions/extensions.dart';
import 'package:laboratorio_ferreira_mobile/src/core/misc/helpers/helpers.dart';
import 'package:laboratorio_ferreira_mobile/src/core/presentation/view/widgets/confirm_modal.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/data/repositories/repositories.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/domain/models/models.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/presentation/controllers/contatos_notifier.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/presentation/controllers/editor_contato_notifier.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/presentation/view/widgets/widgets.dart';
import 'package:laboratorio_ferreira_mobile/src/features/settings/presentation/controllers/settings_notifier.dart';

class EditorContatoPage extends ConsumerWidget {
  EditorContatoPage({super.key, Contato? contato})
      : _contatoInicial = contato ?? Contato.empty;
  final Contato _contatoInicial;
  final _isLoadingProvider = StateProvider<bool>((ref) => false);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        editorContatoNotifierProvider
            .overrideWith((ref) => EditorContatoNotifier(_contatoInicial))
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              _contatoInicial.isEmpty ? 'Criar Contato' : 'Editar Contato'),
          leading: Consumer(builder: (context, ref, _) {
            return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  if (_contatoInicial !=
                      ref.read(editorContatoNotifierProvider)) {
                    context.openModal(
                      ConfirmModal(
                        message:
                            'Há alterações não salvas, deseja mesmo voltar?',
                        onConfirm: context.pop,
                        popOnConfirm: false,
                      ),
                      useProviderScope: false,
                    );
                  } else {
                    context.pop();
                  }
                });
          }),
          actions: [
            Consumer(
              builder: (context, ref, _) {
                final loading = ref.watch(_isLoadingProvider);

                if (loading) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                return IconButton(
                  onPressed: () async {
                    UiHelper.closeKeyboard();
                    ref.read(_isLoadingProvider.notifier).state = true;

                    final contatoNotifier =
                        ref.read(editorContatoNotifierProvider.notifier);

                    if (contatoNotifier.errors.isNotEmpty) {
                      context.showErrorSnackBar(
                          message:
                              Formatter.fromErrorList(contatoNotifier.errors) ??
                                  'Erro desconhecido.');
                      ref.read(_isLoadingProvider.notifier).state = false;
                      return;
                    }

                    final contatoFinal =
                        ref.read(editorContatoNotifierProvider);

                    if (_contatoInicial == contatoFinal) {
                      context.pop();
                      return;
                    }

                    try {
                      final repository = ref.read(contatoRepositoryProvider);

                      if (_contatoInicial.isEmpty) {
                        //TODO
                        // ignore: unused_local_variable
                        final contatoCriado = await ref
                            .read(contatoNotifierProvider.notifier)
                            .createContato(contatoFinal);
                        context.pop();
                        return;
                      }
                      final settings = ref.read(settingsNotifierProvider);
                      final contatoAtualizado =
                          await repository.update(contatoFinal);
                      final itsMe =
                          _contatoInicial.uid == settings.session?.contato.uid;
                      if (itsMe) {
                        final session = settings.session;
                        ref
                            .read(settingsNotifierProvider.notifier)
                            .changeSession(
                                session?.copyWith(contato: contatoAtualizado));
                      }

                      context.pop();
                    } on RepositoryException catch (e) {
                      final erro = e.object?['data']['erro'];

                      if (erro is List) {
                        final erroCasted =
                            List<String?>.from(erro, growable: false);

                        context.showErrorSnackBar(
                            message: Formatter.fromErrorList(erroCasted)!);
                      }

                      if (erro is String?) {
                        context.showErrorSnackBar(
                            message: '${erro ?? e.message}');
                      }

                      ref.read(_isLoadingProvider.notifier).state = false;
                    } catch (e) {
                      ref.read(_isLoadingProvider.notifier).state = false;
                      context.showErrorSnackBar(message: e.toString());
                      return;
                    }
                  },
                  icon: const Icon(Icons.done),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: ListView(
              children: const [
                SizedBox(height: 8),
                NameFormSection(),
                SizedBox(height: 20),
                TelefonesFormSection(),
                SizedBox(height: 4),
                CategoriasFormSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}