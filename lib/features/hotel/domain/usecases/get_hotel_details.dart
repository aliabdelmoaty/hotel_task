import 'package:hotel_task/features/hotel/domain/entities/hotel.dart';
import 'package:hotel_task/features/hotel/domain/repositories/base_hotel_details_repo.dart';

class GetHotelDetailsUseCase {
  GetHotelDetailsUseCase({required this.baseHotelDetailsRepo});
  final BaseHotelDetailsRepo baseHotelDetailsRepo;
  Future<List<Hotel>> execute() async {
    return await baseHotelDetailsRepo.getHotelDetails();
  }
}
