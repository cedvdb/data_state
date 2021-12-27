abstract class DataState<T> {
  const DataState();

  factory DataState.loaded(T? data, {bool isUpdating = false}) {
    if (data == null || (data is List && data.isEmpty)) {
      return DataNotExists(data, isUpdating: isUpdating);
    }
    return DataExists(data, isUpdating: isUpdating);
  }
}

/// data not yet loading
class DataUnset<T> extends DataState<T> {
  const DataUnset();
}

/// data is loading
class DataLoading<T> extends DataState<T> {
  const DataLoading();
}

/// error while loading the data
class DataError<T> extends DataState<T> {
  final T? data;
  final Error error;
  const DataError(this.error, {this.data});
}

abstract class DataLoaded<T> extends DataState<T> {
  T? get data;

  /// defines whether new data is being loaded
  bool get isUpdating;
  const DataLoaded();
}

/// data has been loaded and is either null or empty list
class DataNotExists<T> extends DataLoaded<T> {
  @override
  final T? data;
  @override
  final bool isUpdating;
  const DataNotExists(this.data, {this.isUpdating = false});
}

/// data has been loaded and is populated
class DataExists<T> extends DataLoaded<T> {
  @override
  final T data;
  @override
  final bool isUpdating;
  const DataExists(this.data, {this.isUpdating = false});
}
