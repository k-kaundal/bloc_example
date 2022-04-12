import 'package:bloc_example/src/models/interests.dart';
import 'package:equatable/equatable.dart';

abstract class InterestState extends Equatable{
  const InterestState();
  List<Object> get props => [];
}
class InterestInitial extends InterestState{}

class InterestLoading extends InterestState{}

class InterestLoaded extends InterestState{
  final Interests interests;
  const InterestLoaded(this.interests);
}

class InterestError extends InterestState{
  final String? message;
  const InterestError(this.message);
}