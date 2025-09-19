# mvvm_arch_v2

A new Flutter project.

## Todo Feature (BLoC + Clean Architecture)

Sunum (presentation) katmanında Todo özelliği artık klasik BLoC yapısına bölünmüştür:

```
lib/features/todo/
	domain/
		entities/ -> `TodoEntity`
		repositories/ -> soyut `TodoRepository`
		usecases/ -> `GetTodosUseCase`
	data/
		datasources/ -> `TodoRemoteDatasource`
		repositories/ -> `TodoRepositoryImpl`
		models/ -> `TodoDto`
		mappers/ -> `TodoMapper`
	presentation/
		bloc/
			todo_event.dart
			todo_state.dart
			todo_bloc.dart
		ui_models/ -> `TodoUiModel`
```

DI yapılandırması `injectable` ile yapılır. Geliştirme ortamında in-memory repository kullanmak için konfigürasyonu şu şekilde başlatın:

```dart
await configureDependencies(env: Environment.dev);
```

DI başlatma:

```dart
await configureDependencies();
```

`TodoBloc` event akışı (State artık `TodoUiModel` listesi döner):

1. `LoadTodosEvent` -> remote/in-memory kaynaktan yükler
2. `AddTodoEvent` -> geçici olarak bellek içi listeye ekler (demo amaçlı)
3. `ToggleTodoEvent` -> tamamlandı durumunu değiştirir
4. `DeleteTodoEvent` -> siler

Basit kullanım örneği:

```dart
BlocProvider(
	create: (_) => getIt<TodoBloc>()..add(LoadTodosEvent()),
	child: TodoPage(),
);
```


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
