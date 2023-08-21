import 'package:flutter/material.dart';
import 'package:test_teleport/widgets/profile/personal_account.dart';
import 'package:test_teleport/widgets/qr_code/qr-duble.dart';
import 'package:test_teleport/widgets/qr_code/screen_qr_pay.dart';

import 'items_favorites.dart';

class MySquare extends StatelessWidget {
  const MySquare({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(
        width: 16,
      ),
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        List<Items1> list = [
          Items1(
              '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/frame-242-8ud.png',
              'Мои платежи',
              () {}),
          Items1(
              '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/003-park-tickets-couple.png',
              'Билеты',
              () {}),
          Items1(
              '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/002-coupon.png',
              'Карты лояльности',
              () {}),
          Items1(
              '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/001-qr-menu.png',
              'QR - оплата', () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const qrDuble()));
          }),
        ];
        return ItemsFavorities(item: list[index]);
      },
    );
  }
}

class Items1 {
  final String item;
  final String name;
  final Function()? onTap;

  Items1(this.item, this.name, this.onTap);
}
