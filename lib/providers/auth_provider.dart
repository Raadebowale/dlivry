import 'package:dlivry/models/user_model.dart';
import 'package:dlivry/providers/db_provider.dart';
import 'package:dlivry/routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  final db = DbProvider();

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
  createAccount(
    BuildContext context, {
    required String fullName,
    required String email,
    required String password,
    required String address,
    required String phone,
  }) async {
    try {
      final credentials = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      UserModel user = UserModel(
        fullName: fullName,
        email: email,
        address: address,
        phone: phone,
        id: credentials.user!.uid,
      );
      await db.addUserToDb(user);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Successfully Created an acount for $fullName')));
        Navigator.pushNamed(context, RoutePath.main);
      }
    } catch (err) {
      if (context.mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('An Error Occured: $err')));
      }
    } finally {
      notifyListeners();
    }
  }
}
