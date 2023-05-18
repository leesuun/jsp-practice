package ch19;

import java.io.IOException;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class ConnectionTag extends SimpleTagSupport {

	private String id;
	
	public void setId(String id) {
        this.id = id;
    }
	
	@Override
		public void doTag() throws JspException, IOException{
        	try {
				getJspContext().setAttribute(id, new DBConnection());
			} catch (Exception e) {
				e.printStackTrace();
			}
    } 
}
