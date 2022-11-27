import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:laboratorio_ferreira_mobile/src/core/domain/enums/roles.dart';
import 'package:laboratorio_ferreira_mobile/src/core/presentation/presentation.dart';
import 'package:laboratorio_ferreira_mobile/src/features/auth/presentation/controllers/auth_notifier.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/domain/models/contato.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/presentation/controllers/editor_contato_notifier.dart';

class AddCategoriaDialog extends StatelessWidget {
  AddCategoriaDialog({super.key});

  final _selectedCategoriasProvider =
      StateProvider.autoDispose<Set<Roles>>((ref) => {});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text('Selecionar Categorias')),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancelar')),
        Consumer(
          builder: (context, ref, child) {
            return ElevatedButton(
                onPressed: () {
                  final categoriasSelecionadas =
                      ref.read(_selectedCategoriasProvider);
                  ref
                      .read(editorContatoNotifierProvider.notifier)
                      .adicionarCategorias(categoriasSelecionadas);
                  Navigator.pop(context);
                },
                child: const Text('Adicionar'));
          },
        ),
      ],
      content: Consumer(
        builder: (context, ref, child) {
          final contato = ref.read(editorContatoNotifierProvider);
          return CustomWrap(
            children: [
              ...Roles.values
                  .where((role) =>
                      !contato.isA(role) &&
                      ref
                          .read(usuarioLogadoProvider)!
                          .temHierarquiaMaiorOuIgualQue(role) &&
                      !role.isAdmin)
                  .map(
                    (role) => CustomChip(
                      label: Text(role.capitalized),
                      selected:
                          ref.watch(_selectedCategoriasProvider).contains(role),
                      onSelected: (selected) {
                        final selectedCategoriesNotifier =
                            ref.read(_selectedCategoriasProvider.notifier);

                        if (selected) {
                          selectedCategoriesNotifier.state = {
                            ...selectedCategoriesNotifier.state,
                            role
                          };
                          return;
                        }

                        selectedCategoriesNotifier.state = {
                          ...selectedCategoriesNotifier.state..remove(role)
                        };
                      },
                    ),
                  ),
            ],
          );
        },
      ),
    );
  }
}