package cn.springmvc.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DateUtil {
	public static Date String2Date(String time) throws ParseException{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		return sdf.parse(time);
	}
	/**
	 * 获取从当前年份开始向前多少个年份
	 * @param number
	 * @return
	 */
	public static List<String> getYearList(int number){
		return null;
	}
	
	public static int getCurrentYear(){
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR); 
		return year;
	}
	public static int getCurrentMonth(){
		Calendar calendar = Calendar.getInstance();
		int month = calendar.get(Calendar.MONTH); 
		return month;
	}

}
