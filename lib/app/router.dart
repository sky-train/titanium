import 'package:locator/locator.dart';
import 'package:router/router.dart' as router;

@Injectable()
class ApplicationRouter extends router.ApplicationRouter {
  ApplicationRouter() {
    // start page
    // push(HomePageRoute());
  }

  void goToHome() {
    // if (!backToPageRoute<HomePageRoute>()) {
    //   push(HomePageRoute());
    // }
  }
}
