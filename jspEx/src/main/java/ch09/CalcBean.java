package ch09;

public class CalcBean {
	private String oper;
	private int num1;
	private int num2;
	private int result;

	public String getOper() {
		return oper;
	}

	public void setOper(String oper) {
		this.oper = oper;
	}

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}
	
	public int getResult() {
		return result;
	}

	public void calculate() {

		switch (oper) {
		case "+":
			result = (num1 + num2);
			break;
		case "-":
			result = (num1 - num2);
			break;
		case "*":
			result = (num1 * num2);
			break;
		case "/":
			result = (num1 / num2);
			break;
		}

	}

}
