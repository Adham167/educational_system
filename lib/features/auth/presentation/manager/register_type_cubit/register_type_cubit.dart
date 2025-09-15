import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_type_state.dart';

class RegisterTypeCubit extends Cubit<String> {
  RegisterTypeCubit() : super("Student");
  void registerType(String type) {
    emit(type);
  }
}
