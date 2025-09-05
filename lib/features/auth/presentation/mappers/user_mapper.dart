import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import '../../domain/entities/user_entity.dart';
import '../ui_models/user_ui_model.dart';

part 'user_mapper.auto_mappr.dart';

part 'user_mapper.g.dart';

@AutoMappr([MapType<UserEntity, UserUiModel>()])
class UserMapper extends $UserMapper {}
