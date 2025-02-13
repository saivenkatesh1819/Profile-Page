import 'package:cs442_mp1/main.dart';
import 'package:flutter/Material.dart';



class ProfilePage extends StatelessWidget {
  final UserInfo userInfo;

  const ProfilePage({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 169, 169),
      appBar: AppBar(
        title: const Text("PROFILE PAGE"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(22),
            bottomLeft: Radius.circular(22),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 112, 128, 144),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileSection(
              title: 'ABOUT ME',
              content: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      userInfo.myimage,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20), // Adjusted spacing
                  Expanded(
                    child: Text(
                      '${userInfo.name}\n${userInfo.position} at ${userInfo.company}',
                      style: const TextStyle(
                        fontSize: 15.0,
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ProfileSection(
  title: 'CONTACT',
  content: Column(
    children: [
      // Row 1: Phone
      Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              userInfo.pimage,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15), // Adjusted spacing
          Expanded(
            child: Text(
              'PHONE: ${userInfo.phone}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10), // Adjusted vertical spacing

      // Row 2: Email
      Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              userInfo.eimage,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15), // Adjusted spacing
          Expanded(
            child: Text(
              'EMAIL: ${userInfo.email}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10), 
      
      Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              userInfo.aimage,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10), // Adjusted spacing
          Expanded(
            child: Text(
              'ADDRESS: ${userInfo.address1}, ${userInfo.address2}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),
      
      
            ProfileSection(
              title: 'EDUCATION',
              content: Column(
                children: userInfo.education.map((edu) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          edu.logo,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20), // Adjusted spacing
                      Expanded(
                        child: Text(
                          'SCHOOL: ${edu.name}\nGPA: ${edu.gpa.toString()}',
                          style: const TextStyle(
                            fontSize: 15.0,
                            
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),





            ProfileSection(
              title: 'PROJECTS',
              content: Column(
                children: userInfo.projects.map((proj) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          proj.projectimage,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20), // Adjusted spacing
                      Expanded(
                       child: Scrollbar(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: PrimaryScrollController.of(context),
                        child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
            const Text(
              'Project Details:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10), // Add spacing between title and list
            Text(
              '1. ${proj.project1}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            Text(
              '2. ${proj.project2}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            Text(
              '3. ${proj.project3}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            Text(
              '4. ${proj.project4}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            Text(
              '5. ${proj.project5}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            Text(
              '6. ${proj.project6}',
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 22)
          ],
        ),
      ],
    ),
  ),
),

  ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String title;
  final Widget content;

  const ProfileSection({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: const Color.fromARGB(255, 192, 192, 192),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 9.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: content,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
