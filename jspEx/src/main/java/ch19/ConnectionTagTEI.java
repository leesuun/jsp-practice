package ch19;

import jakarta.servlet.jsp.tagext.TagData;
import jakarta.servlet.jsp.tagext.TagExtraInfo;
import jakarta.servlet.jsp.tagext.VariableInfo;

public class ConnectionTagTEI extends TagExtraInfo {
	public VariableInfo[] getVariableInfo(TagData data) {
		VariableInfo vInfo = new VariableInfo(data.getAttributeString("id"), "ch19.DBConnection", true,
				VariableInfo.AT_BEGIN);
		VariableInfo[] vInfoArray = { vInfo };
		return vInfoArray;
	}
}
