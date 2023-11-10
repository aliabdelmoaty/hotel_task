// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Hotel extends Equatable {
  final String name;
  final String currency;
  final String image;
  final String review;
  final String address;
  final double reviewScore;
  final int starts;
  final int price;
  const Hotel({
    required this.name,
    required this.currency,
    required this.image,
    required this.review,
    required this.address,
    required this.reviewScore,
    required this.starts,
    required this.price,
  });

  @override
  List<Object> get props {
    return [
      name,
      currency,
      image,
      review,
      address,
      reviewScore,
      starts,
      price,
    ];
  }
}
