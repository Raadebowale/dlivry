// import 'dart:convert';

class DeliveryModel {
  final String senderName;
  final String senderMobileNumber;
  final String senderAddress;
  final String? senderApartment;
  final String? senderLandmark;
  final String date;
  final String time;
  final String packageSize;
  final String deliveryType;
  final String receiverName;
  final String receiverMobileNumber;
  final String receiverAddress;
  final String? receiverApartment;
  final String? receiverLandmark;
  final String? id;
  final String? userId;

  DeliveryModel({
    required this.senderName,
    required this.senderMobileNumber,
    required this.senderAddress,
    this.senderApartment,
    this.senderLandmark,
    required this.date,
    required this.time,
    required this.packageSize,
    required this.deliveryType,
    required this.receiverName,
    required this.receiverMobileNumber,
    required this.receiverAddress,
    this.receiverApartment,
    this.receiverLandmark,
    this.id,
    this.userId,
  });

  static toModel(Map<String, dynamic> json) {
    return DeliveryModel(
      senderName: json['senderName'],
      senderMobileNumber: json['senderMobileNumber'],
      senderAddress: json['senderAddress'],
      date: json['date'],
      time: json['time'],
      packageSize: json['packageSize'],
      deliveryType: json['deliveryType'],
      receiverName: json['receiverName'],
      receiverMobileNumber: json['receiverMobileNumber'],
      receiverAddress: json['receiverAddress'],
      id: json['id'],
      userId: json['userId'],
    );
  }

  static toJson(DeliveryModel delivery) {
    return {
      "senderName": delivery.senderName,
      "senderMobileNumber": delivery.senderMobileNumber,
      "senderAddress": delivery.senderAddress,
      "date": delivery.date,
      "time": delivery.time,
      "packageSize": delivery.packageSize,
      "deliveryType": delivery.deliveryType,
      "receiverName": delivery.receiverName,
      "receiverMobileNumber": delivery.receiverMobileNumber,
      "receiverAddress": delivery.receiverAddress,
      "id": delivery.id,
      "userId": delivery.userId,
    };
  }
}
