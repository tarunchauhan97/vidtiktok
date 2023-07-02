import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:vidtiktoks/controllers/auth_controller.dart';
import 'package:vidtiktoks/views/screens/tab_screens/add_video_screen.dart';
import 'package:vidtiktoks/views/screens/tab_screens/message_screen.dart';
import 'package:vidtiktoks/views/screens/tab_screens/profile_screen.dart';
import 'package:vidtiktoks/views/screens/tab_screens/search_screen.dart';
import 'package:vidtiktoks/views/screens/tab_screens/video_screen.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  MessageScreen(),
  ProfileScreen(uid: authController.user.uid),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.blueAccent;
const borderColor = Colors.black12;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
