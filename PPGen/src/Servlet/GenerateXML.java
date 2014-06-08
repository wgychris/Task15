package Servlet;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import Form.QuestionsForm;

/**
 * Servlet implementation class GenerateXML
 */

public class GenerateXML extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GenerateXML() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		QuestionsForm form = (QuestionsForm) request.getSession().getAttribute(
				"question");

		// XML with passed parameter
		String str1 = "<Questions><q1_1>" + form.getQ1_1() + "</q1_1>";

		StringBuilder sb1 = new StringBuilder();
		sb1.append("<q1_2>");
		if(form.getQ1_2()!=null)
		for (String checkbox : form.getQ1_2()) {
			sb1.append("<checkbox>" + checkbox + "</checkbox>");
		}
		sb1.append("</q1_2>");

		String str2 = "<q2_1>" + form.getQ2_1() + "</q2_1><q2_2>"
				+ form.getQ2_2() + "</q2_2><q2_3_1>" + form.getQ2_3_1()
				+ "</q2_3_1><q2_3_2>" + form.getQ2_3_2()
				+ "</q2_3_2><q2_4_1>" + form.getQ2_4_1() + "</q2_4_1><q2_4_2>" + form.getQ2_4_2() + "</q2_4_2><q2_4_3>" + form.getQ2_4_3() + "</q2_4_3><q2_5_1>"
				+ form.getQ2_5_1() + "</q2_5_1>";
						
		StringBuilder sb12 = new StringBuilder();
		sb12.append("<q2_5_2>");
		if(form.getQ2_5_2()!=null)
		for (String checkbox : form.getQ2_5_2()) {
			sb12.append("<checkbox>" + checkbox + "</checkbox>");
		}
		sb12.append("</q2_5_2>");
		
		String str21="<q2_6>" + form.getQ2_6()
				+ "</q2_6><q3_1>"
				+ form.getQ3_1() + "</q3_1><q3_2>" + form.getQ3_2()
				+ "</q3_2><q3_3>" + form.getQ3_3() + "</q3_3><q3_4>"
				+ form.getQ3_4() + "</q3_4><q3_5>" + form.getQ3_5()
				+ "</q3_5><q3_6>" + form.getQ3_6() + "</q3_6><q4_1_1>" + form.getQ4_1_1()
				+ "</q4_1_1><q4_1_2>" + form.getQ4_1_2() + "</q4_1_2><q4_1_3>"
				+ form.getQ4_1_3() + "</q4_1_3><q4_2>" + form.getQ4_2()
				+ "</q4_2><q4_3>" + form.getQ4_3()
				+ "</q4_3><q5_1>" + form.getQ5_1() + "</q5_1><q5_2>"
				+ form.getQ5_2() + "</q5_2><q6_1>" + form.getQ6_1()
				+ "</q6_1><q6_2_1>" + form.getQ6_2_1() + "</q6_2_1><q6_2_2>"
				+ form.getQ6_2_2() + "</q6_2_2><q6_2_3>" + form.getQ6_2_3()
				+ "</q6_2_3><q6_2_4>" + form.getQ6_2_4() + "</q6_2_4><q6_2_5>"
				+ form.getQ6_2_5() + "</q6_2_5>";

		StringBuilder sb2 = new StringBuilder();
		sb2.append("<q6_3>");
		if(form.getQ6_3()!=null)
		for (String checkbox : form.getQ6_3()) {
			sb1.append("<checkbox>" + checkbox + "</checkbox>");
		}
		sb2.append("</q6_3>");

		String str3 = "<q7_1>" + form.getQ7_1() + "</q7_1><q8_1>"
				+ form.getQ8_1() + "</q8_1>";
				
		
		
		StringBuilder sb3 = new StringBuilder();
		sb1.append("<q8_2>");
		if(form.getQ8_2()!=null)
		for (String checkbox : form.getQ8_2()) {
			sb3.append("<checkbox>" + checkbox + "</checkbox>");
		}
		sb3.append("</q8_2>");
		
		String str4	= "<q8_3>" + form.getQ8_3() + "</q8_3><q8_4>"
				+ form.getQ8_4() + "</q8_4><q8_5>"+ form.getQ8_5() +"<q8_5>" + form.getQ9_1()
				+ "</q9_1><q9_1>" + form.getQ9_2() + "</q9_2>";
		
		
	
				
		String str = str1 + sb1.toString() + str2+sb12.toString()+str21+sb2.toString()+str3+sb3.toString()+str4;
	
		
		// save to D:\\Question.xml
		str2XML(str);

		RequestDispatcher d = request.getRequestDispatcher("result.jsp");
		d.forward(request, response);
		return;

	}

	public void str2XML(String str) throws IOException {
		SAXReader saxReader = new SAXReader();
		Document document;
		try {
			document = saxReader.read(new ByteArrayInputStream(str.getBytes()));
			Element rootElement = document.getRootElement();

			String getXMLEncoding = document.getXMLEncoding();
			String rootname = rootElement.getName();
			System.out.println("getXMLEncoding>>>" + getXMLEncoding
					+ ",rootname>>>" + rootname);

			OutputFormat format = OutputFormat.createPrettyPrint();

			format.setEncoding("GB2312");

			XMLWriter writer = new XMLWriter(new FileWriter(new File(
					"D:\\Question.xml")), format);
			writer.write(document);
			writer.close();

		} catch (DocumentException e) {
			// TODOAuto-generatedcatchblock
			e.printStackTrace();
		}

	}

}
