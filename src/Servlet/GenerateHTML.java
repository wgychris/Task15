package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import Form.QuestionsForm;


/**
 * Servlet implementation class GenerateHTML
 */

public class GenerateHTML extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FormBeanFactory<QuestionsForm> questionFormFactory = FormBeanFactory.getInstance(QuestionsForm.class);
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenerateHTML() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		QuestionsForm form = null;
		
		try {
			form = questionFormFactory.create(request);
			request.setAttribute("form", form);
			System.out.println(form.getQ1_1());
			
			//Page of Generated HTML
			RequestDispatcher d = request.getRequestDispatcher("result.jsp");
            d.forward(request,response);
            return;
			
		} catch (FormBeanException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
