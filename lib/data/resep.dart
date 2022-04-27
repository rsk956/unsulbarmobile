class resep {
  String name, htm, tutorial, image;

  resep(
      {required this.name,
      required this.htm,
      required this.tutorial,
      required this.image});
}

List<resep> dataResep = [
  resep(
      name: 'Gas LPG 3Kg',
      htm: '26k',
      tutorial: 'Tersedia untuk penukaran tabung gas 3kg',
      image: 'assets/tabung-gas.png'),
  resep(
      name: 'Jamur Tiram',
      htm: '20k/Kg',
      tutorial: 'Jamur Tiram asli produksi rumahan',
      image: 'assets/jamur-tiram.jpg'),
  resep(
      name: 'Voucher Wifi 2K',
      htm: '2k',
      tutorial: 'Wifi hotspot rumahan 2k 1 hari 7 jam',
      image: 'assets/wifi.jpg'),
  resep(
      name: 'Voucher Wifi 5K',
      htm: '5k',
      tutorial: 'Wifi hotspot rumahan 5k 3 hari 30 jam',
      image: 'assets/wifi.jpg'),
];
