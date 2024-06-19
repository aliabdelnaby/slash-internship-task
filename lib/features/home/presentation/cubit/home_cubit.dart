import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
