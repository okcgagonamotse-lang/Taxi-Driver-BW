import 'package:flutter/material.dart';
import '../../config/theme.dart';

class LoginTypeScreen extends StatelessWidget {
  const LoginTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.primaryTeal,
              AppTheme.primaryTeal.withOpacity(0.8),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header Section
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 80,
                      color: AppTheme.white,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'TaxiDriver BW',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: AppTheme.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Your Reliable Taxi Service',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: AppTheme.white.withOpacity(0.9)),
                    ),
                  ],
                ),
              ),
              // Buttons Section
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppTheme.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Started',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 40),
                        // Passenger Login Button
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/phone-login',
                                arguments: 'passenger',
                              );
                            },
                            icon: const Icon(Icons.person),
                            label: const Text('Login as Passenger'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryTeal,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Driver Login Button
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/phone-login',
                                arguments: 'driver',
                              );
                            },
                            icon: const Icon(Icons.directions_car),
                            label: const Text('Login as Driver'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.darkGrey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Admin Login Button
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/admin-login');
                            },
                            icon: const Icon(Icons.admin_panel_settings),
                            label: const Text('Admin Login'),
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: AppTheme.primaryTeal,
                                width: 2,
                              ),
                              foregroundColor: AppTheme.primaryTeal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
