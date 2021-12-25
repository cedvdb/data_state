DataState is a micro library to statically type dynamic data, usually data coming from an external data source like a remote server.
The use case is to make a standard representation of incoming data.

It contains the following classes:

  - DataState (abstract)
    - DataUnset
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
  if (loaded is DataExists) {
    print(loaded.data); // 3
  }
  final notExist = DataState.loaded(null);
  final notExistList = DataState.loaded([]);
  print(notExist is DataNotExists);
  print(notExistList is DataNotExists);
}
```