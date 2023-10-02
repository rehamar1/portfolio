import '../../data/models/custom_service.dart';
import '../../data/models/custom_technologie.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 70;
  static const List<CustomTechnologie> technologies = [
    CustomTechnologie(logo: 'assets/images/tech/dart.png', service: 'Dart'),
    CustomTechnologie(
        logo: 'assets/images/tech/flutter.png', service: 'Flutter'),
    CustomTechnologie(
        logo: 'assets/images/tech/restapi.png', service: 'RestApi'),
    CustomTechnologie(logo: 'assets/images/tech/python.jpg', service: 'Python'),
    CustomTechnologie(
        logo: 'assets/images/tech/firebase.png', service: 'Firebase'),
    CustomTechnologie(logo: 'assets/images/tech/mysql.png', service: 'Mysql'),
    CustomTechnologie(logo: 'assets/images/tech/jira.png', service: 'Jira'),
    CustomTechnologie(logo: 'assets/images/tech/trello.png', service: 'Trello'),
    CustomTechnologie(
        logo: 'assets/images/tech/sharepoint.png', service: 'Sharepoint'),
    CustomTechnologie(
        logo: 'assets/images/tech/teams.jpg', service: 'Microsoft Teams'),
    CustomTechnologie(logo: 'assets/images/tech/github.png', service: 'GitHub'),
    CustomTechnologie(logo: 'assets/images/tech/figma.png', service: 'Figma'),
  ];
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'I am a Junior mobile developer. I have experience using Dart and Flutter Framework. ',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiDesignLogo,
      description: 'I design beautiful mobile interfaces with Figma .',
    ),
    CustomService(
      service: 'Python Script',
      logo: AppAssets.scrappingLogo,
      description:
          'I can collect content and data from the database then manipulate and analyze as needed.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'BissoConnect',
      imageUrl: 'assets/images/projects/welcome_image.jpg',
      description:
          "Platform that connects service providers and jobseekers to make it easier to find services",
      previewLink: 'https://youtu.be/HSIosFd6Sys',
      technologies:
          'I used Flutter, Firebase (Realtime Database) and Firebase Storage  to develop this application ',
      fonctionality:
          'User Profiles: \nUsers can create and manage profiles with information about their professional background, skills, and business interests. \nJob Listings: \nBusinesses can post job openings, and job seekers can search and apply for positions. \nBusiness Directory: \nA directory of businesses, categorized by industry, allowing users to find potential partners or clients.\nNetworking: \nUsers can connect with other professionals, businesses, and potential investors.\nAdvertisement Posting: \nBusinesses can post advertisements for their products or services to reach a wider audience.\nNews and Updates: \nUsers can share and access industry-specific news, trends, and updates.\nMessaging: A messaging system for users to communicate and discuss potential collaborations or job opportunities.',
    ),
    Project(
      name: 'My Urban Sport Indoor',
      imageUrl: 'assets/images/projects/urban.png',
      description:
          'Project to provide solutions to make it easier for teams to book pitches and manage players.',
      previewLink: 'https://youtu.be/MuuVjqrR49g',
      technologies: "I used Flutter, Firebase (Realtime Database) , Firebase Storage and Strip API to develop this application",
      fonctionality: "Search for Available Sports Facilities by Date, Time, and Location: \nUsers can search for available sports facilities by specifying a date, time, and location. The system should provide a list of options that match the criteria. \nInteractive Map View of Available Sports Facilities: \nUsers can visualize the available sports facilities on an interactive map, making it easier to select a location. \nSelect a Sports Facility and Choose a Reservation Time: \nUsers can choose a specific sports facility from the list and select a preferred time slot for reservation. \nPayment of a Deposit to Confirm the Reservation: \nAfter selecting a facility and time, users can make a payment as a deposit to confirm their reservation. \nRequest Additional Players to Complete the Team: \nUsers should have the option to invite other players to join their team if they need additional players to meet the minimum requirements for the sport. \nCancellation of an Existing Reservation (with a specific duration): \nUsers can cancel an existing reservation, but the system may impose rules regarding cancellation deadlines or penalties, especially if it's close to the reservation time. \nAccess to Reservation History and Payment Receipts: \nUsers should be able to access their reservation history, view past and upcoming reservations, and generate payment receipts for their records.",
    ),
    Project(
      name: 'PhysioHome+',
      imageUrl: 'assets/images/projects/physio.png',
      description:
          'A digital solution to meet the needs of patients and physiotherapists.',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.appflutter.physiohom',
      previewLink: 'https://youtu.be/mWeA625pcrI',
      technologies:
          'I used Flutter, Firebase (Firestore) , Firebase Storage ,  Firebase Messaging and OneDrive Api to develop this application ',
      fonctionality: "Exercise tracking: \nThe application will allow physiotherapists to assign exercises to their patients, which can be tracked by the patients through the app. \nVideo and photo demonstration: \nThe app will provide videos and photos demonstrating how to perform each exercise correctly, making it easier for patients to understand and perform them accurately. \nReminders: \nThe app will remind patients to complete their assigned exercises at the specified times. \nProgress tracking: \nThe app will allow patients to track their progress over time, such as the number of repetitions, sets, or duration of exercise. \nCommunication and consultation: \nThe app will provide a platform for remote communication between physiotherapists and patients, enabling consultations, progress updates, and adjustments to exercise regimes. \nData privacy and security: \nThe app will ensure that all patient data is secure, encrypted, and compliant with data protection laws and regulations.",
    ),
    Project(
      name: 'Most',
      imageUrl: 'assets/images/projects/most.jpeg',
      description:
          'Digital solution for an inventory, add batches with locations ',
      previewLink: 'https://youtu.be/MuuVjqrR49g',
      technologies: "I used Flutter, Laravel and RestApi to develop this application ",
      fonctionality: "User Authentication and Access Control: \nImplement user authentication to ensure only authorized personnel can access the system. \nDefine different user roles (e.g., admin, manager, staff) with varying levels of access permissions. \nInventory Management: \nCreate a central database to store detailed information about each item in the inventory. \nTrack item attributes such as name, description, category, and SKU (Stock Keeping Unit). \nRecord quantity on hand for each item. \nMaintain a history of item movements and transactions.",
    ),
    Project(
      name: 'SIRY',
      imageUrl: 'assets/images/projects/siry.jpeg',
      description:
          'Revolutionary application simplifies order management for businesses. With modules dedicated to processing customer orders, filtering order reports and visualising sales data, you have all the tools you need to optimise your business and offer your customers an exceptional experience.',
      previewLink: 'https://youtu.be/3nU_dYjsPsg',
      technologies: "I used Flutter, Laravel Back-end  and RestAPI to develop this application ",
      fonctionality:  "Order management module: \nensures easy management of customer orders. \nReports management module: About reports, view a filter of reports for your orders. \nDashboard module: \nuse your orders and sales figures to view your dashboard and track your progress.",
    ),
    Project(
      name: 'Abono',
      imageUrl: 'assets/images/projects/abono.jpeg',
      description: 'Check the validity of transport season tickets.',
   
      technologies: "I used Flutter, Laravel Back-end  , RestAPI and PhpMyadmin to develop this application ",
      fonctionality: "",
    ),
    Project(
      name: 'Interfaçage XRT',
      imageUrl: 'assets/images/projects/export.png',
      description: 'Exporting data in csv format from odbc',
      previewLink: 'https://youtu.be/wK9Y9BhP190',
      technologies: "I used Python, tiknter, ODBC and csv form to develop this script ",
      fonctionality: " Exporting data from database in csv format",
    ),
    Project(
      name: 'DB2 to SqlServer',
      imageUrl: 'assets/images/projects/export.png',
      description: 'Data migration from db2 to sql server',
      previewLink: 'https://youtu.be/gkeRSAfCZaI',
      technologies: "I used Python, tiknter, DB2 , SQL server and csv form to develop this script ",
      fonctionality: "Data Extraction from DB2. \nData Transformation and Mapping. \nData Loading into SQL Server",
    ),
  ];
}
