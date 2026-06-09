class AppStrings {
  // App Info
  static const String appName = 'My Portfolio';
  static const String portfolio = 'Portfolio';

  // Profile Info
  static const String fullName = 'Adnan Ahmed';
  static const String designation = 'Flutter Developer';
  static const String shortBio = 'Passionate mobile app developer with expertise in building beautiful, responsive applications.';
  static const String longBio = '''I am a dedicated Flutter developer with over 5 years of experience 
  in building cross-platform mobile applications. I specialize in creating clean, maintainable code and beautiful user interfaces that provide excellent user experiences.

My expertise includes:
- Flutter & Dart Development
- State Management (Provider, Bloc, Riverpod)
- REST API Integration
- Firebase & Cloud Services
- Agile Methodologies''';

  // Contact
  static const String contactInfo = 'Contact Information';
  static const String email = 'adnan.yeasin@gmail.com';
  static const String phone = '+8801720031259';
  static const String location = 'Chittagong';
  static const String website = 'www.adnanahmed.com';

  // Sections
  static const String about = 'About Me';
  static const String skills = 'Skills';
  static const String experience = 'Experience';
  static const String education = 'Education';
  static const String socialMedia = 'Connect With Me';

  // Buttons
  static const String downloadCV = 'Download CV';
  static const String contactMe = 'Contact Me';
  static const String hireMe = 'Hire Me';

  // Skills List
  static const List<String> technicalSkills = [
    'Flutter',
    'Dart',
    'Firebase',
    'REST API',
    'Git',
    'CI/CD',
  ];

  static const List<String> softSkills = [
    'Communication',
    'Team Leadership',
    'Problem Solving',
    'Time Management',
  ];

  // Experience
  static const List<Map<String, String>> experiences = [
    {
      'title': 'Senior Flutter Developer',
      'company': 'Tech Solutions Inc.',
      'duration': '2022 - Present',
      'description': 'Leading mobile development team and building enterprise applications.',
    },
    {
      'title': 'Mobile App Developer',
      'company': 'Startup Hub',
      'duration': '2020 - 2022',
      'description': 'Developed multiple cross-platform applications from scratch.',
    },
  ];

  // Education
  static const List<Map<String, String>> educations = [
    {
      'degree': 'Master of Computer Science',
      'school': 'Stanford University',
      'duration': '2018 - 2020',
    },
    {
      'degree': 'Bachelor of Software Engineering',
      'school': 'UC Berkeley',
      'duration': '2014 - 2018',
    },
  ];

  // Social Links
  static const List<Map<String, String>> socialLinks = [
    {'platform': 'GitHub', 'icon': 'code', 'url': 'github.com'},
    {'platform': 'LinkedIn', 'icon': 'work', 'url': 'linkedin.com'},
    {'platform': 'Twitter', 'icon': 'tag', 'url': 'twitter.com'},
    {'platform': 'Instagram', 'icon': 'camera', 'url': 'instagram.com'},
  ];
}