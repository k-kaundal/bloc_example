import 'package:bloc_example/src/blocs/interest/InterestBloc.dart';
import 'package:bloc_example/src/blocs/interest/interest_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/interest/interest_state.dart';

class InterestView extends StatefulWidget {
  const InterestView({Key? key}) : super(key: key);

  @override
  _InterestViewState createState() => _InterestViewState();
}

class _InterestViewState extends State<InterestView> {
  final InterestBloc _interestBloc = InterestBloc();

  @override
  void initState() {
    _interestBloc.add(GetInterestList());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocProvider(
          create: (_) => _interestBloc,
          child: BlocListener<InterestBloc, InterestState>(
            listener: (context, state) {
              if (state is InterestError) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(state.message.toString()),
                ));
              }
            },
            child: BlocBuilder<InterestBloc, InterestState>(
                builder: (context, state) {
              if (state is InterestInitial) {
                return Container();
              } else if (state is InterestLoading) {
                return Container();
              } else if (state is InterestLoaded) {
                return ListView.builder(
                    itemCount: state.interests.dataList.length,
                    itemBuilder: (context, index){
                  return Container(
                    child: Card(
                      child: Column(
                        children: [
                          Text("Name: ${state.interests.dataList[index].name}"),
                          Image.network(state.interests.dataList[index].thumb_url.toString()),
                          Image.network(state.interests.dataList[index].pic_url.toString()),
                        ],
                      ),
                    ),
                  );
                });
              } else {
                return Container();
              }
            }),
          ),
        ),
      ),
    );
  }
}
