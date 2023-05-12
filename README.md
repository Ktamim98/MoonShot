# MoonShot
MoonShot is an iOS application that showcases the details of various NASA space missions, as well as the astronauts who have been involved in them. Users can learn about each mission's history, objectives, and crew members, as well as view photos and descriptions of the astronauts who have participated in these missions.

https://github.com/Ktamim98/MoonShot/assets/124142522/08addb76-6530-4316-af15-26ce4a922239

## Project Overview
The app includes three views: ContentView, MissionView, and AstronautView. The ContentView displays a grid of missions, while the MissionView shows the details of a specific mission, including its highlights and the crew members involved. The AstronautView displays information about a specific astronaut. The app loads data from two JSON files: astronauts.json and missions.json.


## Features
- Displays information about missions and astronauts
- Uses Codable and Identifiable
- Extension ShapeStyle for dark and light background
- JSON decoder method to load the JSON files
- DateFormatter() used to format dates as "y-mm-dd"
- Adaptive grid item with a minimum of 150 points
- ScrollView with a LazyGridView
- Overlays for borders
- preferredColorScheme(.dark) used
- MissionView with GeometryReader and init() for mission and crew
- Horizontal ScrollView to display crew member information
- AstronautView with information about a specific astronaut

## JSON files
This project uses two JSON files: astronauts.json and missions.json. The astronauts.json file contains information about the astronauts, including their names, ID, and biographies. The missions.json file contains information about the missions, including their names, descriptions, crew members, and launch dates. Both files are loaded using the JSON decoder method.

### Views
#### ContentView
- The ContentView is the first screen of the app and displays a grid of missions using a LazyGridView. Each grid item shows the name and launch date of the mission.

#### MissionView
- The MissionView displays the details of a specific mission, including its highlights and the crew members involved. The view includes a GeometryReader to determine the screen size and a horizontal ScrollView to display crew member information.

#### AstronautView
- The AstronautView displays information about a specific astronaut, including their name, biography, and photo.

#### ShapeStyle Extension
- The project includes an extension of ShapeStyle for dark and light backgrounds. This extension is used throughout the app to provide a consistent look and feel.

#### Codable and Identifiable
- The project uses Codable and Identifiable to load and display the JSON data. Codable is used to decode the JSON data into Swift objects, while Identifiable is used to provide a unique identifier for each object.

#### JSON Decoder()
- The project uses the JSON decoder method to load the JSON files. The decoder method decodes the JSON data into Swift objects using the Codable protocol.

#### DateFormatter()
- The DateFormatter class is used to format dates as "y-mm-dd". This is used to format the launch dates of the missions.

#### Adaptive Grid Item
- The grid item in the ContentView uses an adaptive size with a minimum of 150 points. This ensures that the grid item is always at least 150 points wide, regardless of the screen size.

#### LazyGridView
- The ScrollView in the ContentView uses a LazyGridView to improve performance. This only loads the grid items that are visible on the screen.

#### Overlays
- Overlays are used throughout the app to provide borders around images. This is done using the overlay method of the Image view.

#### preferredColorScheme
- The preferredColorScheme(.dark) method is used to provide a consistent dark theme throughout the app.
## Credits
This project was made with the help of resources from Hacking with Swift by Paul Hudson. The 100 Days of SwiftUI tutorial series was followed to create this app. All credit goes to the Hacking with Swift team for their excellent resources and tutorials.
