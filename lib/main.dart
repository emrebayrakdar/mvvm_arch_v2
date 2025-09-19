import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_arch_v2/core/di/injection.dart';
import 'package:mvvm_arch_v2/features/todo/presentation/pages/todo_page.dart';
import 'package:mvvm_arch_v2/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:mvvm_arch_v2/features/todo/presentation/bloc/todo_event.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<TodoBloc>()..add(LoadTodosEvent())),
      ],
      child: MaterialApp(
        title: 'Todo App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TodoPage(),
      ),
    );
  }
}
