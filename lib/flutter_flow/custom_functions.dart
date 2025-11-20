import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? isNotRain(String weatherCondition) {
  // Normalize the input to lowercase and check for 'rain'
  return !weatherCondition.toLowerCase().contains("rain");
}

int? streaklogic(
  int? streakCount,
  DateTime? dateTime,
) {
  // initalize streakCount to 1, increment evey 24hrs the user logs in. if its been longer than 24 hrs since the last login the streakcount gets reset to 1 return streakcount number
  if (streakCount == null) {
    streakCount = 1; // Initialize streakCount to 1
  }

  DateTime now = DateTime.now();

  if (dateTime != null) {
    Duration difference = now.difference(dateTime);
    if (difference.inHours >= 24) {
      streakCount = 1; // Reset streakCount if more than 24 hours have passed
    } else {
      streakCount++; // Increment streakCount if within 24 hours
    }
  }

  return streakCount; // Return the updated streakCount
}
