import 'package:my_data_state/my_data_state.dart';
import 'package:test/test.dart';

void main() {
  group('DataState', () {
    test('should create loaded, exists', () {
      expect(DataLoaded(20), isA<DataLoaded>());
      expect(DataLoaded(20), isA<DataExists>());
    });

    test('should create loaded, not exists', () {
      expect(DataLoaded(null), isA<DataLoaded>());
      expect(DataLoaded(null), isA<DataNotExists>());
      expect(DataLoaded([]), isA<DataLoaded>());
      expect(DataLoaded([]), isA<DataNotExists>());
    });
  });
}
