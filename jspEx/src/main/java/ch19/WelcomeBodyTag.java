package ch19;

import java.io.IOException;
import java.io.StringWriter;

import jakarta.servlet.jsp.JspContext;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class WelcomeBodyTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException{
		JspContext context= getJspContext();
		JspWriter out = context.getOut();
		JspFragment body = getJspBody();
		out.println("환영합니다.<p><b>");
		StringWriter strw = new StringWriter();
		body.invoke(strw);
		String str = strw.toString();
		for(int i = 0; i<5; i++) {
			out.println(i+1+"."+str+"<br/>");
		}
		out.print("</b><hr/>");
	}
	
}
