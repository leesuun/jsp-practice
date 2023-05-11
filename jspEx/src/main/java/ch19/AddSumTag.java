package ch19;

import java.io.IOException;
import java.io.StringWriter;

import jakarta.servlet.jsp.JspContext;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class AddSumTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException{
		JspContext context= getJspContext();
		JspWriter out = context.getOut();
		JspFragment body = getJspBody();
		StringWriter strw = new StringWriter();
		body.invoke(strw);
		String str = strw.toString();
		int num = Integer.parseInt(str);
		int result = 0;
		
		
		for(int i = 1; i<=num; i++) {
			result += i;
			
		}
		
		out.println("1부터 "+ num + "까지 더한 결과: " +result);
		
	}
	
}
