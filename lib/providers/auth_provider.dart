import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  
}
