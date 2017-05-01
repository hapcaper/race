package cn.springmvc.entry;

public class Term {
	private int id ;
	private int term ;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	@Override
	public String toString() {
		return "Term [id=" + id + ", term=" + term + "]";
	}
	
	
}
