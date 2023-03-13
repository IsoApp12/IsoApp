import 'package:project_four/modules/customer/profile_customer/profile_screen.dart';
import 'package:project_four/modules/first_screen/first_screen.dart';
import 'package:project_four/modules/provider/orders/home_order_screen.dart';
import 'package:project_four/modules/provider/orders/order_screen.dart';
import 'package:project_four/modules/provider/profile_provider/appointment_screen.dart';
import 'package:project_four/modules/provider/profile_provider/profile_screen.dart';

Map Routes() {
  return {
    FirstScreen.routeName: (_) => FirstScreen(),
    HomeScreenProvider.routeName: (_) => HomeScreenProvider(),
    AppointmentScreen.routeName: (_) => AppointmentScreen(),
    ProfileOfProvider.routeName: (_) => ProfileOfProvider(),
    ProfileScreenCustomer.routeName: (_) => ProfileScreenCustomer(),
    OrderScreen.routeName: (_) => OrderScreen()
  };
}
