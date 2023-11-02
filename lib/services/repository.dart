import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


final RepositoriesProvider = Provider<Repositories>((ref) => Repositories());


class RepoModel {

  dynamic name;
  dynamic full_name;

  RepoModel(
      {required this.name,
        required this.full_name,
   });

  factory RepoModel.fromJson(Map<String, dynamic> json) {
    return RepoModel(
      name: json['name'],
      full_name: json['full_name'],
    );
  }
}




class Repositories{

  Future <List<RepoModel>> Repository() async {
    try {
      final url = Uri.parse('https://api.github.com/users/isaac/repos');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        var responseData = json.decode(response.body);
        List<RepoModel> repoModelList = [];
        for(var repo in responseData){
          RepoModel repoModel = RepoModel(
              name: repo['name'],
              full_name: repo['full_name'],);

          repoModelList.add(repoModel);
        }
        return repoModelList;

      } else {
        throw Exception('Something went wrong');
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}