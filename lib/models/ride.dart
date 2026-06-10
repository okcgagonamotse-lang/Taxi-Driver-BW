class Ride {
  final String id;
  final String passengerId;
  final String? driverId;
  final double pickupLatitude;
  final double pickupLongitude;
  final double destinationLatitude;
  final double destinationLongitude;
  final String? pickupAddress;
  final String? destinationAddress;
  final String status; // 'requested', 'accepted', 'in_progress', 'completed', 'cancelled'
  final double estimatedFare;
  final double? actualFare;
  final DateTime createdAt;
  final DateTime? startedAt;
  final DateTime? completedAt;
  final String? notes;
  final double? rating;
  final String? ratingComment;

  Ride({
    required this.id,
    required this.passengerId,
    this.driverId,
    required this.pickupLatitude,
    required this.pickupLongitude,
    required this.destinationLatitude,
    required this.destinationLongitude,
    this.pickupAddress,
    this.destinationAddress,
    required this.status,
    required this.estimatedFare,
    this.actualFare,
    required this.createdAt,
    this.startedAt,
    this.completedAt,
    this.notes,
    this.rating,
    this.ratingComment,
  });

  factory Ride.fromJson(Map<String, dynamic> json) {
    return Ride(
      id: json['id'] as String,
      passengerId: json['passengerId'] as String,
      driverId: json['driverId'] as String?,
      pickupLatitude: (json['pickupLatitude'] as num).toDouble(),
      pickupLongitude: (json['pickupLongitude'] as num).toDouble(),
      destinationLatitude: (json['destinationLatitude'] as num).toDouble(),
      destinationLongitude: (json['destinationLongitude'] as num).toDouble(),
      pickupAddress: json['pickupAddress'] as String?,
      destinationAddress: json['destinationAddress'] as String?,
      status: json['status'] as String,
      estimatedFare: (json['estimatedFare'] as num).toDouble(),
      actualFare: json['actualFare'] != null
          ? (json['actualFare'] as num).toDouble()
          : null,
      createdAt: DateTime.parse(json['createdAt'] as String),
      startedAt: json['startedAt'] != null
          ? DateTime.parse(json['startedAt'] as String)
          : null,
      completedAt: json['completedAt'] != null
          ? DateTime.parse(json['completedAt'] as String)
          : null,
      notes: json['notes'] as String?,
      rating:
          json['rating'] != null ? (json['rating'] as num).toDouble() : null,
      ratingComment: json['ratingComment'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'passengerId': passengerId,
      'driverId': driverId,
      'pickupLatitude': pickupLatitude,
      'pickupLongitude': pickupLongitude,
      'destinationLatitude': destinationLatitude,
      'destinationLongitude': destinationLongitude,
      'pickupAddress': pickupAddress,
      'destinationAddress': destinationAddress,
      'status': status,
      'estimatedFare': estimatedFare,
      'actualFare': actualFare,
      'createdAt': createdAt.toIso8601String(),
      'startedAt': startedAt?.toIso8601String(),
      'completedAt': completedAt?.toIso8601String(),
      'notes': notes,
      'rating': rating,
      'ratingComment': ratingComment,
    };
  }

  Ride copyWith({
    String? id,
    String? passengerId,
    String? driverId,
    double? pickupLatitude,
    double? pickupLongitude,
    double? destinationLatitude,
    double? destinationLongitude,
    String? pickupAddress,
    String? destinationAddress,
    String? status,
    double? estimatedFare,
    double? actualFare,
    DateTime? createdAt,
    DateTime? startedAt,
    DateTime? completedAt,
    String? notes,
    double? rating,
    String? ratingComment,
  }) {
    return Ride(
      id: id ?? this.id,
      passengerId: passengerId ?? this.passengerId,
      driverId: driverId ?? this.driverId,
      pickupLatitude: pickupLatitude ?? this.pickupLatitude,
      pickupLongitude: pickupLongitude ?? this.pickupLongitude,
      destinationLatitude: destinationLatitude ?? this.destinationLatitude,
      destinationLongitude: destinationLongitude ?? this.destinationLongitude,
      pickupAddress: pickupAddress ?? this.pickupAddress,
      destinationAddress: destinationAddress ?? this.destinationAddress,
      status: status ?? this.status,
      estimatedFare: estimatedFare ?? this.estimatedFare,
      actualFare: actualFare ?? this.actualFare,
      createdAt: createdAt ?? this.createdAt,
      startedAt: startedAt ?? this.startedAt,
      completedAt: completedAt ?? this.completedAt,
      notes: notes ?? this.notes,
      rating: rating ?? this.rating,
      ratingComment: ratingComment ?? this.ratingComment,
    );
  }
}
