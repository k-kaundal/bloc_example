import 'package:bloc_example/src/blocs/interest/interest_event.dart';
import 'package:bloc_example/src/blocs/interest/interest_state.dart';
import 'package:bloc_example/src/repo/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InterestBloc extends Bloc<InterestEvent,InterestState>{
  InterestBloc() : super(InterestInitial()){
    final Repository _apiRepository = Repository();
    
    on<GetInterestList>((event, emit) async{
      try{
        emit(InterestLoading());
        final mList = await _apiRepository.fetchInterest();
        emit(InterestLoaded(mList));
        if(mList.error != null){
          emit(InterestError(mList.error));
        }
      }on NetworkError {
        emit(InterestError("Failed to fetch data , is your device ?"));
      }
    });
  }
}