
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repo/repository.dart';
import 'employee_event.dart';
import 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent,EmployeeState>{
  EmployeeBloc() : super(EmployeeInitial()){
    final Repository _apiRepository = Repository();

    on<GetEmployee>((event, emit) async{
      try{
        emit(EmployeeInitial());
        final data = await _apiRepository.fetchEmployee(id:event.id);
        emit(EmployeeLoaded(data));
        print(data);
        if(data.error != null){
          emit(EmployeeError(data.error));
        }
      }on NetworkError {
        emit(EmployeeError("Failed to fetch data , is your device ?"));
      }
    });
  }
}