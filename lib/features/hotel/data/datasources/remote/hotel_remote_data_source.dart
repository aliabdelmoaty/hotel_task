import 'package:dio/dio.dart';
import 'package:hotel_task/core/network/api_constants.dart';
import 'package:hotel_task/features/hotel/data/models/hotel_model.dart';

abstract class BaseHotelRemoteDataSource {
  Future<List<HotelModel>> getHotelDetails();
}

class MovieRemoteDataSource extends BaseHotelRemoteDataSource {
  @override
  Future<List<HotelModel>> getHotelDetails() async {
    final response = await Dio().get(ApiConstants.pathHotelDetails);
    print(response.data);
    if (response.statusCode == 200) {
      return List<HotelModel>.from((response.data as List)
          .map((e) => HotelModel.fromJson(e)));
    } else {
     throw Exception('Failed to load hotels');
    }
  }
}
