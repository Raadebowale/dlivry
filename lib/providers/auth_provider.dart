import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dlivry/models/user_model.dart';
import 'package:dlivry/providers/db_provider.dart';
import 'package:dlivry/routes/route_path.dart';
import 'package:dlivry/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  final db = DbProvider();
  bool isActive = false;
  UserModel? userSignedIn;
  // bool buttonActive = true;

/*   final String fullName;
  final String email;
  final String password;
  final String address;
  final String phone;
  final String id;
  AuthProvider({
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.address,
    required this.phone,
  }); */

  bool buttonActive = false;
  void setButton(value) {
    buttonActive = value;
    notifyListeners();
  }

  // Register account
  void createAccount(
    BuildContext context, {
    required String fullName,
    required String email,
    required String password,
    required String phone,
  }) async {
    isActive = false;
    notifyListeners();
    try {
      final credentials = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      UserModel user = UserModel(
        fullName: fullName,
        email: email,
        phone: phone,
        id: credentials.user!.uid,
      );
      await db.addUserToDb(user);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Successfully Created an acount for $fullName')));
        userSignedIn = user;
        Navigator.pushNamed(context, RoutePath.main);
      }
    } catch (err) {
      if (context.mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('An Error Occured: $err')));
      }
    } finally {
      isActive = buttonActive;
      notifyListeners();
    }
  }

  // Login
  void login(BuildContext context,
      {required String email, required String password}) async {
    isActive = false;
    notifyListeners();
    try {
      final userCredentials = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("$email Successfully Signed in"),
        ));
        await setCurrentUser(context, userCredentials.user!.uid);
        if (context.mounted) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutePath.main,
            (route) => false,
          );
        }
      }
      log(userCredentials.toString());
    } catch (e) {
      log('Error');
      log(e.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Error invalid email or password"),
        ),
      );
    } finally {
      isActive = true;
      notifyListeners();
    }
  }

  Future setCurrentUser(BuildContext context, String userId) async {
    final userJson = await FirebaseFirestore.instance
        .collection(Constants.user)
        .doc(userId)
        .get();

    userSignedIn = UserModel.fromJson(userJson.data() as Map<String, dynamic>);

    // final dbProvider = Provider.of<DbProvider>(context, listen: false);
    // await dbProvider.getAllDeliveries();
  }
}
