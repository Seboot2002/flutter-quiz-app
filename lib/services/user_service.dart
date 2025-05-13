
import 'package:quiz_proyect/models/entities/user.dart';
import 'package:quiz_proyect/models/httpResponse/service_http_response.dart';

class UserService {

  Future<ServiceHttpResponse?> signIn(User user) async {
    ServiceHttpResponse serviceHttpResponse = ServiceHttpResponse();
    if (user.username == "admin" && user.password == "123") {
      serviceHttpResponse.status = 200;
      serviceHttpResponse.body = "xd";
    } else {
      serviceHttpResponse.status = 401;
      serviceHttpResponse.body = ":(";
    }
    return serviceHttpResponse;
  }

}
