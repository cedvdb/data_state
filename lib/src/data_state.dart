abstract class DataState<T> {
  final T? data;
  const DataState([this.data]);

  factory DataState.loaded(T? data) {
    if (data == null || (data is List && data.isEmpty)) {
      return const DataStateNotExists();
    }
    return DataStateExists(data);
  }
}

class DataStateLoading<T> extends DataState<T> {
  const DataStateLoading([T? data]) : super(data);
}

class DataStateError<T> extends DataState<T> {
  final Error error;
  const DataStateError(this.error);
}

abstract class DataStateLoaded<T> extends DataState<T> {
  const DataStateLoaded();
}

class DataStateNotExists<T> extends DataStateLoaded<T> {
  const DataStateNotExists();
}

class DataStateExists<T> extends DataStateLoaded<T> {
  @override
  // ignore: overridden_fields
  final T data;
  const DataStateExists(this.data);
}
