abstract class DataState<T> {
  const DataState();
}

/// data not yet loading
class DataUnset<T> implements DataState<T> {
  const DataUnset();
}

/// data is loading
class DataLoading<T> implements DataState<T> {
  const DataLoading();
}

/// error while loading the data
class DataError<T> implements DataState<T> {
  final T? data;
  final Error error;
  const DataError(this.error, {this.data});
}

abstract class DataLoaded<T> implements DataState<T> {
  T? get data;

  factory DataLoaded(T? data) {
    if (data == null || (data is List && data.isEmpty)) {
      return DataNotExists(data);
    }
    return DataExists(data);
  }
}

/// data has been loaded and is either null or empty list
class DataNotExists<T> implements DataLoaded<T> {
  @override
  final T? data;
  const DataNotExists(this.data);
}

/// data has been loaded and is populated
class DataExists<T> implements DataLoaded<T> {
  @override
  final T data;
  const DataExists(this.data);
}
