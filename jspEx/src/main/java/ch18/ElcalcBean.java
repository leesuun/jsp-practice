package ch18;

public class ElcalcBean {

	public static double calc(Double num1, String oper, Double num2) {

		double result = 0;
		switch (oper) {
		case "+":
			result = num1 + num2;
			break;

		case "-":
			result = num1 - num2;
			break;

		case "*":
			result = num1 * num2;
			break;

		case "/":
			result = num1 / num2;
			break;

		default:
			break;
		}

		return result;
	}
}
