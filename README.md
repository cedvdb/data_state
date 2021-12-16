DataState is a micro library to represent the state of data. 

It contains the following classes:

  - DataState (abstract)
    - DataLoading
    - DataLoaded (abstract)
       - DateExists
       - DateNotExist


# Usage:

```dart

void main() {
  const loading = DataLoading();
  print(loading);
  final loaded = DataState.loaded(3);
  print(loaded is DataExists);
  print(loaded.data); // 3
  final notExist = DataState.loaded(null);
  final notExistList = DataState.loaded([]);
  print(notExist is DataNotExists);
  print(notExistList is DataNotExists);
}
```