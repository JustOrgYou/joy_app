import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/tasks_overview/data/task_service_mock.dart';
import 'package:todo_app/tasks_overview/domain/task_entry.dart';
import 'package:todo_app/tasks_overview/domain/task_service.dart';

final taskEntryServiceProvider = Provider<TaskEntryService>(
  (ref) => TaskEntryServiceMock(),
);

final taskEntryStreamProvider = StreamProvider.autoDispose<List<TaskEntry>>(
  (ref) => ref.watch(taskEntryServiceProvider).getTaskEntriesStream(),
);
