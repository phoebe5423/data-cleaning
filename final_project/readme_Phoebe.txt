Starbucks processing

range: DE No. 17738 to No. 17766 and US from No. 11239 to No. 15003

2021-11-12
1. using excel to split(separator is'{') schedule into 7 columns
2. named 7 colums: Today, Tomorrow, 'd3','d4','d5','d6','d7'
3. use regex to extract time in colums: Today, Tomorrow, 'd3','d4','d5','d6','d7', and put into 7 new colums named 'Monday','Tuesday', 'Wednesday','Thursday','Friday','Saturday','Sunday' according to day in old colums
4. delete colums:Today, Tomorrow, 'd3','d4','d5','d6','d7'
5. rename colums 'Sunday':'Sun', 'Monday':'Mon', 'Tuesday':'Tue','Wednesday':'Wed', 'Thursday':'Thu', 'Friday':'Fri', 'Saturday':'Sat'

6. create new columns: GMT and GMT_city
7. split value in olsonTimeZoneId into GMT time and city
8. check if there is a value bigger than 90 or smaller than -90  in the latitude column
9. check if there is a value bigger than 180 or smaller than -180  in the longitude column
10. check if there is a non-digital value in the latitude and longitude column
11. convert the first letter of every word in the city column to an uppercase letter
12. convert values in the countrySubdivisionCode column and countryCode column to an uppercase letter
13. replace Nan with Null