import 'package:bloc_example/src/app.dart';
import 'package:bloc_example/src/ui/views/common/home.dart';
import 'package:bloc_example/src/ui/views/common/home_screen.dart';
import 'package:bloc_example/src/ui/views/pages/all_employees.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Bloc Builder only use when the user change theme data with the help of
    /// button or toggle and touch.
    /// if there is auto change then you can remove the blocs Builder
    /// [BlocBuilder] Build the business loc

    ///
    /// Bloc Provider Provide the Business Logic for the developer
    ///
    return BlocBuilder<ThemeCubit, ThemeData>(builder: (_ ,theme){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        /// change theme by user with the help of button or toggle
        theme: theme,  // for user change with setting
        home: HomeScreen(),
        /// for auto theme change with the change of phone theme
        // theme:  ThemeData.light(),   // for light theme
        // darkTheme: ThemeData.dark(),  // for dark theme
      );
    });
  }
}


/// {@template counter_page}
/// A [StatelessWidget] that:
/// * provides a [CounterBloc] to the [CounterView].
/// {@endtemplate}
class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const CounterView(),
    );
  }
}

/// {@template counter_view}
/// A [StatelessWidget] that:
/// * demonstrates how to consume and interact with a [CounterBloc].
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Text('$count', style: Theme.of(context).textTheme.headline1);
          },
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrementPressed());
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecrementPressed());
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
          ),
        ],
      ),
    );
  }
}

/// Event being processed by [CounterBloc].
abstract class CounterEvent {}

/// Notifies blocs to increment state.
class CounterIncrementPressed extends CounterEvent {}

/// Notifies blocs to decrement state.
class CounterDecrementPressed extends CounterEvent {}

/// {@template counter_bloc}
/// A simple [Bloc] that manages an `int` as its state.
/// {@endtemplate}
class CounterBloc extends Bloc<CounterEvent, int> {
  /// {@macro counter_bloc}
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));
  }
}