class BottomNavIcon {
  final String activeIcon;
  final String iconName;
  final int position;
  final bool isActive;
  final bool hasBadge;

  const BottomNavIcon({
    required this.activeIcon,
    required this.iconName,
    required this.position,
    this.isActive = false,
    this.hasBadge = false,
  });

  BottomNavIcon copyWith({
    String? activeIcon,
    String? iconName,
    int? position,
    bool? isActive,
    bool? hasBadge,
  }) =>
      BottomNavIcon(
        activeIcon: activeIcon ?? this.activeIcon,
        iconName: iconName ?? this.iconName,
        position: position ?? this.position,
        isActive: isActive ?? this.isActive,
        hasBadge: hasBadge ?? this.hasBadge,
      );
}