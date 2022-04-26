# UTM-Blood-Donation-System


1. Overview
2. Module description:
 Login:
 Donor
 Blood Bank
 Hospital
 Admin
 Registration:
 Donor
 Blood Bank
 Hospital
 Profile:
 Admin Dashboard
 Donor Dashboard
 Hospital Dashboard
 Blood Bank Dashboard
 Search module
 About us
 Admin Entry Updating
 Admin Entry Deleting
 Admin Entry inserting
 Address Links:
 Hospital Address button
 Blood Bank Address button
3. System Design Approach
4. System Architecture-MVC
5. Use case Diagram
 Use Case Description 01
 Use Case Description 02
 Use Case Description 03
 Use Case Description 04
 Use Case Description 05
6. Activity Diagram
7. Swimlane diagram
8. System Interfaces
9. System Events flow and Code Reflection
 Sign-in---based on user type
 Donor sign-up
 Hospital Sign-up
 Blood Bank-sign-up
 Search Donor
 Hospital
 Donor
 Blood Bank
 About US
 Admin Control

1. Overview:
Encouraging people to donate blood and finding out the blood donors remains a serious problem for most hospitals and blood banks. They face a serious issue when there is a lack of blood stored in their blood banks, and they need donors as fast as possible for medical emergency situations; most of the issues are revolved around finding a specific type of blood donors who have a unique blood type that the hospital is lacking where the time to reach or finding those holders can have a significant impact on the emergency medical situations.
UTM blood bank is an online web application platform developed to serve blood donors, blood banks, and hospitals using the latest technologies in web application developments. UTM blood bank provides a friendly user interface for the users to ease their tasks from finding blood banks, finding donors, and hospitals in need of blood donors. The system is used for maintaining all the basic processes and activities of the blood bank management system.
The system can be extended to maintain records of hospitals, organ donation, and other similar sectors. While developing the system, there shall be space for further improvement. There shall be proper documentation so that further enhancement becomes easy. As a whole, the system is focused on working with the blood bank management system, and on additional modification, it can also be used as compatible systems of similar organizations.
UTM blood bank’s main purpose is to match between the hospitals and blood donors, it will create a channel between them where the donors can find out hospitals that are in need of blood donors and vice versa.
2. Module description
 Login:
 Donor: The process provides data security for the users; only authorized donor can access the system using user id and passwords.
 Blood Bank: Only blood bank authority with user ids and passwords can access the system, which ensures data security for the users.
 Hospital: Only hospital authority users with user ids and passwords can access the system, which ensures data security for the users.
 Admin: Only admin with user ids and passwords can access the system, which ensures data security for the users.
 Registration:
 Donor: This allows anyone who is in good health to register as a donor. All of their credentials and contact information are stored in the system.
 Blood Bank: This enables blood banks to become members of the system. So, to join in the system, you can look for the donor as well as their name. The system administrator will add their name to the Blood Bank name list after they register.
 Hospital: This enables hospitals to join the system. It will assist the hospital in locating a donor in the event of an emergency. In addition, their name and location must be entered into the system.
 Profile:
 Admin Dashboard: From Admin dashboard, registered admin can control database, who will have the ability to add, delete, or evaluate any new entries that are entered into the system.
 Donor Dashboard: All registered blood donors can change their information on the Donor dashboard.
 Hospital Dashboard: From the Hospital Bank dashboard, all registered hospitals can update their information and address, which will be shown in the 'Google Map'.
 Blood Bank Dashboard: From Blood bank dashboard they can modify their details and update their address and it will reflect by ‘Google Map’.
 Search Module: The blood bank and hospitals can use the search function to find specific blood and contract with the donor.
 About us
This page will highlight the system's purpose and use, as well as the laws and restrictions that apply to the specific user.
 Admin Entry Inserting: From admin dashboard, admin can add new user as an admin for the system.
 Admin Entry Updating: From admin dashboard, admin can update the admin information from the system.
 Admin Entry Deleting: From admin dashboard, admin can delete an admin from the system.
 Address Links:
 Hospital Address button: This feature allowing a specific donor to look up the hospital's name and address.
 Blood Bank Address button: This feature allowing a specific donor to look up the Blood Bank’s name and address.
3. System Approach
Route:
 Problem Identification
 System Design
 System Building
 Testing and Implementation
Deliverables:
 Requirement Specification
 Use-case model
 Analysis Model will be used to show the realization of all use-cases conceptually
 Proto typing for realization of the proposed system
 Implementation model
 Code and system
 Documentation and manual
Managerial Approach
 Team Building Consideration
 The work will equally distribute between teammates.
 The progress shall be synchronized on task basis.
 Training requirements
 Java programming
 JSP
 Spring Framework
 HTML
 CSS
 Bootstrap 5.0
Meeting Schedules
Working team held a meeting twice in a week for reviewing the progress.
Constraints:
 GUI will be only in English.
Technology
The technologies used for the development of the system are as follows:
 Operating System: GNU/Linux/windows/ mac os
 Database Management System: mysql
 Programming Language: java
 Web-framework: spring
 Browser: Mozilla Firefox, Google Chrome

![image](https://user-images.githubusercontent.com/71214071/165244205-62fd67bb-3a58-46e7-9fb1-d48f70c29a8c.png)

In our project we have used MVC. Model, View, Controller architectural pattern. This pattern used for efficiently relating the user interface to underlying data models. And as MVC primarily divides the application into three logical parts: the model part, the view and the controller, now as here we can see we have those 3 components which are Model, Controller and View.
Where Model is basically deals with data. It’s responsible for maintaining data and handle those logically. And this is connected to the database.
And the View component is basically for data representation. It generated UI for the user.
And for the Controller this is the main man. Basically, this level takes care of the request handler. This enables the interconnection between the views and the model so it acts as an intermediary.
We choose this pattern for our project, and some of the main reasons are,
1. Now a days this is most suitable pattern for mobile applications.
2. And as there is segregation of the code among three levels. It’s a bit easy to divide and organize our application logic.
3. And of course it helped us during the planning phase because it gives us an outline of how to arrange the code.
4. Components which are re-usable, easy to maintain and can different components can be independently deployed.
5. And last but not the least multiple views. Using this pattern developing different view components are easily achievable. And as the sections are independent, any changes in a certain section of the application will never affect the entire architecture.![image](https://user-images.githubusercontent.com/71214071/165244351-96d090c9-aa20-4d36-b0bd-d4c408186e73.png)

![image](https://user-images.githubusercontent.com/71214071/165244402-f013e51b-f9da-48a9-aebd-3772e9528ec0.png)

![image](https://user-images.githubusercontent.com/71214071/165244446-cce7ac79-6bb3-4590-89d7-90c2c88f36f8.png)

![image](https://user-images.githubusercontent.com/71214071/165244500-71cc0ba1-802a-48ed-a919-a19b4118082e.png)

