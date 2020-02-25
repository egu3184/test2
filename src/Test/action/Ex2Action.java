package Test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex2Action implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String viewPath = "/ex2_form.jsp";
		
		String c_type = request.getContentType();
		
		if(c_type != null && c_type.startsWith("application")) {
			//post방식으로 요청된 경우
			
			viewPath = "/ex2_res.jsp";
			
			
			
		}
		
		
		return viewPath;
	}

}
