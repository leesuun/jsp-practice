package ch19;

import java.io.IOException;

import org.apache.jasper.el.JspELException;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class PageTag extends SimpleTagSupport{
	
	private int from;
	private int to;
	
	public void setFrom(int i) {
		this.from = i;
	}
	public void setTo(int i) {
		this.to = i;
	}
	
	@Override
	public void doTag() throws JspELException, IOException{
		int start =from;
		int end =to;
		JspWriter out = getJspContext().getOut();
		out.println("Page &nbsp");
		for(int i= start; i<=end; i++) {
			
			out.print("<a href=pageTag.jsp?nowPage=" + i + ">");
			out.print("[" + i + "]");
			out.print("</a>&nbsp");
		}
		
	}

}
