import 'package:bloc_example/src/models/interests.dart';

import 'api_provider.dart';

class Repository{
  final _provider = ApiProvider();
  Future<Interests> fetchInterest(){
    return _provider.fetchInterest();
  }
}

class NetworkError extends Error{}