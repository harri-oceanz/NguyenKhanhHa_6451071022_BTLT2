import 'package:flutter/material.dart';
import '../models/dashboard_item.dart';

List<DashboardItem> dashboardItems = [

  DashboardItem(
    title: "Profile",
    icon: Icons.account_circle,
    color: Colors.blue,
  ),

  DashboardItem(
    title: "Messages",
    icon: Icons.message,
    color: Colors.green,
  ),

  DashboardItem(
    title: "Settings",
    icon: Icons.settings,
    color: Colors.orange,
  ),

  DashboardItem(
    title: "Notifications",
    icon: Icons.notifications,
    color: Colors.purple,
  ),

];