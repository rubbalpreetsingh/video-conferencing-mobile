import 'package:http/http.dart' as http;
import 'package:video_conferening_mobile/util/user.util.dart';

final String MEETING_API_URL = 'https://api.meetx.madankumar.me/meeting';

Future<http.Response> startMeeting() async {
  var userId = await loadUserId();
  var response =
      await http.post('$MEETING_API_URL/start', body: {'userId': userId});
  return response;
}

Future<http.Response> joinMeeting(String meetingId) async {
  var response = await http.get('$MEETING_API_URL/join?meetingId=$meetingId');
  return response;
}
