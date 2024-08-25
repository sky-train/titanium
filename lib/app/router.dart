import 'package:locator/locator.dart';
import 'package:router/router.dart' as router;
import 'package:titanium/app/routes/landing_route.dart';
import 'package:titanium/app/routes/product_card_route.dart';

@Injectable()
class ApplicationRouter extends router.ApplicationRouter {
  ApplicationRouter() {
    push(LandingPageRoute());
  }

  void goToLandingPage() {
    if (!backToPageRoute<LandingPageRoute>()) {
      push(LandingPageRoute());
    }
  }

  void goToProductCardPage(int product) {
    push(ProductCardPageRoute(product));
  }
}
