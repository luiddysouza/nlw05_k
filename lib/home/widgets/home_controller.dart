import 'package:flutter/foundation.dart';
import 'package:nlw05_k/core/app_images.dart';
import 'package:nlw05_k/home/widgets/home_repository.dart';
import 'package:nlw05_k/home/widgets/home_state.dart';
import 'package:nlw05_k/shared/widgets/progress_indicator/models/answer_model.dart';
import 'package:nlw05_k/shared/widgets/progress_indicator/models/question_model.dart';
import 'package:nlw05_k/shared/widgets/progress_indicator/models/quiz_model.dart';
import 'package:nlw05_k/shared/widgets/progress_indicator/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;

    user = await repository.getUser();
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}
