import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:running_crew/bloc/navigation/constants/navigation_items.dart';

part '../state/navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(const NavigationState(NavigationItem.home, 0, true, '4567'));

  void getNavigationItem(NavigationItem navigationItem) {
    switch (navigationItem) {
      case NavigationItem.home:
        emit(const NavigationState(NavigationItem.home, 0, true, '4567'));
        break;
      case NavigationItem.course:
        emit(const NavigationState(NavigationItem.course, 1, false, '러닝코스'));
        break;
      case NavigationItem.crew:
        emit(const NavigationState(NavigationItem.crew, 2, false, '러닝 크루'));
        break;
    }
  }
}
