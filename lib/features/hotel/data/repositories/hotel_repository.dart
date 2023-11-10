import 'package:hotel_task/features/hotel/data/datasources/remote/hotel_remote_data_source.dart';
import 'package:hotel_task/features/hotel/domain/entities/hotel.dart';
import 'package:hotel_task/features/hotel/domain/repositories/base_hotel_details_repo.dart';

class MovieRepository extends BaseHotelDetailsRepo {
  final BaseHotelRemoteDataSource baseHotelRemoteDataSource;

  MovieRepository(this.baseHotelRemoteDataSource);
  @override
  Future<List<Hotel>> getHotelDetails() async {
    final result = await baseHotelRemoteDataSource.getHotelDetails();
    try {
      return result;
    } catch (failure) {
      throw Exception(failure);
    }
  }
}
