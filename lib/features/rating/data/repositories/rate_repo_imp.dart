import 'package:rate_it/features/rating/data/datasources/dummy_data.dart';
import 'package:rate_it/features/rating/data/models/rate_item_model.dart';
import 'package:rate_it/features/rating/domain/repositories/rating_repo.dart';

class RateRepoImp implements RatingRepo {
  @override
  List<RateItem> getPopular() {
    return rateItems;
  }

}