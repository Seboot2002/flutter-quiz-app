import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quiz_proyect/models/entities/quiz.dart';
import 'package:quiz_proyect/models/httpResponse/service_http_response.dart';
import 'package:quiz_proyect/services/quiz_service.dart';

class HomeController extends GetxController {
  QuizService service = QuizService();
  var quizzes = <Quiz>[].obs;

  void initialFetch(BuildContext context) async {
    Future<ServiceHttpResponse?> response = service.fetchAll();
    ServiceHttpResponse? result = await response;
    if (result == null) {
      print('no hay respuesta del servidor');
    } else {
      if (result.status == 200) {
        quizzes.value = result.body;
      } else {
        print("Error en la respuesta del servidor");
      }
    }
  }
}
