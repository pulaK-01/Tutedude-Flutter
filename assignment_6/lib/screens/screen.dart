import 'package:assignment_6/model/tripmodel.dart';

import 'package:flutter/material.dart';
import 'package:assignment_6/data/tripdata.dart';

class TripHistoryPage extends StatefulWidget {
  const TripHistoryPage({super.key});

  @override
  State<TripHistoryPage> createState() => _TripHistoryPageState();
}

class _TripHistoryPageState extends State<TripHistoryPage> {
  int selectedIndex = 2;

  String _formatDateTime(DateTime dateTime) {
    final date = dateTime.toLocal();
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');
    final hour = date.hour.toString().padLeft(2, '0');
    final minute = date.minute.toString().padLeft(2, '0');

    return '${date.year}-$month-$day  $hour:$minute';
  }

  /*  String _formatTime(DateTime dateTime) {
    final time = dateTime.toLocal();
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  } */

  void _showTripDialog(BuildContext context, Trip trip) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Trip ${trip.id}'),
        surfaceTintColor: Colors.blueAccent,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trip Status: ${trip.statusText}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Help Requested at: ${_formatDateTime(trip.requestedAt)}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Pick up location: ${trip.pickup}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Drop off location: ${trip.destination}',
              style: const TextStyle(fontSize: 16),
            ),
            if (trip.completedAt != null)
              Text(
                'Trip ended at: ${_formatDateTime(trip.completedAt!)}',
                style: const TextStyle(fontSize: 16),
              ),
            Text(
              'Earnings from this trip: ${trip.fare == null ? '—' : '₹${trip.fare!.toStringAsFixed(2)}'}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text(
          ['Home', 'Dispatch', 'Trip History', 'Profile'][selectedIndex],
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),

      body: selectedIndex == 2
          ? ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: trips.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemBuilder: (context, index) {
                final trip = trips[index];

                return Card(
                  elevation: 5,
                  shadowColor: Colors.blueAccent,
                  surfaceTintColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => _showTripDialog(context, trip),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    _formatDateTime(trip.requestedAt),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  /* if (trip.status == TripStatus.completed &&
                                      trip.completedAt != null)
                                    Text(
                                      'Completed at: ${_formatTime(trip.completedAt!)}',
                                      style: const TextStyle(fontSize: 12),
                                    ), */
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: trip.statusBackgroundColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  trip.statusText,
                                  style: TextStyle(
                                    color: trip.statusColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.green,
                              ),
                              const SizedBox(width: 8),
                              Expanded(child: Text('From: ${trip.pickup}')),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.flag, color: Colors.red),
                              const SizedBox(width: 8),
                              Expanded(child: Text('To: ${trip.destination}')),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Earnings',
                                style: const TextStyle(fontSize: 16),
                              ),
                              Text(
                                trip.fare == null
                                    ? '—'
                                    : '₹${trip.fare!.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : Center(
              child: Text(
                [
                  'Home page',
                  'Dispatch page',
                  'History page',
                  'Profile page',
                ][selectedIndex],
              ),
            ),

      //bottom bar
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        backgroundColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey[400],
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        // change Page
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'Dispatch',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
