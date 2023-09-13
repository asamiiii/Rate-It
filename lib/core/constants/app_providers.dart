import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rate_it/features/rating/domain/repositories/rating_repo.dart';
import 'package:rate_it/features/rating/presentation/view_model/home_vm.dart';

import '../../features/auth/presentation/viewModel/login_vm.dart';
import '../../features/auth/presentation/viewModel/register_vm.dart';

class AppProviders{
  static List<SingleChildWidget> providers=[
        ChangeNotifierProvider<LoginViewModel>(create: (context) => LoginViewModel()),
        ChangeNotifierProvider<RegisterVm>(create: (context) => RegisterVm()),
        ChangeNotifierProvider<HomeVm>(create: (context) => HomeVm()),
        ];
}