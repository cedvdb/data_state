import 'dart:async';

import 'package:my_data_state/src/data_state.dart';

typedef DataStream<T> = Stream<DataState<T>>;
typedef DataController<T> = StreamController<DataState<T>>;
