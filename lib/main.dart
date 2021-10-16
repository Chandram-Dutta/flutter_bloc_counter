import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/cubit/counter_cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter BLoC',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter BLoC'),
          ),
          body: BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(state.initialCounter.toString()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        child: const Icon(Icons.add),
                        tooltip: "Increment",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).increment();
                        },
                      ),
                      FloatingActionButton(
                        child: const Icon(Icons.remove),
                        tooltip: "Decrement",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).decrement();
                        },
                      )
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
