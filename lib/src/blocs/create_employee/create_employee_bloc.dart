
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repo/repository.dart';
import 'create_employee_event.dart';
import 'create_employee_state.dart';

class CreateEmployeeBloc extends Bloc<CreateEmployeeEvent,CreateEmployeeState>{
  CreateEmployeeBloc() : super(CreateEmployeeInitial()){
    final Repository _apiRepository = Repository();

    on<CreateEmployeeList>((event, emit) async{
      try{
        emit(CreateEmployeeInitial());
        final mList = await _apiRepository.createEmployee();
        emit(CreateEmployeeLoaded(mList));
        if(mList.error != null){
          emit(CreateEmployeeError(mList.error));
        }
      }on NetworkError {
        emit(CreateEmployeeError("Failed to fetch data , is your device ?"));
      }
    });
  }
}