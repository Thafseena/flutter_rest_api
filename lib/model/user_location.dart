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

 factory UserLocation.fromMap(Map< String,dynamic > json){
    final coordinates = LocationCoordinates.fromMap(json['coordinates']);
      final street =LocationStreet.fromMap(json['street']);
      final timezone = LocationTimeZone.fromMap(json['timezone']);
   /*  final coordinates = LocationCoordinates(
        longitude:json['coordinates']['longitude'], 
        latitude:json['coordinates']['latitude']
      );
      final street =LocationStreet(
        number:json['street']['number'], 
        name:json['street']['name']
      );
      final timezone = LocationTimeZone(
        offset:json['timezone']['offset'], 
        description:json['timezone']['description'],
        ); */
     /*  final location = UserLocation(
        city:json['city'], 
        state:json['state'], 
        country:json['country'] , 
        postcode:json['postcode'] .toString(), 
        street: street, 
        coordinates: coordinates, 
        timezone: timezone,
      ); */
        return UserLocation(
        city:json['city'], 
        state:json['state'], 
        country:json['country'] , 
        postcode:json['postcode'] .toString(), 
        street: street, 
        coordinates: coordinates, 
        timezone: timezone,
      );
 }
}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({
   required this.number, 
   required this.name,
  });

 factory LocationStreet.fromMap(Map<String,dynamic> json){
     return LocationStreet(
        number:json['number'], 
        name:json['name']
      );
 }

}

class LocationCoordinates{
   final String longitude;
   final String latitude;

  LocationCoordinates({
   required this.longitude, 
   required this.latitude
});
 factory LocationCoordinates.fromMap(Map<String,dynamic> json){
   return LocationCoordinates(
        longitude:json['longitude'], 
        latitude:json['latitude']
    );
 }
}
class LocationTimeZone{
  final String offset;
  final String description;
  LocationTimeZone({
   required this.offset,
    required this.description
  });
factory LocationTimeZone.fromMap(Map<String,dynamic> json){
   return LocationTimeZone(
        offset:json['offset'], 
        description:json['description'],
    );
 }
}