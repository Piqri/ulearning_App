import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/pages/home/bloc/home_page_events.dart';
import 'package:ulearning_app/pages/home/bloc/home_page_states.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState()) {
    on<HomepageDots>(_homePageDots);
  }

  void _homePageDots(HomepageDots event, Emitter<HomePageState> emit) {
    emit(state.copyWith(index: event.index));
  }
}
