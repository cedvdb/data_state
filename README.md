DataState is a micro library to represent the state of data. 

It contains the following classes:

  - DataState (abstract)
    - DataStateLoading
    - DataStateLoaded
       - DateStateExists
       - DateStateNotExist


# Usage:

```dart

void main() {
  const loading = DataStateLoading();
  print(loading);
  final loaded = DataState.loaded(3);
  print(loaded is DataStateExists);
  print(loaded.data); // 3
  final notExist = DataState.loaded(null);
  final notExistList = DataState.loaded([]);
  print(notExist is DataStateNotExists);
  print(notExistList is DataStateNotExists);
}
```