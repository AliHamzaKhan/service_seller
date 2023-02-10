class MyService {
  String? id;
  String? name;
  String? description;
  double? price;
  ServiceDuration? duration;
  String? image;
  double? rating;
  String? serviceType;
  String? userId;

  MyService(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.duration,
      this.image,
      this.rating,
      this.serviceType,
      this.userId});
}
enum ServiceDuration{
  month("month"),
  day("day"),
  hr("hr");
  const ServiceDuration(this.value);
  final String value;
}
enum ServiceTypes{
  AcServices("Ac Services"),
  Moving("Moving"),
  ApplianceRepairAndInstallation("Appliance Repair And Installation"),
  BabySitting("Baby Sitting"),
  HouseMaid("House Maid"),
  CarpetCleaning("Carpet Cleaning"),
  DoctorAtHome("Doctor At Home"),
  Electrician("Electrician"),
  FurnitureAssembly("Furniture Assembly"),
  Carpenter("Carpenter"),
  Construction("Construction"),
  LabTestsAtHome("Lab Tests At Home"),
  LaundryService("Laundry Service"),
  Locksmith("Locksmith"),
  Maintenance("Maintenance"),
  Painter("Painter"),
  NurseAtHome("Nurse At Home"),
  PetGrooming("Pet Grooming"),
  Plumber("Plumber"),
  Sanitization("Sanitization"),
  Storage("Storage"),
  TvMounting("TvMounting"),
  WaterTankCleaning("Water Tank Cleaning"),
  WomenSaloonAndSpa("Women Saloon And Spa"),
  MenSaloon("Men Saloon"),
  GeneralStore("General Store"),
  Pharmacy("Pharmacy");

  const ServiceTypes(this.value);
  final String value;
}
