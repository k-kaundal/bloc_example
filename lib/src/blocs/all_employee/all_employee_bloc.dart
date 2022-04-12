import 'package:bloc_example/src/blocs/all_employee/all_employee_event.dart';
import 'package:bloc_example/src/blocs/all_employee/all_employee_state.dart';
import 'package:bloc_example/src/repo/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllEmployeeBloc extends Bloc<AllEmployeeEvent,AllEmployeeState>{
  AllEmployeeBloc() : super(AllEmployeeInitial()){
    final Repository _apiRepository = Repository();

    on<GetEmployeeList>((event, emit) async{
      try{
        emit(AllEmployeeInitial());
        final mList = await _apiRepository.fetchAllEmployee();
        emit(AllEmployeeLoaded(mList));
        if(mList.error != null){
          emit(AllEmployeeError(mList.error));
        }
      }on NetworkError {
        emit(AllEmployeeError("Failed to fetch data , is your device ?"));
      }
    });
  }
}