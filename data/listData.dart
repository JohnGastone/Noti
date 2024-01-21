import 'package:noti/data/list.dart';

import 'list.dart';

List<money> geter() {
  money upwork = money();
  upwork.name = 'Upwork';
  upwork.buyPrice = 20;
  upwork.fee = '500';
  upwork.image = 'coin.png';
  upwork.time = 'Yesterday';
  return [upwork];
}
