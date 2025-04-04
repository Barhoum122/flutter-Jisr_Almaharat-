import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jisr_almharat/features/home/data/model/all_jobs_model.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_state.dart';

import '../../data/repo/home_repo.dart';

class HomeCubit extends Cubit<DataState> {
  // final StudentRepositery _studentRepositeryfi

  final HomeRepo homeRepo;

  HomeCubit({required this.homeRepo}) : super(DataInitial());

  void fetchJobInfo() async {
    emit(DataLoading());
    try {
      final jobdata = await homeRepo.getJobInfo();
      final trainingdata = await homeRepo.getTrainingInfo();
      emit(DataLoaded(jobdata, trainingdata));
    } catch (e) {
      emit(DataError(e.toString()));
    }
  }
}
