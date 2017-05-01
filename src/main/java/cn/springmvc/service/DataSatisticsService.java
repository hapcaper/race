package cn.springmvc.service;

import java.util.List;
import java.util.Map;

import com.github.abel533.echarts.Option;

public interface DataSatisticsService { 
	/**
	 * 按照部门进行统计分析数据
	 */
	public List<Map<String,Object>> analysisGroupByDepart();
	/**
	 * 按照购买年份进行统计分析数据
	 */
	public List<Map<String,Object>> analysisGroupByBuyTime();
	/**
	 * 按照单价进行统计分析
	 */
	public List<Map<String,Object>> analysisGroupBySinglePrice();
	/**
	 * 按照总额进行统计分析
	 */
	public List<Map<String,Object>> analysisGroupByTotlePrice();

	/**
	 * 创建图形信息
	 * @param list
	 * @param title
	 * @param trigger
	 * @param key
	 * @param value
	 * @return
	 */
	public  Option createOption(List<Map<String, Object>> list, String title, String trigger, String key, String value);
	/**
	 * 
	 * @param list
	 * @param title
	 * @param trigger
	 * @param key
	 * @param value
	 * @return
	 */
	public Option doubleCharts(List<Map<String, Object>> list, String title, String trigger, String key, String value);
	/**
	 * 
	 * @param list
	 * @param title
	 * @param trigger
	 * @param key
	 * @param value
	 * @return
	 */
	public Option pieCharts(List<Map<String, Object>> list, String title, String trigger, String key, String value);
	/********************************************/

	public void selectRemoveCauses() ;
	/**
	 * 创建一个Echarts的特例
	 * @return
	 */
	public Option createECOption();
	/**
	 * 随机生成车流量统计数据
	 * @return
	 */
	public Option generateRadomVF();
	/**
	 * 随机生成违章统计数据
	 * @return
	 */
	public Option generateradomViolations();
}
