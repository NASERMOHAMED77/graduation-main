// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:graduation/features/store_portfollio/data/data_sources/repo_store.dart';
import 'package:graduation/features/store_portfollio/data/models/store_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RepoStoreImp extends RepoStore {
  @override
  Future<StoreModel?> get_store(int id) async {
    var url =
        "http://ma7aliapigp.runasp.net/api/Store/GetStore?id=$id";
    final StoreModel storeModel;
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, parse the JSON.
        storeModel = StoreModel.fromJson(json.decode(response.body));
        debugPrint("Success: ${storeModel.toJson()}");
        return storeModel;
      } else {
        // If the server did not return a 200 OK response, throw an exception.
        debugPrint("Error: ${response.statusCode} ${response.body}");
        return null;
      }
    } catch (e) {
      debugPrint("Exception: $e");
      rethrow;
    }
  }
}
