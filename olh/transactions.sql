-- drop the table if already present
DROP TABLE WEATHER_TABLE;

-- this should really be a range partitioned table
CREATE TABLE WEATHER_TABLE
(
	"STN"			NUMBER,
	"WBAN"			NUMBER,
	"WEATHER_YEAR"		NUMBER,
	"WEATHER_MONTH"		NUMBER,
	"WEATHER_DAY"		NUMBER,
	"TEMPERATURE"		NUMBER,
	"DEWPOINT"		NUMBER,
	"WEATHER"		VARCHAR2(100)
)
PARTITION BY HASH(STN);
QUIT;