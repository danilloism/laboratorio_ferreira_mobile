import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:laboratorio_ferreira_mobile/src/core/misc/helpers/formatter.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/domain/models/models.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/presentation/components/editor_contato/controllers/editor_contato_controller.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/presentation/components/editor_contato/controllers/editor_telefone_controller.dart';
import 'package:mask/mask.dart';

class EditorTelefoneDialog extends ConsumerWidget {
  EditorTelefoneDialog({super.key, this.telefone = ''}) {
    telefoneProvider = editorTelefoneControllerProvider(telefone);
  }

  final String telefone;
  late final EditorTelefoneControllerProvider telefoneProvider;

  void _submit({
    required bool isEditar,
    required TelefoneInput input,
    required WidgetRef ref,
    required BuildContext context,
  }) {
    if (!input.valid) return;

    final notifier = ref.read(editorContatoNotifierProvider.notifier);
    final newValue = input.value;
    if (isEditar) {
      notifier.alterarTelefone(
        currentValue: telefone,
        newValue: newValue,
      );
    } else {
      notifier.adicionarTelefone(newValue);
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Builder(builder: (context) {
      final isEditar = telefone.isNotEmpty;
      return AlertDialog(
        title: isEditar
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Alterar telefone'),
                  IconButton(
                    onPressed: () {
                      ref
                          .read(editorContatoNotifierProvider.notifier)
                          .removerTelefone(telefone);
                      Navigator.pop(context);
                    },
                    icon: const Icon(CupertinoIcons.trash),
                    color: Colors.red,
                    padding: const EdgeInsets.all(0),
                  ),
                ],
              )
            : const Center(child: Text('Adicionar telefone')),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar')),
          Consumer(
            builder: (context, ref, child) {
              final telefoneState = ref.watch(telefoneProvider);
              return ElevatedButton(
                  onPressed: !telefoneState.valid
                      ? null
                      : () => _submit(
                          isEditar: isEditar,
                          input: telefoneState,
                          context: context,
                          ref: ref),
                  child: isEditar
                      ? const Text('Alterar')
                      : const Text('Adicionar'));
            },
          ),
        ],
        content: Consumer(
          builder: (context, ref, child) {
            final telefoneState = ref.watch(telefoneProvider);

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  autofocus: true,
                  initialValue: telefone.isEmpty
                      ? null
                      : Formatter.applyPhoneMask(telefone),
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: (_) => _submit(
                    isEditar: isEditar,
                    ref: ref,
                    input: telefoneState,
                    context: context,
                  ),
                  inputFormatters: [
                    Mask.generic(masks: ['(##) #####-####'])
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return TelefoneInputError.empty.message;
                    }
                    if (value.length > 11) {
                      return TelefoneInputError.lengthOverflow.message;
                    }
                    if (value.length < 11) {
                      return TelefoneInputError.minLengthRequired.message;
                    }

                    return null;
                  },
                  onChanged: (value) {
                    ref
                        .read(telefoneProvider.notifier)
                        .teveAlteracao(Formatter.unmaskPhone(value));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Visibility(
                    visible: telefoneState.error != null && !telefoneState.pure,
                    child: Text(telefoneState.error?.message ?? '',
                        style: const TextStyle(color: Colors.red)),
                  ),
                ),
              ],
            );
          },
        ),
      );
    });
  }
}
