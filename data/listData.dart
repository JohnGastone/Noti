import 'package:noti/data/modelList.dart';

List<money> geter() {
  money upwork = money();
  upwork.image = 'upwork.png';
  upwork.name = 'Upwork';
  upwork.time = 'Yesterday';
  upwork.fee = '500';
  return [upwork];
}
