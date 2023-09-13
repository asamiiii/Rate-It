import 'package:flutter/widgets.dart';
import 'package:rate_it/features/rating/data/models/rate_item_model.dart';
import 'package:rate_it/features/rating/data/repositories/rate_repo_imp.dart';
import 'package:rate_it/features/rating/domain/repositories/rating_repo.dart';

class HomeVm extends ChangeNotifier {
  RatingRepo ratRepo = RateRepoImp();
  bool isLoading = false;
  List<RateItem> popular = [];

  getPopular() {
    isLoading = true;
    notifyListeners();
    Future.delayed(const Duration(seconds: 1), () {
      popular = ratRepo.getPopular();
      isLoading = false;
      notifyListeners();
    });
    notifyListeners();
  }
}
