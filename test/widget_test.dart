import 'package:challenge_fliper/modules/hasura/services/hasura_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  HasuraService hasuraService;

  setUp(() {
    hasuraService = HasuraService();
  });

  test('Hasura Communication Test', () async {
    var response = await hasuraService.getResume();
    expect(response.isSuccess, true);

    expect(response.data, isNotNull);

    expect(response.data.total, 3200876);
  });
}
