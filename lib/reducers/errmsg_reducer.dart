import 'package:redux/redux.dart';
import '../actions/users.dart';
import '../model/user_session.dart';

final errmsgReducer = combineReducers<String>([
  TypedReducer<String, LoginFailureAction>(_setErrMsg),
]);

String _setErrMsg(String state, dynamic action) {
  try {
    return action.errmsg;
  } catch (e) {
    return "Some error occured";
  }
}
