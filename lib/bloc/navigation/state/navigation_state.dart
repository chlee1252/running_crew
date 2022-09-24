part of '../cubit/navigation_cubit.dart';

class NavigationState extends Equatable {
  const NavigationState(
      this.navigationItem, this.index, this.extendBody, this.title);

  final NavigationItem navigationItem;
  final int index;
  final bool extendBody;
  final String title;

  @override
  List<Object?> get props => [navigationItem, index, extendBody, title];
}
