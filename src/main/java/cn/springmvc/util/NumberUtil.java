package cn.springmvc.util;

public class NumberUtil {
	
	/** 
    * 判断number参数是否是整型数表示方式 
    * @param number 
    * @return 
    */  
   public static boolean isIntegerNumber(String number){  
       number=number.trim();  
       String intNumRegex="\\-{0,1}\\d+";//整数的正则表达式  
       if(number.matches(intNumRegex))  
           return true;  
       else  
           return false;  
   }  
     
   /** 
    * 判断number参数是否是浮点数表示方式 
    * @param number 
    * @return 
    */  
   public static boolean isFloatPointNumber(String number){  
       number=number.trim();  
       String pointPrefix="(\\-|\\+){0,1}\\d*\\.\\d+";//浮点数的正则表达式-小数点在中间与前面  
       String pointSuffix="(\\-|\\+){0,1}\\d+\\.";//浮点数的正则表达式-小数点在后面  
       if(number.matches(pointPrefix)||number.matches(pointSuffix))  
           return true;  
       else  
           return false;  
   }  

}
