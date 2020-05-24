import 'package:flutter/material.dart';

class DefaultResponse<T> {
  bool isSuccess;
  T data;
  String error;

  DefaultResponse({@required this.isSuccess, this.data, this.error});
}
