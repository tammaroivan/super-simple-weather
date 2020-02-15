class Address {
  final String city;
  final String country;

  Address({this.city, this.country});

  Address.fromJson(Map<String, dynamic> json)
    : city = json['city'],
      country = json['country'];

    Map<String, dynamic> toJson() =>
    {
      'city': city,
      'country': country,
    };
}

class LocationDetail {
  final double lat;
  final double lon;
  final Address address;

  LocationDetail({this.lat, this.lon, this.address});
}