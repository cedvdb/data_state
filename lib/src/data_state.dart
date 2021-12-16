abstract class DataState<T> {
  T? get data;
  const DataState();

  factory DataState.loaded(T? data) {
    if (data == null || (data is List && data.isEmpty)) {
      return const DataNotExists();
    }
    return DataExists(data);
  }
}

class DataLoading<T> extends DataState<T> {
  @override
  final T? data;
  const DataLoading([this.data]);
}

class DataError<T> extends DataState<T> {
  @override
  final T? data;
  final Error error;
  const DataError(this.error, [this.data]);
}

abstract class DataLoaded<T> extends DataState<T> {
  const DataLoaded();
}

class DataNotExists<T> extends DataLoaded<T> {
  @override
  final T? data = null;
  const DataNotExists();
}

class DataExists<T> extends DataLoaded<T> {
  @override
  final T data;
  const DataExists(this.data);
}
