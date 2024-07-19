import 'package:flutter_lms/Feature/table/schedule_cubit.dart';

class AskreyaModel {
  final String? startDate;
  final String? endDate;
  final List num;
  final String? serialNumber;

  AskreyaModel(
      {required this.startDate, required this.endDate, required this.num , required this.serialNumber});
  factory AskreyaModel.fromJson(dynamic data) {
    return AskreyaModel(
      num: data ==null?[]:data ['num'],
      startDate: data == null?null:data['startDate'],
      endDate: data == null?null:data['endDate'],
      serialNumber: data == null?null:data['serialNumber'],
    );
  }
}
