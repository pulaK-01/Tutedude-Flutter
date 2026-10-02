import 'package:assignment_6/model/tripmodel.dart';

final List<Trip> trips = [
  Trip(
    id: 'AMB-1002',
    requestedAt: DateTime(2026, 10, 3, 10, 30),
    pickup: 'Riverside Apartments',
    destination: 'St. Mary’s Medical Center',
    status: TripStatus.inProgress,
  ),
  Trip(
    id: 'AMB-1001',
    requestedAt: DateTime(2026, 10, 3, 8, 15),
    pickup: 'Central Station',
    destination: 'City General Hospital',
    status: TripStatus.completed,
    completedAt: DateTime(2026, 10, 3, 9, 5),
    fare: 245.0,
  ),

  Trip(
    id: 'AMB-1003',
    requestedAt: DateTime(2026, 10, 2, 18, 45),
    pickup: 'City Mall',
    destination: 'Northside Hospital',
    status: TripStatus.cancelled,
  ),
  Trip(
    id: 'AMB-1004',
    requestedAt: DateTime(2026, 10, 2, 14, 10),
    pickup: 'Tech Park, Building 4',
    destination: 'City General Hospital',
    status: TripStatus.completed,
    completedAt: DateTime(2026, 10, 2, 15, 2),
    fare: 320.0,
  ),
  Trip(
    id: 'AMB-1005',
    requestedAt: DateTime(2026, 10, 1, 22, 5),
    pickup: 'Old Town Bus Terminal',
    destination: 'Westside Clinic',
    status: TripStatus.completed,
    completedAt: DateTime(2026, 10, 1, 22, 42),
    fare: 180.0,
  ),
  Trip(
    id: 'AMB-1006',
    requestedAt: DateTime(2026, 10, 1, 16, 20),
    pickup: 'Lakeview Road',
    destination: 'Children’s Hospital',
    status: TripStatus.requested,
  ),
  Trip(
    id: 'AMB-1007',
    requestedAt: DateTime(2026, 9, 30, 11, 35),
    pickup: 'Airport, Terminal 2',
    destination: 'East District Hospital',
    status: TripStatus.completed,
    completedAt: DateTime(2026, 9, 30, 12, 25),
    fare: 275.0,
  ),
  Trip(
    id: 'AMB-1008',
    requestedAt: DateTime(2026, 9, 29, 7, 50),
    pickup: 'Greenwood Residential Complex',
    destination: 'St. Mary’s Medical Center',
    status: TripStatus.cancelled,
  ),
];
