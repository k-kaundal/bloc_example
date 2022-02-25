
class Interests{
  var error;
  List<InterestsData> dataList =[];
  Interests.withError(String errorMessage){
   error = errorMessage;
  }
  Interests.fromJson( Map<String, dynamic> json){
    if(json['data'] != null){
      json['data'].forEach((v){
        dataList.add(InterestsData.fromJson(v));
      });
    }
  }
}

class InterestsData{
  int? id ;
  String? name;
  String? pic_url;
  String? thumb_url;
  InterestsData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    pic_url = json['pic_url'];
    thumb_url = json['thumb_url'];
  }
}