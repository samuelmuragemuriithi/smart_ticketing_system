// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:http/http.dart' as http;

Future<String> fetchAction() async {
  // Add your function code here!
  const String url = 'https://ticket-api-1hh0.onrender.com/tickets/auto-assign';
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return 'online';
    } else {
      return 'Error: API call failed with status ${response.statusCode}';
    }
  } on SocketException {
    return 'No internet connection';
  } catch (e) {
    return 'Error: $e';
  }
}
