abstract class DataState<T> {
  final T? data;

  const DataState([this.data]);

  static DataStateLoading<T> loading<T>() => const DataStateLoading();
  static DataState<T> loaded<T>(T? data) {
    if (data == null || (data is List && data.isEmpty)) {
      return const DataStateNotExists();
    }
    return DataStateExists(data);
  }

  mapDataIfAvailable(T Function(T data) mapper) {
    if (this is DataStateExists) {
      return DataStateExists(mapper((this as DataStateExists).data));
    }
    return this;
  }
}

class DataStateLoading<T> extends DataState<T> {
  const DataStateLoading([T? data]) : super(data);
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
