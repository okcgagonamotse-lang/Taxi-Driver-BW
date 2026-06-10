class Vehicle {
  final String id;
  final String driverId;
  final String licensePlate;
  final String make;
  final String model;
  final int year;
  final String color;
  final String? vin;
  final String? insuranceProvider;
  final String? insurancePolicyNumber;
  final DateTime? insuranceExpiryDate;
  final String? registrationNumber;
  final DateTime? registrationExpiryDate;
  final bool isActive;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final int? seatingCapacity;
  final String? carType; // 'economy', 'comfort', 'premium'
  final double? averageRating;

  Vehicle({
    required this.id,
    required this.driverId,
    required this.licensePlate,
    required this.make,
    required this.model,
    required this.year,
    required this.color,
    this.vin,
    this.insuranceProvider,
    this.insurancePolicyNumber,
    this.insuranceExpiryDate,
    this.registrationNumber,
    this.registrationExpiryDate,
    this.isActive = true,
    required this.createdAt,
    this.updatedAt,
    this.seatingCapacity,
    this.carType,
    this.averageRating,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      id: json['id'] as String,
      driverId: json['driverId'] as String,
      licensePlate: json['licensePlate'] as String,
      make: json['make'] as String,
      model: json['model'] as String,
      year: json['year'] as int,
      color: json['color'] as String,
      vin: json['vin'] as String?,
      insuranceProvider: json['insuranceProvider'] as String?,
      insurancePolicyNumber: json['insurancePolicyNumber'] as String?,
      insuranceExpiryDate: json['insuranceExpiryDate'] != null
          ? DateTime.parse(json['insuranceExpiryDate'] as String)
          : null,
      registrationNumber: json['registrationNumber'] as String?,
      registrationExpiryDate: json['registrationExpiryDate'] != null
          ? DateTime.parse(json['registrationExpiryDate'] as String)
          : null,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'] as String)
          : null,
      seatingCapacity: json['seatingCapacity'] as int?,
      carType: json['carType'] as String?,
      averageRating:
          json['averageRating'] != null ? (json['averageRating'] as num).toDouble() : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'driverId': driverId,
      'licensePlate': licensePlate,
      'make': make,
      'model': model,
      'year': year,
      'color': color,
      'vin': vin,
      'insuranceProvider': insuranceProvider,
      'insurancePolicyNumber': insurancePolicyNumber,
      'insuranceExpiryDate': insuranceExpiryDate?.toIso8601String(),
      'registrationNumber': registrationNumber,
      'registrationExpiryDate': registrationExpiryDate?.toIso8601String(),
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'seatingCapacity': seatingCapacity,
      'carType': carType,
      'averageRating': averageRating,
    };
  }

  Vehicle copyWith({
    String? id,
    String? driverId,
    String? licensePlate,
    String? make,
    String? model,
    int? year,
    String? color,
    String? vin,
    String? insuranceProvider,
    String? insurancePolicyNumber,
    DateTime? insuranceExpiryDate,
    String? registrationNumber,
    DateTime? registrationExpiryDate,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? seatingCapacity,
    String? carType,
    double? averageRating,
  }) {
    return Vehicle(
      id: id ?? this.id,
      driverId: driverId ?? this.driverId,
      licensePlate: licensePlate ?? this.licensePlate,
      make: make ?? this.make,
      model: model ?? this.model,
      year: year ?? this.year,
      color: color ?? this.color,
      vin: vin ?? this.vin,
      insuranceProvider: insuranceProvider ?? this.insuranceProvider,
      insurancePolicyNumber: insurancePolicyNumber ?? this.insurancePolicyNumber,
      insuranceExpiryDate: insuranceExpiryDate ?? this.insuranceExpiryDate,
      registrationNumber: registrationNumber ?? this.registrationNumber,
      registrationExpiryDate: registrationExpiryDate ?? this.registrationExpiryDate,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      seatingCapacity: seatingCapacity ?? this.seatingCapacity,
      carType: carType ?? this.carType,
      averageRating: averageRating ?? this.averageRating,
    );
  }
}
