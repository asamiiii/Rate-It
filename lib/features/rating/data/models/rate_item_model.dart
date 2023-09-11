import 'comment_model.dart';

class RateItem{
  String? id;
  String? brandName;
  String? brandNameAr;
  String? image;
  double? rating;
  String? categoryId;
  String? categoryName;
  List<Comment?>? comments; 
  RateItem({this.id,this.brandName,this.categoryId,this.categoryName,this.comments,this.image,this.rating});
}

