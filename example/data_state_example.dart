import 'package:my_data_state/my_data_state.dart';

void main() {
  const loading = DataLoading();
  print(loading);
  final loaded = DataState.loaded(3);
  if (loaded is DataExists<int>) {
    print(loaded.data);
  }
  print(loaded is DataExists);
  final notExist = DataState.loaded(null);
  final notExistList = DataState.loaded([]);
  print(notExist is DataNotExists);
  print(notExistList is DataNotExists);
}
