Student: Pozdnikin Mykhailo
Subject: CSDT

Project name: Ship for carpfishing
Programming language: C, C++

Additional tools/utils: Make, CMake

Control modes: Manual, Wi-fi, BT

Actions: move forward, move backward, move leftward, move rightward, turn led on and off

HW-interface: SPI

Data driven format: xml

In order to run the sketch (transiever\transiever.ino and receiver\receiver.ino), you need next hardware:
Arduino nano - 2 pcs
NRF24L01 - 2 pcs
Thumb joystick - 1 pcs
led - 5 pcs or motors - 2 pcs
NPN transistor (for ex tip41c) - 4 pcs
PNP transistor (for ex tip42c) - 4 pcs
10 kOhm resistor - 3 pcs (only if you use leds instead of motors)

Also, you have to install Arduino IDE to compile and program your Arduino.
Then, open library manager (Ctrl+Shift+I) and install RF24 library.
Choose COM-port, that Arduino is connected to (Tools-Port).
After that, you can upload the sketch onto your board (click on "Upload" button).

In order to write data to XML file, run reader.py script and pass two arguments: number of COM-port, that arduino is connected to and number of seconds, that you want to read data.
After that, data.xml file with data from serial port will be created.
In order to control the receiver via BT, download nRF Connect app on your mobile phone.
On the receiver board, press the button, which is connected to pin D3 and hold it. While this time, reset the board (press RESET button on the Arduino).
After 3-4 seconds, you can release the button, which is connected to pin D3.
On your mobile phone, open nRF Connect app and navigate to Advertiser. Then, click on '+' button and write a Display name.
Then, open Advertising data and there open Manufacturer data. In field "16-bit Company Identifier" write some data.
For example, 0x0102. This means next: "High potential on pin number 2".
After that, press OK.
You can then enable new advertiser and you will have high potential on pin number 2 on your Arduino.

In order to save the data in database, install MySQL and create new database.
Then, create or update "data.xml" file with data. After that, run db_connection.py script. 
NOTE: in script modify next peace of code accordingly to your database settings:

````
mydb = mysql.connector.connect(
  host="",
  user="",
  password="",
  database=""
)
````

If everything is ok, new data will appear in your database.

Related tag for task 7: https://github.com/MishaPozdnikin/csdt-pozdnikinmv-2122/releases/tag/ShipForCarpfishing_1.2_512021513
