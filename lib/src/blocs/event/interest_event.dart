import 'package:equatable/equatable.dart';

abstract class InterestEvent extends Equatable{
  const InterestEvent();

  List<Object> get props => [];
}

class GetInterestList extends InterestEvent{}