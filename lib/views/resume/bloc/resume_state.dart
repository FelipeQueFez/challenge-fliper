import 'package:challenge_fliper/modules/hasura/models/resume_model.dart';
import 'package:equatable/equatable.dart';

class ResumeState extends Equatable {
  final bool loading;
  final String error;
  final ResumeModel data;

  ResumeState({this.loading, this.error, this.data});

  factory ResumeState.initial() {
    return ResumeState(
      loading: false,
      error: '',
      data: new ResumeModel(),
    );
  }
  ResumeState copyWith({
    bool loading,
    String error,
    ResumeModel data,
  }) {
    return ResumeState(
      loading: loading ?? this.loading,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }

  @override
  List<Object> get props => [loading, error, data];
}
