package cn.springmvc.service.impl;//package cn.springmvc.service.impl;
//
//import java.util.ArrayList;
//import java.util.Collections;
//import java.util.Comparator;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import cn.springmvc.dao.DeviceDAO;
//import cn.springmvc.entry.PageHelper;
//import cn.springmvc.service.DataSatisticsService;
//import cn.springmvc.util.DateUtil;
//
//import com.github.abel533.echarts.Option;
//import com.github.abel533.echarts.axis.CategoryAxis;
//import com.github.abel533.echarts.axis.ValueAxis;
//import com.github.abel533.echarts.code.Magic;
//import com.github.abel533.echarts.code.Position;
//import com.github.abel533.echarts.code.Tool;
//import com.github.abel533.echarts.code.Trigger;
//import com.github.abel533.echarts.data.PieData;
//import com.github.abel533.echarts.feature.MagicType;
//import com.github.abel533.echarts.series.Bar;
//import com.github.abel533.echarts.series.Line;
//import com.github.abel533.echarts.series.Pie;
//
//@Service(value = "dataSatisticsService")
//@Transactional
//public class DataSatisticsServiceImpl implements DataSatisticsService {
//	@Autowired
//	private DeviceDAO deviceDAO;
//
//	public Option doubleCharts(List<Map<String,Object>> list,String title,String trigger,String key,String value) {
//		// 数据库查询获取统计数据
//		// 创建Option
//		Option option = new Option();
//		option.title(title).tooltip(Trigger.axis).legend(trigger);
//		option.toolbox()
//				.show(true)
//				.feature(Tool.mark, Tool.dataView,
//						new MagicType(Magic.line, Magic.bar ).show(true),
//						Tool.restore, Tool.saveAsImage);
//		option.calculable(true);
//		// 创建类目轴
//		CategoryAxis category = new CategoryAxis();
//		Line line = new Line(trigger);
//	//	Pie p = new Pie(trigger);
//		// 循环数据
//		for (Map<String, Object> objectMap : list) {
//			// 设置类目
//			category.data(objectMap.get(key));
//			category.boundaryGap(false);
//			line.data(objectMap.get(value));
//		}
//		line.itemStyle().normal().label().show(true);
//		// 设置类目轴
//		option.xAxis(category);
//		ValueAxis y = new ValueAxis();
//		y.axisLabel().formatter("{value}台");
//		option.dataZoom().show(true).realtime(true).start(1).end(100);
//		
//		option.yAxis(y);
//		// 设置数据
//		option.series(line);
//		return option;
//	}
//	public Option pieCharts(List<Map<String,Object>> list,String title,String trigger,String key,String value) {
//		// 数据库查询获取统计数据
//		// 创建Option
//		Option option = new Option();
//		option.title(title).legend("20万以下","20万-40万","40万以上").color("#00448a","#0580b9","#28c6b9");
//		option.toolbox()
//				.show(true)
//				.feature(Tool.mark, Tool.dataView,
//						new MagicType(Magic.pie , Magic.funnel).show(true),
//						Tool.restore, Tool.saveAsImage);//new MagicType(Magic.pie , Magic.bar).show(true),
//		option.calculable(true);
//		
//		Pie p = new Pie();
//		// 循环数据
//		for (Map<String, Object> objectMap : list) {
//			// 设置类目
//			
//			p.data(new PieData(objectMap.get(key).toString(),
//					objectMap.get(value)));
//			
//		}
//		
//		p. center(450, 270).radius(180);
//		option.tooltip().trigger(Trigger.item).formatter("{b}<br>({c}台)");
//		//p.itemStyle().emphasis().label().show(true).position(Position.inside);
//		// 设置数据
//		option.series(p);
//		return option;
//	}
//	public  Option createOption(List<Map<String,Object>> list,String title,String trigger,String key,String value){
//		// 查询前20
//				PageHelper.startPage(1, 20, false);
//				
//				// 为了数据从大到小排列，这里需要倒叙
//				Collections.sort(list, new Comparator<Map<String, Object>>() {
//					@Override
//					public int compare(Map<String, Object> o1, Map<String, Object> o2) {
//						return -1;
//					}
//				});
//				// 创建Option
//				Option option = new Option();
//				option.title(title).tooltip(Trigger.axis).legend(trigger);
//
//				// 横轴为值轴
//				option.xAxis(new ValueAxis().boundaryGap(0d, 0.01));
//				// 创建类目轴
//				CategoryAxis category = new CategoryAxis();
//				// 柱状数据
//				Bar bar = new Bar(trigger);
//				// 饼图数据
//				// Pie pie = new Pie("速度（km/h）");
//				// 循环数据
//				for (Map<String, Object> objectMap : list) {
//					// 设置类目
//					category.data(objectMap.get(key));
//					// 类目对应的柱状图
//					bar.data(objectMap.get(value));
//					// 饼图数据
//					// pie.data(new PieData(objectMap.get("时间").toString(),
//					// objectMap.get("速度")));
//				}
//				// 设置类目轴
//				option.yAxis(category);
//				// 饼图的圆心和半径
//				// pie.center(800,380).radius(100);
//				// 设置数据
//				option.series(bar); // , pie
//				// 由于药品名字过长，图表距离左侧距离设置180，关于grid可以看ECharts的官方文档
//				option.grid().x(180);
//				// 返回Option
//				return option;
//	}
//	@Override
//	public List<Map<String,Object>> analysisGroupByDepart() {
////		List<Map<String,Object>> list = this.deviceDAO.analysisGroupByDepart();
////		return createOption(list,"按部门统计设备数量","设备数量（台）","departName","number");
//		return this.deviceDAO.analysisGroupByDepart();
//	}
//
//	@Override
//	public List<Map<String,Object>> analysisGroupByBuyTime() {
////		List<Map<String,Object>> list = this.deviceDAO.analysisGroupByBuyTime();
////		return createOption(list,"按时间","设备数量（台）","buyYear","number");
//		return this.deviceDAO.analysisGroupByBuyTime();
//	}
//
//	@Override
//	public List<Map<String,Object>> analysisGroupBySinglePrice() {
//		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
//		Map<String,Object> map1 = new HashMap<String,Object>();
//		Map<String,Object> map2 = new HashMap<String,Object>();
//		Map<String,Object> map3 = new HashMap<String,Object>();
//		int count1 = this.deviceDAO.analysisGroupBySinglePrice(0, 200000);
//		int count2 = this.deviceDAO.analysisGroupBySinglePrice(200000, 400000);
//		int count3 = this.deviceDAO.analysisGroupBySinglePrice(400000, 0);
//		map1.put("number", count1);
//		map2.put("number", count2);
//		map3.put("number", count3);
//		map1.put("price","20万以下");
//		map2.put("price","20万-40万");
//		map3.put("price","40万以上");
//		list.add(map1);
//		list.add(map2);
//		list.add(map3);
//		return list;
//		//return createOption(list,"按单格","设备数量（台）","price","number");
//	}
//
//	@Override
//	public List<Map<String,Object>> analysisGroupByTotlePrice() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	/**
//	 * 按照部门统计设备数量
//	 * 
//	 * @return
//	 */
//	public List<Map<String, Integer>> getDeviceByDepart() {
//		return null;
//	}
//
//	private List<Map<String, Object>> getData() {
//		List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
//		for (int i = 0; i < 24; i++) {
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("时间", "2015-5-1 " + i + "点");
//			map.put("速度", Math.random() * 180);
//			result.add(map);
//		}
//		return result;
//	}
//
//	@Override
//	public Option createECOption() {
//		// 查询前20
//		PageHelper.startPage(1, 20, false);
//		// 数据库查询获取统计数据
//		List<Map<String, Object>> list = getData();
//		// 为了数据从大到小排列，这里需要倒叙
//		Collections.sort(list, new Comparator<Map<String, Object>>() {
//			@Override
//			public int compare(Map<String, Object> o1, Map<String, Object> o2) {
//				return -1;
//			}
//		});
//		// 创建Option
//		Option option = new Option();
//		option.title("拥堵率").tooltip(Trigger.axis).legend("速度（km/h）");
//
//		// 横轴为值轴
//		option.xAxis(new ValueAxis().boundaryGap(0d, 0.01));
//		// 创建类目轴
//		CategoryAxis category = new CategoryAxis();
//		// 柱状数据
//		Bar bar = new Bar("速度（km/h）");
//		// 饼图数据
//		// Pie pie = new Pie("速度（km/h）");
//		// 循环数据
//		for (Map<String, Object> objectMap : list) {
//			// 设置类目
//			category.data(objectMap.get("时间"));
//			// 类目对应的柱状图
//			bar.data(objectMap.get("速度"));
//			// 饼图数据
//			// pie.data(new PieData(objectMap.get("时间").toString(),
//			// objectMap.get("速度")));
//		}
//		// 设置类目轴
//		option.yAxis(category);
//		// 饼图的圆心和半径
//		// pie.center(800,380).radius(100);
//		// 设置数据
//		option.series(bar); // , pie
//		// 由于药品名字过长，图表距离左侧距离设置180，关于grid可以看ECharts的官方文档
//		option.grid().x(180);
//		// 返回Option
//		return option;
//	}
//
//	@Override
//	public void selectRemoveCauses() {
//
//	}
//
//	/***************************************************************************/
//	@Override
//	public Option generateRadomVF() {
//		// 数据库查询获取统计数据
//		List<Map<String, Object>> list = getVFData(1);
//		// 创建Option
//		Option option = new Option();
//		option.title("本日按时段车流量统计分析").tooltip(Trigger.axis).legend("车流量");
//		option.toolbox()
//				.show(true)
//				.feature(Tool.mark, Tool.dataView,
//						new MagicType(Magic.line, Magic.bar).show(true),
//						Tool.restore, Tool.saveAsImage);
//		option.calculable(true);
//		// 创建类目轴
//		CategoryAxis category = new CategoryAxis();
//		Line line = new Line("车流量 ");
//		// 循环数据
//		for (Map<String, Object> objectMap : list) {
//			// 设置类目
//			category.data(objectMap.get("时间"));
//			category.boundaryGap(false);
//			line.data(objectMap.get("车流量"));
//		}
//		// 设置类目轴
//		option.xAxis(category);
//		ValueAxis y = new ValueAxis();
//		y.axisLabel().formatter("{value}辆");
//		option.yAxis(y);
//		option.dataZoom().show(true).realtime(true).start(10).end(30);
//		// 设置数据
//		option.series(line);
//		return option;
//	}
//
//	@Override
//	public Option generateradomViolations() {
//		// 数据库查询获取统计数据
//		List<Map<String, Object>> list = getViolationsDataByDay();
//		// 创建Option
//		Option option = new Option();
//		option.title("本月大学路航海路卡口违章数据统计").tooltip(Trigger.axis).legend("违章量");
//		option.toolbox()
//				.show(true)
//				.feature(Tool.mark, Tool.dataView,
//						new MagicType(Magic.line, Magic.bar).show(true),
//						Tool.restore, Tool.saveAsImage);
//		option.calculable(true);
//		// 创建类目轴
//		CategoryAxis category = new CategoryAxis();
//		Line line = new Line("违章量");
//		// 循环数据
//		for (Map<String, Object> objectMap : list) {
//			// 设置类目
//			category.data(objectMap.get("日期"));
//			category.boundaryGap(false);
//			line.data(objectMap.get("违章量"));
//		}
//		// 设置类目轴
//		option.xAxis(category);
//		ValueAxis y = new ValueAxis();
//		y.axisLabel().formatter("{value}起");
//		option.dataZoom().show(true).realtime(true).start(10).end(30);
//		option.yAxis(y);
//		// 设置数据
//		option.series(line);
//		return option;
//	}
//
//	/**
//	 * 随机生成车流量数据
//	 * 
//	 * @param type
//	 * @return
//	 */
//	public List<Map<String, Object>> getVFData(int type) {
//		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//		for (int i = 0; i < 25; i++) {
//			String time = "2015-5-1 " + i + "点";
//			int number = (int) (Math.random() * 10000);
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("时间", time);
//			map.put("车流量", number);
//			list.add(map);
//		}
//		return list;
//	}
//
//	/**
//	 * 随机生成违章数据按日
//	 * 
//	 * @param type
//	 * @return
//	 */
//	public List<Map<String, Object>> getViolationsDataByDay() {
//		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//		int year = DateUtil.getCurrentYear();
//		int month = DateUtil.getCurrentMonth();
//		for (int i = 1; i <= 31; i++) {
//			String time = year + "-" + month + "-" + i;
//			int number = (int) (Math.random() * 10);
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("日期", time);
//			map.put("违章量", number);
//			list.add(map);
//		}
//		return list;
//	}
//
//	/**
//	 * 随机生成违章数据按月
//	 * 
//	 * @param type
//	 * @return
//	 */
//	public List<Map<String, Object>> getViolationsDataByMonth() {
//		int year = DateUtil.getCurrentYear();
//		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//		for (int i = 1; i <= 12; i++) {
//			String time = year + "-" + i;
//			int number = (int) (Math.random() * 200);
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("日期", time);
//			map.put("违章量", number);
//			list.add(map);
//		}
//		return list;
//	}
//
//	/**
//	 * 随机生成违章数据按
//	 * 
//	 * @param type
//	 * @return
//	 */
//	public List<Map<String, Object>> getViolationsDataByYear() {
//		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//		for (int i = 1; i <= 31; i++) {
//			String time = "2015-5-" + i;
//			int number = (int) (Math.random() * 10);
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("日期", time);
//			map.put("违章量", number);
//			list.add(map);
//		}
//		return list;
//	}
//
//}
