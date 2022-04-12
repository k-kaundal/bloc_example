
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repo/repository.dart';
import 'employee_event.dart';
import 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent,EmployeeState>{
  String id;
  EmployeeBloc({
    required this.id
}) : super(EmployeeInitial()){
    final Repository _apiRepository = Repository();

    on<GetEmployeeList>((event, emit) async{
      try{
        emit(EmployeeInitial());
        final mList = await _apiRepository.fetchEmployee(id: id);
        emit(EmployeeLoaded(mList));
        if(mList.error != null){
          emit(EmployeeError(mList.error));
        }
      }on NetworkError {
        emit(EmployeeError("Failed to fetch data , is your device ?"));
      }
    });
  }
}