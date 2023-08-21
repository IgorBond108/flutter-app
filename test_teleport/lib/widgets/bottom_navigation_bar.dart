import 'package:flutter/material.dart';

BottomNavigationBar bottomNavigationBar(int selectedTab, void onSelectTab) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: selectedTab,
    items: [
      // навигацию делал сначала со встроенными в материал иконками - но позже подумал что вам нужно все как в фигме поэтому от туда вытянул их
      BottomNavigationBarItem(
          icon: Image.asset(
              '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/Union.png'),
          label: 'Главная'),
      BottomNavigationBarItem(
        icon: Image.asset(
            '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/003-shopping-bag-1.png'),
        label: 'Покупки',
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
              '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/005-wallet.png'),
          label: 'Платежи'),
      BottomNavigationBarItem(
          icon: Image.asset(
              '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/003-chat.png'),
          label: 'Чат'),
      BottomNavigationBarItem(
          icon: Image.asset(
              '/Users/admin/Documents/GitHub/flutter-app/test_teleport/assets/icons_buttomNavigationBar/002-gift.png'),
          label: 'Бонусы'),
    ],
  );
}
