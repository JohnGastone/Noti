List<money> geter() {
  money Upwork = money();
  Upwork.image = 'upwork.png';
  Upwork.name = 'Upwork fee';
  Upwork.time = 'Yesterday';
  Upwork.fee = '15,000';
  money Fare = money();
  Fare.image = 'upwork.png';
  Fare.name = 'Internet';
  Fare.time = 'Yesterday';
  Fare.fee = '3,500';
  money Internet = money();
  Internet.image = 'coin.png';
  Internet.name = 'Fare';
  Internet.time = '12th January';
  Internet.fee = '1,000,000';
  money Vegertables = money();
  Vegertables.image = 'coin.png';
  Vegertables.name = 'Fare';
  Vegertables.time = '12th January';
  Vegertables.fee = '1,000,000';
  money Vacation = money();
  Vacation.image = 'coin.png';
  Vacation.name = 'Fare';
  Vacation.time = '12th January';
  Vacation.fee = '1,000,000';
  money rent = money();
  rent.image = '1.jpeg';
  rent.name = 'House Rent';
  rent.time = '30th December';
  rent.fee = '1,000,000';
  return [Upwork, Fare, Internet, rent, Vegertables, Vacation];
}

class money {
  String? image;
  String? name;
  String? time;
  String? fee;
}
