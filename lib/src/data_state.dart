abstract class DataState<T> {
  const DataState();

  factory DataState.loaded(T? data, {bool isLoading = false}) {
    if (data == null || (data is List && data.isEmpty)) {
      return DataNotExists(isLoading: isLoading);
    }
    return DataExists(data, isLoading: isLoading);
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
  bool get isLoading;
  const DataLoaded();
}

/// data has been loaded and is either null or empty list
class DataNotExists<T> extends DataLoaded<T> {
  @override
  final bool isLoading;
  const DataNotExists({this.isLoading = false});
}

/// data has been loaded and is populated
class DataExists<T> extends DataLoaded<T> {
  final T data;
  @override
  final bool isLoading;
  const DataExists(this.data, {this.isLoading = false});
}
