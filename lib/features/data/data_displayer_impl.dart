import 'package:sqfilte_test/core/helper/api_service.dart';
import 'package:sqfilte_test/models/interview.dart';

class DataDisplayerImpl {
  final ApiService _apiService;

  DataDisplayerImpl(ApiService apiService) : _apiService = apiService;

  Future<List<Interview>> fetchAllData() async {
    try {
      var result =
          await _apiService.get(endPoint: '/InvoiceDetail');
      List<Interview> allData = [];
      for (final data in result) {
        allData.add(Interview.fromJson(data));
      }
      return allData;

    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
