import 'package:conex_flutter_mvvm/services/client.dart';
import 'package:conex_flutter_mvvm/models/models.dart';

class UserService {
  Future<User> registerUser({
    required User user,
  }) async {
    User userResponse = User.empty();
    await supabase.from('users')
      .insert(user.toJson())
      .select()
      .single().then((result) {
        userResponse = User.fromJson(result);
      });

    return userResponse;
  }
}