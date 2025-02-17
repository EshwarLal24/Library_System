import 'dart:math';

import 'package:admin_dashboard_app/Recordbook.dart';
import 'package:admin_dashboard_app/ReturnBook.dart';
import 'package:admin_dashboard_app/addbook.dart';
import 'package:admin_dashboard_app/bookDetail.dart';
import 'package:admin_dashboard_app/issue_book.dart';
import 'package:admin_dashboard_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



enum SideBarItem {
 dashboard(
      value: 'Dashboard', iconData: Icons.dashboard, body: LoginScreen()),
  IssueBook(value: 'IssuePAge', iconData: Icons.business, body: IssuePage()),
  Return_Book(value: 'ReturnBook', iconData: Icons.group, body: Returnbook()),
  Record_Book(value: 'RecordBook', iconData: Icons.group, body: RecordBook()),
  DetailBook(value: 'DetailBook', iconData: Icons.group, body: Bookdetail()),




  Addbook(value: 'AddBook', iconData: Icons.campaign, body: AddBook()),
  settings(value: 'Settings', iconData: Icons.settings, body: LoginScreen());


  const SideBarItem(
      {required this.value, required this.iconData, required this.body});
  final String value;
  final IconData iconData;
  final Widget body;
}

final sideBarItemProvider =
    StateProvider<SideBarItem>((ref) => SideBarItem.dashboard);

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  SideBarItem getSideBarItem(AdminMenuItem item) {
    for (var value in SideBarItem.values) {
      if (item.route == value.name) {
        return value;
      }
    }
    return SideBarItem.dashboard;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sideBarItem = ref.watch(sideBarItemProvider);
    final sideBarkey = ValueKey(Random().nextInt(1000000));
    const String stringParam = 'String parameter';
    const int intParam = 1000000;
    return AdminScaffold(
        appBar: AppBar(title: const Text('Admin Panel Demo')),
        sideBar: SideBar(
            key: sideBarkey,
            activeBackgroundColor: Colors.white,
            onSelected: (item) => ref
                .read(sideBarItemProvider.notifier)
                .update((state) => getSideBarItem(item)),
            items: SideBarItem.values
                .map((e) => AdminMenuItem(
                    title: e.value, icon: e.iconData, route: e.name))
                .toList(),
            selectedRoute: sideBarItem.name),
        body: ProviderScope(overrides: [
          paramProvider.overrideWithValue((stringParam, intParam))
        ], child: sideBarItem.body));
  }
}

final paramProvider = Provider<(String, int)>((ref) {
  throw UnimplementedError();
});





