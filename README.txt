BUS TICKET BOOKING SYSTEM — CPP15
Enrollment: IU2541230425

REQUIREMENTS
- C++17 compiler (GCC/MinGW-w64 recommended)
- Visual Studio Code (or another C++ IDE)

PROJECT FOLDERS
Source/       C++ source and header files
Data/         tickets.txt and buses.txt are created here automatically
Diagrams/     UML diagram source files and rendered SVG diagrams
Screenshots/  Illustrative sample terminal output (not captured from your PC)
Executable/   Put your compiled program here

RUN IN VS CODE (Windows)
1. Open the IU2541230425_CPP15_Project folder in VS Code.
2. Open Terminal > New Terminal.
3. Compile from the project root with:
   g++ -std=c++17 Source/main.cpp Source/Person.cpp Source/Passenger.cpp Source/Route.cpp Source/Bus.cpp Source/Ticket.cpp Source/FileManager.cpp Source/BusSystem.cpp -o Executable/Project.exe
4. Run:
   .\Executable\Project.exe

IMPORTANT DATA PATH
The program uses Data/ as its data directory. Run the executable from the project root so that the Data folder is found.

MENU
1 Add bus record
2 Display bus records
3 Search bus record
4 Update bus record
5 Delete bus record
6 Book bus ticket
7 Cancel ticket
8 Generate report
9 Exit

DEFAULT SAMPLE DATA
Four routes are built in. Three sample buses are created automatically the first time the system runs.
Ticket and bus records are stored as pipe-delimited text files in Data/.
Do not edit a data file while the program is running.

DESIGN NOTES
- Person is an abstract supporting base class; Passenger inherits from Person.
- Person::displayDetails is virtual and Passenger overrides it, demonstrating runtime polymorphism.
- BusSystem owns dynamic arrays of Bus, Ticket, and Route and releases them in its destructor.
- FileManager saves and loads persistent bus and ticket data.
- Input is validated; phone number must be 10 digits and age must be 1–120.
- Fare is calculated at Rs. 1.50 per kilometre (sample academic rule; change if your instructor specifies another rule).

LIMITATIONS / HONEST NOTES
This is a console-based academic prototype, not a real payment or live bus inventory service.
Seat assignment is a simple sequential seat-number example. For production use, seat maps, concurrency control, authentication, and stronger data validation would be needed.
