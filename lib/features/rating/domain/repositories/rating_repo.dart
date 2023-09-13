import 'package:rate_it/features/rating/data/models/rate_item_model.dart';
import 'package:rate_it/features/rating/data/repositories/rate_repo_imp.dart';

abstract class RatingRepo{
  List<RateItem> getPopular();
}