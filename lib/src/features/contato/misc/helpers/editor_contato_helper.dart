import 'package:laboratorio_ferreira_mobile/src/core/domain/enums/enums.dart';
import 'package:laboratorio_ferreira_mobile/src/features/contato/domain/models/contato.dart';

class EditorContatoHelper {
  static bool usuarioLogadoPodeEditarContato(
      {required Contato usuarioLogado, required Contato contatoSendoEditado}) {
    if (usuarioLogado.uid == contatoSendoEditado.uid) return true;

    final indexHierarquia = contatoSendoEditado.hierarquia;
    final hierarquia = Roles.values[indexHierarquia];
    return usuarioLogado.temHierarquiaMaiorQue(hierarquia);
  }
}
