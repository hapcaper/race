package cn.springmvc.entry;

public class PageDO {
	private int currenPage=1;//当前页码
	private int pageCount = 10;//每页显示数据条数
	private int totleCount=0;//总条数
	private int totlePage = 0;//总页数
	private int startIndex=1;//开始条数
	private int endIndex = totleCount;
	private int start = 0;
	
	public int getStart() {
		this.start=(this.currenPage-1)*this.pageCount;
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getCurrenPage() {
		return currenPage;
	}
	public void setCurrenPage(int currenPage) {
		this.currenPage = currenPage;	
		this.setStartIndex(this.currenPage);
		
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getTotleCount() {
		return totleCount;
	}
	public void setTotleCount(int totleCount) {
		this.totleCount = totleCount;
	}
	public int getTotlePage() {
		return totlePage;
	}
	public void setTotlePage(int totlePage) {
		this.totlePage = totlePage;
		if(this.startIndex+5>=this.totlePage){
			this.setEndIndex(this.totlePage);
				if(this.totlePage>6){
				this.setStartIndex(this.totlePage-5);
				}else{
					this.setStartIndex(1);
				}
		}else{
			this.setEndIndex(this.startIndex+5);
		}
	}
	public int getStartIndex() {
		return startIndex; 
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;

	}
	public int getEndIndex() {
		return endIndex;
	}
	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}

}
