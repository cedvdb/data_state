import 'package:my_data_state/my_data_state.dart';

void main() {
  const loading = DataLoading();
  print(loading);
  final loaded = DataLoaded(3);
  if (loaded is DataExists<int>) {
    print(loaded.data);
  }
  print(loaded is DataExists);
  final notExist = DataLoaded(null);
  final notExistList = DataLoaded([]);
  print(notExist is DataNotExists);
  print(notExistList is DataNotExists);
}
