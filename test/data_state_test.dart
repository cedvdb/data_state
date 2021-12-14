import 'package:my_data_state/my_data_state.dart';
import 'package:test/test.dart';

void main() {
  group('DataState', () {
    test('should create loaded, exists', () {
      expect(DataState.loaded(20), isA<DataStateLoaded>());
      expect(DataState.loaded(20), isA<DataStateExists>());
    });

    test('should create loaded, not exists', () {
      expect(DataState.loaded(null), isA<DataStateLoaded>());
      expect(DataState.loaded(null), isA<DataStateNotExists>());
      expect(DataState.loaded([]), isA<DataStateLoaded>());
      expect(DataState.loaded([]), isA<DataStateNotExists>());
    });
  });
}
