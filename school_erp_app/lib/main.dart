import 'package:flutter/material.dart';
import 'package:school_erp_app/pages/ask_doubts/ask_doubts_page.dart';
import 'package:school_erp_app/pages/assignment/assignment_page.dart';
import 'package:school_erp_app/pages/attendance/attendance_page.dart';
import 'package:school_erp_app/pages/change_password/change_password_page.dart';
import 'package:school_erp_app/pages/dashboard/dashboard_page.dart';
import 'package:school_erp_app/pages/date_sheet/date_sheet_page.dart';
import 'package:school_erp_app/pages/events/events_page.dart';
import 'package:school_erp_app/pages/fees_due/fees_due_page.dart';
import 'package:school_erp_app/pages/leave_application/leave_application_page.dart';
import 'package:school_erp_app/pages/logout/logout_page.dart';
import 'package:school_erp_app/pages/play_quiz/play_quiz_page.dart';
import 'package:school_erp_app/pages/profile/profile_page.dart';
import 'package:school_erp_app/pages/result/result_page.dart';
import 'package:school_erp_app/pages/school_gallery/school_gallery_page.dart';
import 'package:school_erp_app/pages/school_holiday/school_holiday_page.dart';
import 'package:school_erp_app/pages/sign_in/sign_in_page.dart';
import 'package:school_erp_app/pages/time_table/time_table_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School ERP APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(27),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 3,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 3,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 3,
            ),
          ),
        ),
      ),
      routes: {
        "/profile": (context) => const ProfilePage(),
        "/dashboard": (context) => const DashboardPage(),
        "/signIn": (context) => const SignInPage(),
        "/quiz": (context) => const PlayQuizPage(),
        "/assignment": (context) => const AssignmentPage(),
        "/holiday": (context) => const SchoolHolidayPage(),
        "/table": (context) => const TimeTablePage(),
        "/result": (context) => const ResultPage(),
        "/sheet": (context) => const DateSheetPage(),
        "/doubts": (context) => const AskDoubtsPage(),
        "/gallery": (context) => const SchoolGalleryPage(),
        "/application": (context) => const LeaveApplicationPage(),
        "/change": (context) => const ChangePasswordPage(),
        "/events": (context) => const EventsPage(),
        "/logout": (context) => const LogoutPage(),
        "/due": (context) => const FeesDuePage(),
        "/attendance": (context) => const AttendancePage(),
      },
      home: const Scaffold(
        body: DashboardPage(),
      ),
    );
  }
}
