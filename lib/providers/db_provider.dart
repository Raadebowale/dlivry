import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dlivry/models/delivery_model.dart';
import 'package:dlivry/models/user_model.dart';
import 'package:dlivry/providers/auth_provider.dart';
import 'package:dlivry/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DbProvider extends ChangeNotifier {
  final _db = FirebaseFirestore.instance;

  bool isAddingDelivery = false;

  addUserToDb(UserModel user) async {
    try {
      await _db
          .collection(Constants.user)
          .doc(user.id)
          .set(UserModel.toJson(user));
    } catch (e) {
      rethrow;
    }
  }

  addDelivery(
    BuildContext context, {
    required String senderName,
    required String senderMobileNumber,
    required String senderAddress,
    String? senderApartment,
    String? senderLandmark,
    required String date,
    required String time,
    required String packageSize,
    required String deliveryType,
    required String receiverName,
    required String receiverMobileNumber,
    required String receiverAddress,
    String? receiverApartment,
    String? receiverLandmark,
  }) async {
    isAddingDelivery = true;
    notifyListeners();
    final auth = Provider.of<AuthProvider>(context);

    try {
      final myDelivery = DeliveryModel(
          senderName: senderName,
          senderMobileNumber: senderMobileNumber,
          senderAddress: senderAddress,
          date: date,
          time: time,
          packageSize: packageSize,
          deliveryType: deliveryType,
          receiverName: receiverName,
          receiverMobileNumber: receiverMobileNumber,
          receiverAddress: receiverAddress);
      final delivery = await _db
          .collection("delivery")
          .add(DeliveryModel.toJson(myDelivery));
      //update id and id to database
      _db.collection("delivery").doc(delivery.id).update({
        'id': delivery.id,
        'userId': auth.userSignedIn!.id,
      });
    } catch (e) {
      rethrow;
    } finally {
      isAddingDelivery = false;
      notifyListeners();
    }
  }
}
