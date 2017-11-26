package util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConvertor {
	
	public static java.sql.Date stringToSqlDate(String date) throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date parsedDate =  format.parse(date);
		java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());

        return sqlDate;
    }

}
