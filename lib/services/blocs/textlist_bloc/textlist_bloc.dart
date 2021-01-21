import 'package:textify/services/blocs/basic_bloc.dart';
import 'package:textify_core/textify_core.dart';

class TextListBloc extends BasicBloc<List<TextModel>> {
  static final TextListBloc _singleton = TextListBloc._();

  static TextListBloc get instance => _singleton;

  TextListBloc._();

  getAllValue() async {
    var res = await TextStoreRepository.getAll();
    emit(res);
  }

  insertValue(TextModel textModel) async {
    var res = await TextStoreRepository.insert(textModel);

    state.add(res);
    emit(state);
  }

  updateValue(TextModel textModel) async {
    await TextStoreRepository.update(textModel);
    int index = state.indexWhere((element) => element.uuid == textModel.uuid);

    if(index >= 0) {
      state[index] = textModel;
    }

    emit(state);
  }

  deleteValue(String uuid) async {
    await TextStoreRepository.delete(uuid);
    int index = state.indexWhere((element) => element.uuid == uuid);

    if(index >= 0) {
      state.removeAt(index);
    }

    emit(state);
  }
}