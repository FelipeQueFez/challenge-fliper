import 'package:challenge_fliper/modules/hasura/hasura_environment.dart';
import 'package:challenge_fliper/modules/shared/models/default_respose.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HasuraService {
  Future<DefaultResponse<dynamic>> getResume() async {
    DefaultResponse<dynamic> result =
        new DefaultResponse<dynamic>(isSuccess: false);

    try {
      String docQuery = """
          query MyQuery {
              wealthSummary_by_pk(id: 2) {
                id
              }
              wealthSummary {
                cdi
                gain
                profitability
                total
              }
          }
      """;

      HasuraConnect hasuraConnect = HasuraConnect(HasuraEnvironment.url);
      hasuraConnect.addHeader(
          HasuraEnvironment.secretHeader, HasuraEnvironment.secret);

      var document = await hasuraConnect.query(docQuery);

      result.isSuccess = true;
      result.data = document;
    } catch (e) {
      result.error = e?.message;
    }

    return result;
  }
}
