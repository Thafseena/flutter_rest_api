class UserLocation{
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinates coordinates;
  final LocationTimeZone timezone;

  UserLocation({
   required this.city, 
   required this.state, 
   required this.country, 
   required this.postcode, 
   required this.street, 
   required this.coordinates, 
   required this.timezone
});
}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({
   required this.number, 
   required this.name,
    });
}

class LocationCoordinates{
   final String longitude;
   final String latitude;

  LocationCoordinates({
   required this.longitude, 
   required this.latitude
});
}
class LocationTimeZone{
  final String offset;
  final String description;
  LocationTimeZone({
   required this.offset,
    required this.description
  });
}