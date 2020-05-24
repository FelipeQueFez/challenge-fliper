import 'package:challenge_fliper/modules/hasura/hasura_environment.dart';
import 'package:challenge_fliper/modules/hasura/models/resume_model.dart';
import 'package:challenge_fliper/modules/shared/models/default_respose.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HasuraService {
  Future<DefaultResponse<ResumeModel>> getResume() async {
    DefaultResponse<ResumeModel> result =
        new DefaultResponse<ResumeModel>(isSuccess: false);

    try {
      HasuraConnect hasuraConnect = HasuraConnect(HasuraEnvironment.url);
      hasuraConnect.addHeader(
          HasuraEnvironment.secretHeader, HasuraEnvironment.secret);

      var docQuery = _getQuery();
      var document = await hasuraConnect.query(docQuery);
      if (document is Map) {
        result.isSuccess = true;
        result.data = _transform(document);
      }
    } catch (e) {
      result.error = 'Ops, houve algum problema.';
    }

    return result;
  }

  ResumeModel _transform(Map document) {
    if (document.isEmpty) {
      return new ResumeModel();
    } else {
      var values = document['data']['wealthSummary'];
      return ResumeModel.fromJsom(values)[0];
    }
  }

  String _getQuery() {
    return """
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
  }
}
