import 'package:jisr_almharat/features/home/data/model/all_jobs_model.dart';

abstract class DataState {}

class DataInitial extends DataState {}

class DataLoading extends DataState {}

class DataLoaded extends DataState {
  final JobModel jobInfo;
  final TrainingModel trainingInfo;

  DataLoaded(this.jobInfo, this.trainingInfo);
}

class DataError extends DataState {
  final String message;

  DataError(this.message);
}
