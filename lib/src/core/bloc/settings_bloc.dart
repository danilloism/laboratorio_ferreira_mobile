import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laboratorio_ferreira_mobile/src/core/bloc/settings_event.dart';
import 'package:laboratorio_ferreira_mobile/src/core/core.dart';

class SettingsBloc extends Bloc<SettingsEvent, Setting> {
  final SettingsRepository _repo;

  SettingsBloc({
    required SettingsRepository settingsRepo,
  })  : _repo = settingsRepo,
        super(settingsRepo.activeStored) {
    on<SettingsEvent>((event, emit) async => event.when(
          themeModeChanged: (mode) async {
            final done = await _repo.setThemeMode(mode);
            if (done) emit(state.copyWith(themeMode: mode));
            return;
          },
          activeSettingChanged: (setting) async {
            final newValue = await _repo.upsertSetting(setting);
            emit(newValue);
            return;
          },
        ));
  }
}
