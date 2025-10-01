import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_arch_v2/features/todo/presentation/bloc/todo_view_model.dart';
import 'package:mvvm_arch_v2/features/todo/presentation/bloc/todo_event.dart';
import 'package:mvvm_arch_v2/features/todo/presentation/bloc/todo_state.dart';
import 'package:mvvm_arch_v2/features/todo/presentation/ui_models/todo_ui_model.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoView> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _add() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    context.read<TodoViewModel>().add(AddTodoEvent(text));
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Yeni todo...',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _add(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: _add, child: const Text('Ekle')),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<TodoViewModel, TodoState>(
              builder: (context, state) {
                if (state is TodoLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is TodoError) {
                  return Center(child: Text('Hata: ${state.message}'));
                }
                if (state is TodoLoaded) {
                  final items = state.todos;
                  if (items.isEmpty) {
                    return const Center(child: Text('Henüz kayıt yok.'));
                  }
                  return ListView.separated(
                    itemCount: items.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final TodoUiModel todo = items[index];
                      return Dismissible(
                        key: ValueKey(todo.id),
                        background: Container(
                          color: const Color.fromARGB(255, 255, 83, 80),
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        direction: DismissDirection.endToStart,
                        onDismissed: (_) {
                          context.read<TodoViewModel>().add(
                            DeleteTodoEvent(todo.id),
                          );
                        },
                        child: ListTile(
                          leading: Checkbox(
                            value: todo.completed,
                            onChanged: (_) => context.read<TodoViewModel>().add(
                              ToggleTodoEvent(todo.id),
                            ),
                          ),
                          title: Text(
                            todo.title,
                            style: TextStyle(
                              decoration: todo.completed
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                              color: todo.completed
                                  ? Colors.grey
                                  : Colors.black87,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete_outline),
                            onPressed: () => context.read<TodoViewModel>().add(
                              DeleteTodoEvent(todo.id),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
