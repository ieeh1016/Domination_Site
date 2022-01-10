CREATE TABLE IF NOT EXISTS donation(
	d_donationId VARCHAR(10) NOT NULL,
	d_donationName VARCHAR(100),
	d_donationPrice INTEGER,
	d_goalPrice VARCHAR(30),
	d_donationPlace VARCHAR(30),
	d_donationPeriod VARCHAR(30),
	d_donationDescription TEXT,
	d_filename VARCHAR(20),
	PRIMARY KEY (d_donationId)
)default CHARSET=utf8


DROP TABLE donation;

desc donation;

select * from donation;