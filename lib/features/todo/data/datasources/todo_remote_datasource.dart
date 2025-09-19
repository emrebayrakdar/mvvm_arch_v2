import 'package:dio/dio.dart';
import '../models/todo_dto.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TodoRemoteDatasource {
  final Dio dio;
  TodoRemoteDatasource(this.dio);

  Future<List<TodoDto>> fetchTodos() async {
    final response = await dio.get('https://api.example.com/todos');
    return (response.data as List)
        .map((json) => TodoDto.fromJson(json))
        .toList();
  }
}
