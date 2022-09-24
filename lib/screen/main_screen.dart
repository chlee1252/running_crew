import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_crew/bloc/navigation/constants/navigation_items.dart';
import 'package:running_crew/bloc/navigation/cubit/navigation_cubit.dart';
import 'package:running_crew/screen/course_screen.dart';
import 'package:running_crew/screen/crew_screen.dart';
import 'package:running_crew/screen/home_screen.dart';
import 'package:running_crew/widgets/title_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    const HomeScreen(),
    const CourseScreen(),
    const CrewScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: TitleAppBar(
            title: state.title,
          ),
          body: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              return screens[state.index];
            },
          ),
          extendBody: state.extendBody,
          bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              return FloatingNavbar(
                borderRadius: 16.0,
                backgroundColor: Colors.white,
                unselectedItemColor: Colors.black,
                selectedBackgroundColor: Colors.black,
                selectedItemColor: Colors.white,
                currentIndex: state.index,
                onTap: (int index) {
                  if (index == 0) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavigationItem(NavigationItem.home);
                  } else if (index == 1) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavigationItem(NavigationItem.course);
                  } else if (index == 2) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavigationItem(NavigationItem.crew);
                  }
                },
                items: [
                  FloatingNavbarItem(icon: Icons.home, title: 'Home'),
                  FloatingNavbarItem(icon: Icons.explore, title: 'Course'),
                  FloatingNavbarItem(icon: Icons.settings, title: 'Crew'),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
