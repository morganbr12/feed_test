part of 'bottom_nav_bloc.dart';

class BottomNavState extends Equatable {
  final int navSelectedIndex;
  final List<BottomNavIcon> bottomNavList;

  const BottomNavState({
    this.navSelectedIndex = 0,
    this.bottomNavList = const [
      BottomNavIcon(
        activeIcon: AppIcons.kHomeIcon,
        iconName: 'Home',
        position: 0,
        isActive: true,
      ),
      BottomNavIcon(
        activeIcon: AppIcons.kSearchIcon,
        iconName: 'Search',
        position: 0,
        isActive: true,
      ),
      BottomNavIcon(
        activeIcon: AppIcons.kCreateIcon,
        iconName: 'Create',
        position: 0,
        isActive: true,
      ),
      BottomNavIcon(
        activeIcon: AppIcons.kChatIcon,
        iconName: 'Chat',
        position: 0,
        isActive: true,
      ),
      BottomNavIcon(
        activeIcon: AppIcons.kPersonIcon,
        iconName: 'Profile',
        position: 0,
        isActive: true,
      ),
    ],
  });

  BottomNavState copyWith({
    int? navSelectedIndex,
    List<BottomNavIcon>? bottomNavList,
  }) =>
      BottomNavState(
        navSelectedIndex: navSelectedIndex ?? this.navSelectedIndex,
        bottomNavList: bottomNavList ?? this.bottomNavList,
      );

  @override
  List<Object> get props => [
    navSelectedIndex,
    bottomNavList,
  ];
}

