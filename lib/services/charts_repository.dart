
import 'package:health_diary/services/repository.dart';

class ChartsRepository extends Repository {
  Future<List<double>> getData() async {
    // TODO подргузка из БД
    return [49.0, 51.0, 52.3, 49.5];
  }
}