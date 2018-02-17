# DBMS_SkiResort-Project
This is a university Project that I have done during DataBase Management System course using SQL Oracle 11g, some PHP and HTML code.
As a result I have created a small website on Bootstrap to access my Database.

This Model describes the organisation of the Ski Resort.

We have Countries (ID, Name, State) with Mountains (ID, Name and Height). One country can have many mountains. Also we have many Hotels (ID, Name, Street name, PLZ and City) in each country.
Each country can have many Ski Resorts (ID, Description) but ski resort is unique for one country. It has different Lifts (ID, Type, Qty) and Slopes (ID, Type, Length) that can only exist within the ski resort.
Mountain Rescue (ID, Type, Phone number) can be presented in many ski resorts and one ski resort can have different Rescue Services. Mountain Rescue is being regulated by itself.
Many Skischools (ID, Name, Street name, PLZ, City) can work in one ski resort but the skischool can work only in one ski resort. Each ski school has Workers (SVNr., Name, Family name, Employment) that can be either Trainer (ID, Qualification) or Office worker (ID).
