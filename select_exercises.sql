<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ContentFilters</key>
	<dict/>
	<key>auto_connect</key>
	<true/>
	<key>data</key>
	<dict>
		<key>connection</key>
		<dict>
			<key>allowDataLocalInfile</key>
			<integer>0</integer>
			<key>database</key>
			<string>albums_db</string>
			<key>enableClearTextPlugin</key>
			<integer>0</integer>
			<key>host</key>
			<string>157.230.209.171</string>
			<key>name</key>
			<string>Codeup DB Servver</string>
			<key>rdbms_type</key>
			<string>mysql</string>
			<key>sslCACertFileLocation</key>
			<string></string>
			<key>sslCACertFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslCertificateFileLocation</key>
			<string></string>
			<key>sslCertificateFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslKeyFileLocation</key>
			<string></string>
			<key>sslKeyFileLocationEnabled</key>
			<integer>0</integer>
			<key>type</key>
			<string>SPTCPIPConnection</string>
			<key>useSSL</key>
			<integer>0</integer>
			<key>user</key>
			<string>easley_1267</string>
		</dict>
		<key>session</key>
		<dict>
			<key>connectionEncoding</key>
			<string>utf8mb4</string>
			<key>contentFilterV2</key>
			<dict>
				<key>children</key>
				<array/>
				<key>filterClass</key>
				<string>groupNode</string>
				<key>isConjunction</key>
				<true/>
			</dict>
			<key>contentPageNumber</key>
			<integer>1</integer>
			<key>contentSelection</key>
			<data>
			YnBsaXN0MDDUAQIDBAUGBwpYJHZlcnNpb25ZJGFyY2hpdmVyVCR0
			b3BYJG9iamVjdHMSAAGGoF8QD05TS2V5ZWRBcmNoaXZlctEICVRk
			YXRhgAGvEA8LDBkaGxwdIyQlLDA0ODxVJG51bGzTDQ4PEBQYV05T
			LmtleXNaTlMub2JqZWN0c1YkY2xhc3OjERITgAKAA4AEoxUWF4AF
			gAaACoAOVHR5cGVUcm93c1RrZXlzXxAmU2VsZWN0aW9uRGV0YWls
			VHlwZVByaW1hcnlLZXllZERldGFpbHPTDQ4PHiAioR+AB6EhgAiA
			CVIxNQnSJicoKVokY2xhc3NuYW1lWCRjbGFzc2VzXxATTlNNdXRh
			YmxlRGljdGlvbmFyeaMoKitcTlNEaWN0aW9uYXJ5WE5TT2JqZWN0
			0g4PLS+hLoALgA3SDzEyM1lOUy5zdHJpbmeADFJpZNImJzU2XxAP
			TlNNdXRhYmxlU3RyaW5nozU3K1hOU1N0cmluZ9ImJzk6Xk5TTXV0
			YWJsZUFycmF5ozk7K1dOU0FycmF50iYnKj2iKisACAARABoAJAAp
			ADIANwBJAEwAUQBTAGUAawByAHoAhQCMAJAAkgCUAJYAmgCcAJ4A
			oACiAKcArACxANoA4QDjAOUA5wDpAOsA7gDvAPQA/wEIAR4BIgEv
			ATgBPQE/AUEBQwFIAVIBVAFXAVwBbgFyAXsBgAGPAZMBmwGgAAAA
			AAAAAgEAAAAAAAAAPgAAAAAAAAAAAAAAAAAAAaM=
			</data>
			<key>contentSortColIsAsc</key>
			<true/>
			<key>contentViewport</key>
			<string>{{289, 0}, {636, 958}}</string>
			<key>isToolbarVisible</key>
			<true/>
			<key>queries</key>
			<string># Create a new file called select_exercises.sql. Store your code for this exercise in that file. You should be testing your code in Sequel Pro as you go.
# Use the albums_db database.
use `albums_db`;
# 3. Explore the structure of the albums table.
SELECT * 
FROM albums;

# a. How many rows are in the albums table?
#31 rows

# b. How many unique artist names are in the albums table?# 23 ARTISTS
SELECT DISTINCT(artist)
From albums;

# c. What is the primary key for the albums table?
#id

# d. What is the oldest release date for any album in the albums table? What is the most recent release date?
SELECT * 
FROM albums
ORDER BY release_date ASC;
#OLDEST: 1967
#Most Recent : 2011


# 4 Write queries to find the following information:

# a. The name of all albums by Pink Floyd(The Dark Side of the Moon &amp; The Wall)
SELECT name
FROM albums
WHERE artist = "Pink Floyd";

# b. The year Sgt. Pepper's Lonely Hearts Club Band was released(1967)
SELECT release_date
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";

# c. The genre for the album Nevermind(Grunge, Alternative rock)
SELECT genre
FROM albums
WHERE name = "NEVERMIND"


# d. Which albums were released in the 1990s(The Bodyguard,Jagged Little Pill, Come On Over, Falling into You, Let's Talk About Love, Dangerous,The Immaculate Collection, Titanic: Music from the Motion Picture,Metallica,Nevermind, Supernatural)
SELECT name
from albums
WHERE release_date LIKE '199%';

# e. Which albums had less than 20 million certified sales(Grease: The Original Soundtrack from the Motion Picture,Bad,,Sgt. Pepper's Lonely Hearts Club Band, Dirty Dancing, Let's Talk About Love, Dangerous, The Immaculate Collection, Abbey Road, Born in the U.S.A., Brothers in Arms, Titanic: Music from the Motion Picture, Nevermind, The Wall)
SELECT name
FROM albums
WHERE sales &lt; 20;
# f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * 
FROM albums
WHERE genre = 'Rock';
# Contents of a string are NOT case-sensitive

SELECT *
FROM albums
WHERE genre LIKE '%rock%';</string>
			<key>table</key>
			<string>albums</string>
			<key>view</key>
			<string>SP_VIEW_CUSTOMQUERY</string>
			<key>windowVerticalDividerPosition</key>
			<real>214</real>
		</dict>
	</dict>
	<key>encrypted</key>
	<false/>
	<key>format</key>
	<string>connection</string>
	<key>queryFavorites</key>
	<array/>
	<key>rdbms_type</key>
	<string>mysql</string>
	<key>rdbms_version</key>
	<string>8.0.23</string>
	<key>version</key>
	<integer>1</integer>
</dict>
</plist>
