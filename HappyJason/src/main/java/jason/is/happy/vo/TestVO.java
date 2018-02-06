package jason.is.happy.vo;

public class TestVO {

	private int one;
	private String two;
	
	public TestVO() {}

	public TestVO(int one, String two) {
		super();
		this.one = one;
		this.two = two;
	}

	public int getOne() {
		return one;
	}

	public void setOne(int one) {
		this.one = one;
	}

	public String getTwo() {
		return two;
	}

	public void setTwo(String two) {
		this.two = two;
	}

	@Override
	public String toString() {
		return "TestVO [one=" + one + ", two=" + two + "]";
	}
	
	
}
