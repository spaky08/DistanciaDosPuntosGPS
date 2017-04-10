delimiter //
create FUNCTION GetDistance(
		Lat1	decimal(15,12),
		Lng1	decimal(15,12),
		Lat2	decimal(15,12),
		Lng2	decimal(15,12)
	)RETURNS decimal(15,12)
		READS SQL DATA
	BEGIN
		DECLARE x decimal(15,12);
		set x=(6371 * acos( cos( radians(Lat1) ) * cos( radians( Lat2 ) ) * cos( radians( Lng1 ) - radians(Lng2) ) + sin( radians(Lat1) ) * sin( radians(Lat2) ) ));
		RETURN x;
	END
//
delimiter ;
