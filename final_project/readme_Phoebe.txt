Starbucks processing

range: DE No. 17738 to No. 17766 and US from No. 11239 to No. 15003

2021-11-12
1. using excel to split(separator is'{') schedule into 7 columns
2. named 7 columns: Today, Tomorrow, 'd3','d4','d5','d6','d7'
3. use regex to extract time in columns: Today, Tomorrow, 'd3','d4','d5','d6','d7', and put into 7 new columns named 'Monday','Tuesday', 'Wednesday','Thursday','Friday','Saturday','Sunday' according to day in old columns
4. delete columns:Today, Tomorrow, 'd3','d4','d5','d6','d7'
5. rename columns 'Sunday':'Sun', 'Monday':'Mon', 'Tuesday':'Tue','Wednesday':'Wed', 'Thursday':'Thu', 'Friday':'Fri', 'Saturday':'Sat'

6. create new columns: GMT and GMT_city
7. split value in olsonTimeZoneId into GMT time and city
8. check if there is a value bigger than 90 or smaller than -90  in the latitude column
9. check if there is a value bigger than 180 or smaller than -180  in the longitude column
10. check if there is a non-digital value in the latitude and longitude column
11. convert the first letter of every word in the city column to an uppercase letter
12. convert values in the countrySubdivisionCode column and countryCode column to an uppercase letter
13. replace Nan with Null

2021-11-14
1. drop columns:slug, currentTimeOffset, schedule, olsonTimeZoneId. With excel.
2. change the columns' name:GMT_city to GMT_Region
3. convert every word in colum city to lower
4. 