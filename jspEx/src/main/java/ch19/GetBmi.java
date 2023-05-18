package ch19;

import java.io.IOException;

import org.apache.jasper.el.JspELException;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class GetBmi extends SimpleTagSupport {

	private double height;
	private double weight;
	private double bmi;

	/*
	 * BMI가 18.5 이하면 저체중 ／ 18.5 ~ 22.9 사이면 정상 ／ 23.0 ~ 24.9 사이면 과체중 ／ 25.0 이상부터는
	 * 비만으로 판정. ex) 키 170㎝에 몸무게 73kg이면, 계산식 : 73 / (1.7×1.7) = 25.26 → 과체중
	 */
	public double getBmi() {
		return bmi;
	}

	public void setBmi(double height, double weight) {
		this.bmi = Math.round(weight / (Math.pow(height / 100, 2.0)) * 100) / 100.0;
	}

	public void setHeight(double i) {
		this.height = i;
	}

	public void setWeight(double i) {
		this.weight = i;
	}

	@Override
	public void doTag() throws JspELException, IOException {
		setBmi(height, weight);
		JspWriter out = getJspContext().getOut();
		out.println("<h2>Bmi 측정결과: " + getBmi() + " 입니다.</h2>");
		// BMI가 18.5 이하면 저체중 ／ 18.5 ~ 22.9 사이면 정상 ／ 23.0 ~ 24.9 사이면 과체중 ／ 25.0 이상부터는
		// 비만으로 판정.
		if (getBmi() >= 25.0) {
			// 비만
			out.println("<h3>당신은 <strong style='color:red'>비만</strong>입니다.</h3>");
		} else if (23.0 <= getBmi() && getBmi() <= 24.9) {
			// 과체중
			out.println("<h3>당신은 <strong style='color:red'>과체중</strong>입니다.</h3>");
		} else if (18.5 <= getBmi() && getBmi() <= 22.9) {
			// 정상
			out.println("<h3>당신은 <strong style='color:green'>정상</strong>입니다.</h3>");
		} else {
			// 저체중
			out.println("<h3>당신은 <strong style='color:pink'>저체중</strong>입니다.</h3>");
		}

	}
}
