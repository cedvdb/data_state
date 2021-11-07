import 'package:datastate/datastate.dart';

void main() {
  const loading = DataStateLoading();
  print(loading);
  final loaded = DataState.loaded(3);
  print(loaded.data);
  print(loaded is DataStateExists);
  final notExist = DataState.loaded(null);
  final notExistList = DataState.loaded([]);
  print(notExist is DataStateNotExists);
  print(notExistList is DataStateNotExists);
}
