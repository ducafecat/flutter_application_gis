import 'package:flutter_application_gis/common/layout/home/index.dart';
import 'package:flutter_application_gis/pages/company/index.dart';
import 'package:flutter_application_gis/pages/dashboard/index.dart';
import 'package:flutter_application_gis/pages/login/index.dart';
import 'package:flutter_application_gis/pages/projects/index.dart';
import 'package:flutter_application_gis/pages/users/index.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Login;

  static final List<GetPage> routes = [
    // 白名单
    GetPage(
      name: AppRoutes.Login,
      transition: Transition.fadeIn,
      page: () => LoginView(),
    ),

    // 需要登录验证
    GetPage(
      name: AppRoutes.Home,
      transition: Transition.fadeIn,
      page: () => LayoutView(
        content: DashboardView(),
      ),
      // binding: HomeBinding(),
      children: [
        GetPage(
          name: AppRoutes.Dashboard,
          transition: Transition.fadeIn,
          page: () => LayoutView(
            content: DashboardView(),
          ),
        ),
        GetPage(
          name: AppRoutes.Users,
          transition: Transition.fadeIn,
          page: () => LayoutView(
            content: UsersView(),
          ),
        ),
        GetPage(
          name: AppRoutes.Company,
          transition: Transition.fadeIn,
          page: () => LayoutView(
            content: CompanyView(),
          ),
        ),
        GetPage(
          name: AppRoutes.Projects,
          transition: Transition.fadeIn,
          page: () => LayoutView(
            content: ProjectsView(),
          ),
        ),
      ],
    ),
  ];

  // 找不到去登录页
  static final unknownRoute = GetPage(
    name: AppRoutes.Login,
    page: () => LoginView(),
  );
}
