import 'package:my_data_state/my_data_state.dart';
import 'package:test/test.dart';

void main() {
  group('DataState', () {
    test('should create loaded, exists', () {
      expect(DataState.loaded(20), isA<DataLoaded>());
      expect(DataState.loaded(20), isA<DataExists>());
    });

    test('should create loaded, not exists', () {
      expect(DataState.loaded(null), isA<DataLoaded>());
      expect(DataState.loaded(null), isA<DataNotExists>());
      expect(DataState.loaded([]), isA<DataLoaded>());
      expect(DataState.loaded([]), isA<DataNotExists>());
    });
  });
}
