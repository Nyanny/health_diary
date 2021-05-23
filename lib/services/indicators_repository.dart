import 'package:health_diary/services/repository.dart';

class IndicatorsRepository extends Repository {
  Future<List<String>> getData() async {
    // TODO подргузка из БД
    return ["Weight 45kg", "Height: 166sm"];
  }
}
