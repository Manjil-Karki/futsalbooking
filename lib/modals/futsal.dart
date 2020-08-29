class Futsal {
  final String futsalId;
  Futsal({this.futsalId});
}

class FutsalData {
  final String futsalId;
  String imageUrl;
  final String name;
  final String phone;
  String location;
  final double latt;
  final double long;
  int ratings;
  int price;
  final int openingTime;
  final int closingTime;

  FutsalData(
      {this.futsalId,
      this.imageUrl,
      this.name,
      this.phone,
      this.location,
      this.latt,
      this.long,
      this.ratings,
      this.price,
      this.openingTime,
      this.closingTime});
}

List<FutsalData> futsals = [
  FutsalData(
    imageUrl:
        'https://i.pinimg.com/236x/6a/a0/06/6aa00618b05dde30d1bcb27d9cdf12c3--fc-barcelona-logo-barcelona-soccer.jpg',
    name: 'Shooters',
    location: 'Suryabinayak, Bhaktapur',
    ratings: 4,
    price: 900,
  ),
  FutsalData(
    imageUrl:
        'https://previews.123rf.com/images/captainvector/captainvector1601/captainvector160116330/51707955-football-club-logo.jpg',
    name: 'Khwopa Futsal and Training Center',
    location: 'Pandubazar, Bhaktapur',
    ratings: 5,
    price: 900,
  ),
  FutsalData(
    imageUrl:
        'https://qph.fs.quoracdn.net/main-qimg-82741eac29dda5436f1334d8f6faf69f.webp',
    name: 'Khwopa Futsal',
    location: 'Liwali, Bhaktapur',
    ratings: 3,
    price: 900,
  ),
  FutsalData(
    imageUrl:
        'https://c8.alamy.com/comp/MC23PM/manchester-city-football-club-logo-MC23PM.jpg',
    name: 'Glory Futsal',
    location: 'Shrijana-nagar, Bhaktapur',
    ratings: 3,
    price: 900,
  )
];
