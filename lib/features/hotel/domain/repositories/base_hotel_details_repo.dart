import 'package:hotel_task/features/hotel/domain/entities/hotel.dart';

abstract class BaseHotelDetailsRepo{
  Future <List<Hotel>> getHotelDetails();
}