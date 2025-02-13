import 'package:cs442_mp1/profile.dart';
import 'package:flutter/material.dart';


void main() {
  UserInfo userInfo = UserInfo(
    myimage: 'assets/images/venkatesh.jpg',
    name: 'Sai Venkatesh Voruganti',
    position: 'Software Engineer',
    company: 'Tata consultancy services',
    contactimage: 'assets/images/contact2.jpg',
    phone: '(947) 250-3487',
    pimage: 'assets/images/plogo.jpg',
    email: 'svoruganti@hawk.iit.edu',
    eimage: 'assets/images/elogo.jpg',
    aimage: 'assets/images/llogo.jpg',
    address1: '401 E 32 nd st',
    address2: 'Chicago, IL 60616',
    education: [
      Education(
        logo: 'assets/images/iitc.png',
        name: 'illinois institute of technology',
        gpa: 3.8,
      ),
    ],
    projects: [
      ProjectInfo(
        projectimage: 'assets/images/project1.jpg', 
        project1: 'COVID-19 Online Test Results & availability booking of Covid Hospital',
        project2: 'eVoting : SMS OTP Verification System-Based Mobile Application',
        project3: 'e-Vaccination management System Android app',
        project4: 'OnRoad Vehicle Breakdown Help Assistance',
        project5: 'Women Security with SMS Alert based android app',
        project6: 'eVoting : SMS OTP Verification System-Based Mobile Application'
      ) 
    ],
  );

  runApp(MaterialApp(home: ProfilePage(userInfo: userInfo)));
}

class UserInfo {
  final String myimage;
  final String name;
  final String position;
  final String company;
  final String contactimage;
  final String phone;
  final String email;
  final String eimage;
  final String pimage;
  final String aimage;
  final String address1;
  final String address2;
  final List<Education> education;
  final List<ProjectInfo> projects;

  UserInfo({
    required this.myimage,
    required this.name,
    required this.position,
    required this.company,
    required this.contactimage,
    required this.phone,
    required this.email,
    required this.address1,
    required this.address2,
    required this.education,
    required this.projects,
    required this.aimage,
    required this.eimage,
    required this.pimage,
  });
}

class Education {
  final String logo;
  final String name;
  final double gpa;

  Education({
    required this.logo,
    required this.name,
    required this.gpa,
  });
}

class ProjectInfo {
  final String projectimage;
  final String project1;
  final String project2;
  final String project3;
  final String project4;
  final String project5;
  final String project6;

  ProjectInfo({
    required this.projectimage,
    required this.project1,
    required this.project2,
    required this.project3,
    required this.project4,
    required this.project5,
    required this.project6,
    
  });
}
