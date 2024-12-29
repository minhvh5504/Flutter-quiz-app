import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:app_flutter_demo/models/question_model.dart';

class QuestionRepository {
  Future<List<Question>> getQuestion(int idTopic) async {
    final url =
        'https://apiforlearning.zendvn.com/api/v2/category_programming_quiz/topics/$idTopic/quizzes?limit=100&page=1';
    final response = await http.get(Uri.parse(url));
    List data = jsonDecode(response.body)['data'];
    List<Question> questions = List<Question>.from(
        data.map((e) => Question.fromJson(jsonEncode(e))).toList());
    return questions;
  }
}
