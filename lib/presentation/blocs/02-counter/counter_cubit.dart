import 'package:flutter_bloc/flutter_bloc.dart';

class COunterCubit extends Cubit<int> {
  COunterCubit() : super(5);

  void incrementBy (int value) => emit(state + value);
}