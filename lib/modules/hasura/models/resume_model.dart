class ResumeModel {
  double cdi;
  double gain;
  double profitability;
  int total;

  ResumeModel({this.cdi, this.gain, this.profitability, this.total});

  static List<ResumeModel> fromJsom(Iterable values) {
    List<ResumeModel> list = new List<ResumeModel>();

    for (Map<String, dynamic> item in values) {
      list.add(
        new ResumeModel(
          cdi: item['cdi'],
          gain: item['gain'],
          profitability: item['profitability'],
          total: item['total'],
        ),
      );
    }

    return list;
  }
}
