import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dlivry/models/user_model.dart';
import 'package:dlivry/utils/constants.dart';
import 'package:flutter/material.dart';

class DbProvider extends ChangeNotifier {
  final _db = FirebaseFirestore.instance;

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
}
