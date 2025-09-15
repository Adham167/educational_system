import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'level_state.dart';

class LevelCubit extends Cubit<String> {
  LevelCubit() : super("Beginner");
  void selectLevel(String level) {
 emit(level);
  }
}
