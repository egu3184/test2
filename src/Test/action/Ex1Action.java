package Test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex1Action implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		//현재 메서드를 호출하는 경우는 2가지이다.
		//Get방식으로 요청되는 경우와 
		//ex1.jsp에서 Post방식으로 요청되는 경우
		String viewPath = "/ex1.jsp";
		
		String c_type = request.getContentType();
		
		if(c_type == null) {
			
			
		}else if(c_type.startsWith("application")) {
			//post방식으로 요청된 경우
			
			viewPath = "/ex1_res.jsp";
			
			String cPage = request.getParameter("cPage");	//5
			request.setAttribute("cPage", cPage);
			
		}
		
		
		return viewPath;
	}

}
