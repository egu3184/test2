package Test.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Ex4Action implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String c_type = request.getContentType();
		
		String viewPath = "/ex4_form.jsp";
		
		//c_type이 null이 아닐 때는 Post방식으로 요청되었을 때
		if(c_type !=null && c_type.startsWith("application")) {
			// Map 구조 생성
			Map<String, String> map = new HashMap<String, String>();
			
			map.put("v1" , "연습1");
			map.put("v2" , "Value2");
			request.setAttribute("m_map", map);
			
			HttpSession session = request.getSession();
			session.setAttribute("name", "koitt");
			
			
			viewPath = "/ex4_res.jsp";
			
		}
			
			
			
	
		
		return viewPath;
	}

}
