package Servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;



import org.dom4j.DocumentException;

import org.dom4j.io.SAXReader;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.w3c.dom.Document;

import Model.Questions;

/**
 * Servlet implementation class UploadXML
 */

public class UploadXML extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadXML() {
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
		Questions q = XML2OBJ();
		request.setAttribute("question", q);
		RequestDispatcher d = request.getRequestDispatcher("index2.jsp");
        d.forward(request,response);
        return;
	}
	
	public Questions XML2OBJ() {
		DocumentBuilderFactory builderFactory = DocumentBuilderFactory
				.newInstance();
		DocumentBuilder builder = null;
		try {
			builder = builderFactory.newDocumentBuilder();
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		}

		SAXReader sr = new SAXReader();
		Document document = null;
		org.dom4j.Document doc = null;
		// document = sr.read(new File("D:\\Question.xml"));
		try {
			document = builder.parse(new FileInputStream("D:\\Question.xml"));
			doc = sr.read(new File("D:\\Question.xml"));
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SAXException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Questions q = new Questions();
		
		
		org.dom4j.Element root = doc.getRootElement();
		q.setQ1_1(root.elementText("q1_1"));
		q.setQ2_1(root.elementText("q2_1"));
		q.setQ2_2(root.elementText("q2_2"));
		q.setQ2_3_1(root.elementText("q2_3_1"));
		q.setQ2_3_2(root.elementText("q2_3_2"));
		q.setQ2_4_1(root.elementText("q2_4_1"));
		q.setQ2_4_2(root.elementText("q2_4_2"));
		q.setQ2_4_3(root.elementText("q2_4_3"));
		
		q.setQ2_5_1(root.elementText("q2_5_1"));
		q.setQ2_5_3(root.elementText("q2_5_3"));
		q.setQ2_6(root.elementText("q2_6"));
	
		q.setQ3_1(root.elementText("q3_1"));
		q.setQ3_2(root.elementText("q3_2"));
		q.setQ3_3(root.elementText("q3_3"));
		q.setQ3_4(root.elementText("q3_4"));
		q.setQ3_5(root.elementText("q3_5"));
		q.setQ3_6(root.elementText("q3_6"));

		
		q.setQ4_1_1(root.elementText("q4_1_1"));
		q.setQ4_1_2(root.elementText("q4_1_2"));
		q.setQ4_1_3(root.elementText("q4_1_3"));
		q.setQ4_2(root.elementText("q4_2"));
		q.setQ4_3(root.elementText("q4_3"));
		
		q.setQ5_1(root.elementText("q5_1"));
		q.setQ5_2(root.elementText("q5_2"));
		
		q.setQ6_1(root.elementText("q6_1"));
		q.setQ6_2_1(root.elementText("q6_2_1"));
		q.setQ6_2_2(root.elementText("q6_2_2"));
		q.setQ6_2_3(root.elementText("q6_2_3"));
		q.setQ6_2_4(root.elementText("q6_2_4"));
		q.setQ6_2_5(root.elementText("q6_2_5"));
		
		q.setQ7_1(root.elementText("q7_1"));
		
		q.setQ8_1(root.elementText("q8_1"));
		q.setQ8_3(root.elementText("q8_3"));
		q.setQ8_4(root.elementText("q8_4"));
		q.setQ8_5(root.elementText("q8_5"));
		
		q.setQ9_1(root.elementText("q9_1"));
		q.setQ9_2(root.elementText("q9_2"));
		
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();

	//	String expr = "/Questions";

		String exprq1_2 = "/Questions/q1_2/checkbox";
		String exprq6_3 = "/q6_3/checkbox";
		String exprq8_2 = "/q8_2/checkbox";
		String exprq9_2 = "/q2_5_2/checkbox";
		// String[] checked = null;

		// PASRING STRING ARRAY
		NodeList nodeList1;
		try {
			nodeList1 = (NodeList) xpath.compile(exprq1_2).evaluate(document,
					XPathConstants.NODESET);
			String[] s1_2 = new String[50];
			for (int i = 0; i < nodeList1.getLength(); i++) {
				 
				s1_2[i] = nodeList1.item(i).getFirstChild()
						.getNodeValue();

			}
			q.setQ1_2(s1_2);
			
			String[] s6_3 = new String[50];
			NodeList nodeList2 = (NodeList) xpath.compile(exprq6_3).evaluate(
					document, XPathConstants.NODESET);
			for (int i = 0; i < nodeList2.getLength(); i++) {
				s6_3[i] = nodeList2.item(i).getFirstChild()
						.getNodeValue();

			}
			q.setQ6_3(s6_3);
			
			String[] s8_2 = new String[50];
			
			NodeList nodeList3 = (NodeList) xpath.compile(exprq8_2).evaluate(
					document, XPathConstants.NODESET);
			for (int i = 0; i < nodeList3.getLength(); i++) {
				s8_2[i] = nodeList3.item(i).getFirstChild()
						.getNodeValue();

			}
			q.setQ8_2(s8_2);
			
			
			String[] s2_5_2 = new String[50];
			NodeList nodeList4 = (NodeList) xpath.compile(exprq9_2).evaluate(
					document, XPathConstants.NODESET);
			for (int i = 0; i < nodeList4.getLength(); i++) {
				s2_5_2[i] = nodeList4.item(i).getFirstChild()
						.getNodeValue();

			}
			q.setQ2_5_2(s2_5_2);
			
			
		} catch (XPathExpressionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return q;
	}
	

}
