import 'package:hotel_task/features/hotel/domain/entities/hotel.dart';

class HotelModel extends Hotel {
  const HotelModel(
      {required super.name,
      required super.currency,
      required super.image,
      required super.review,
      required super.address,
      required super.reviewScore,
      required super.starts,
      required super.price});

  factory HotelModel.fromJson(Map<String, dynamic> json) =>HotelModel(
        name: json['name'] ,
        currency: json['currency'],
        image: json['image'],
        review: json['review'],
        address: json['address'],
        reviewScore: json['reviewScore'],
        starts: json['stars'],
        price: json['price'],
      );
}
