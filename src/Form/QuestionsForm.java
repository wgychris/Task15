package Form;

import java.util.ArrayList;

import org.mybeans.form.FormBean;

public class QuestionsForm extends FormBean{
	//company name
	String q1_1;
	
	//checkbox type of info to collect
	String[] q1_2;
	
	//true or false
	String q2_1;
	//true or false
	String q2_2;
	//true or false
	String q2_3_1;
	String q2_3_2;
	//true or false
	String q2_4_1;//*********************************
	String q2_4_2;
	String q2_4_3;
	//true or false
	String q2_5_1; //***************************************
	String[] q2_5_2;
	String q2_5_3;
	//true or false
	String q2_6;
	
	
	//######################share limits
	String q3_1 = "dont";
	String q3_2 = "dont";
	String q3_3 = "dont";
	String q3_4 = "dont";
	String q3_5 = "dont";
	String q3_6 = "dont";
	
	//################################## Question 4
	// clicked or not
	String q4_1_1 = "###";
	String q4_1_2 = "###";
	String q4_1_3 = "###";
	
	String q4_2;
	String q4_3;
	//##################### Question 5
	String q5_1 = "###";
	String q5_2 = "###";
	
	//################## Question 6
	String q6_1;//Yes or no
	
	String q6_2_1;
	String q6_2_2;
	String q6_2_3;
	String q6_2_4;
	String q6_2_5;
	
	String[] q6_3;
	
	//################################
	
	String q7_1;
//	String q7_1_2;
	
	//Question 8
	
	String q8_1;
	String[] q8_2;
	String q8_3;
	String q8_4;
	String q8_5;
	//Question 9
	
	String q9_1;
	String q9_2;
	public String getQ1_1() {
		return q1_1;
	}
	public String[] getQ1_2() {
		return q1_2;
	}
	public String getQ2_1() {
		return q2_1;
	}
	public String getQ2_2() {
		return q2_2;
	}
	public String getQ2_3_1() {
		return q2_3_1;
	}
	public String getQ2_3_2() {
		return q2_3_2;
	}
	public String getQ2_4_1() {
		return q2_4_1;
	}
	public String getQ2_4_2() {
		return q2_4_2;
	}
	public String getQ2_4_3() {
		return q2_4_3;
	}
	public String getQ2_5_1() {
		return q2_5_1;
	}
	public String[] getQ2_5_2() {
		return q2_5_2;
	}
	public String getQ2_6() {
		return q2_6;
	}
	public String getQ3_1() {
		return q3_1;
	}
	public String getQ3_2() {
		return q3_2;
	}
	public String getQ3_3() {
		return q3_3;
	}
	public String getQ3_4() {
		return q3_4;
	}
	public String getQ3_5() {
		return q3_5;
	}
	public String getQ3_6() {
		return q3_6;
	}
	public String getQ4_1_1() {
		return q4_1_1;
	}
	public String getQ4_1_2() {
		return q4_1_2;
	}
	public String getQ4_1_3() {
		return q4_1_3;
	}
	public String getQ4_2() {
		return q4_2;
	}
	public String getQ4_3() {
		return q4_3;
	}
	public String getQ5_1() {
		return q5_1;
	}
	public String getQ5_2() {
		return q5_2;
	}
	public String getQ6_1() {
		return q6_1;
	}
	public String getQ6_2_1() {
		return q6_2_1;
	}
	public String getQ6_2_2() {
		return q6_2_2;
	}
	public String getQ6_2_3() {
		return q6_2_3;
	}
	public String getQ6_2_4() {
		return q6_2_4;
	}
	public String getQ6_2_5() {
		return q6_2_5;
	}
	public String[] getQ6_3() {
		return q6_3;
	}
	public String getQ7_1() {
		return q7_1;
	}
	public String getQ8_1() {
		return q8_1;
	}
	public String[] getQ8_2() {
		return q8_2;
	}
	public String getQ8_3() {
		return q8_3;
	}
	public String getQ8_4() {
		return q8_4;
	}
	public String getQ9_1() {
		return q9_1;
	}
	public String getQ9_2() {
		return q9_2;
	}
	public void setQ1_1(String q1_1) {
		this.q1_1 = q1_1;
	}
	public void setQ1_2(String[] q1_2) {
		this.q1_2 = q1_2;
	}
	public void setQ2_1(String q2_1) {
		this.q2_1 = q2_1;
	}
	public void setQ2_2(String q2_2) {
		this.q2_2 = q2_2;
	}
	public void setQ2_3_1(String q2_3_1) {
		this.q2_3_1 = q2_3_1;
	}
	public void setQ2_3_2(String q2_3_2) {
		this.q2_3_2 = q2_3_2;
	}
	public void setQ2_4_1(String q2_4_1) {
		this.q2_4_1 = q2_4_1;
	}
	public void setQ2_4_2(String q2_4_2) {
		this.q2_4_2 = q2_4_2;
	}
	public void setQ2_4_3(String q2_4_3) {
		this.q2_4_3 = q2_4_3;
	}
	public void setQ2_5_1(String q2_5_1) {
		this.q2_5_1 = q2_5_1;
	}
	public void setQ2_5_2(String[] q2_5_2) {
		this.q2_5_2 = q2_5_2;
	}
	public void setQ2_6(String q2_6) {
		this.q2_6 = q2_6;
	}
	public void setQ3_1(String q3_1) {
		this.q3_1 = q3_1;
	}
	public void setQ3_2(String q3_2) {
		this.q3_2 = q3_2;
	}
	public void setQ3_3(String q3_3) {
		this.q3_3 = q3_3;
	}
	public void setQ3_4(String q3_4) {
		this.q3_4 = q3_4;
	}
	public void setQ3_5(String q3_5) {
		this.q3_5 = q3_5;
	}
	public void setQ3_6(String q3_6) {
		this.q3_6 = q3_6;
	}
	public void setQ4_1_1(String q4_1_1) {
		this.q4_1_1 = q4_1_1;
	}
	public void setQ4_1_2(String q4_1_2) {
		this.q4_1_2 = q4_1_2;
	}
	public void setQ4_1_3(String q4_1_3) {
		this.q4_1_3 = q4_1_3;
	}
	public void setQ4_2(String q4_2) {
		this.q4_2 = q4_2;
	}
	public void setQ4_3(String q4_3) {
		this.q4_3 = q4_3;
	}
	public void setQ5_1(String q5_1) {
		this.q5_1 = q5_1;
	}
	public void setQ5_2(String q5_2) {
		this.q5_2 = q5_2;
	}
	public void setQ6_1(String q6_1) {
		this.q6_1 = q6_1;
	}
	public void setQ6_2_1(String q6_2_1) {
		this.q6_2_1 = q6_2_1;
	}
	public void setQ6_2_2(String q6_2_2) {
		this.q6_2_2 = q6_2_2;
	}
	public void setQ6_2_3(String q6_2_3) {
		this.q6_2_3 = q6_2_3;
	}
	public void setQ6_2_4(String q6_2_4) {
		this.q6_2_4 = q6_2_4;
	}
	public void setQ6_2_5(String q6_2_5) {
		this.q6_2_5 = q6_2_5;
	}
	public void setQ6_3(String[] q6_3) {
		this.q6_3 = q6_3;
	}
	public void setQ7_1(String q7_1) {
		this.q7_1 = q7_1;
	}
	public void setQ8_1(String q8_1) {
		this.q8_1 = q8_1;
	}
	public void setQ8_2(String[] q8_2) {
		this.q8_2 = q8_2;
	}
	public void setQ8_3(String q8_3) {
		this.q8_3 = q8_3;
	}
	public void setQ8_4(String q8_4) {
		this.q8_4 = q8_4;
	}
	public void setQ9_1(String q9_1) {
		this.q9_1 = q9_1;
	}
	public void setQ9_2(String q9_2) {
		this.q9_2 = q9_2;
	}
	public String getQ2_5_3() {
		return q2_5_3;
	}
	public String getQ8_5() {
		return q8_5;
	}
	public void setQ2_5_3(String q2_5_3) {
		this.q2_5_3 = q2_5_3;
	}
	public void setQ8_5(String q8_5) {
		this.q8_5 = q8_5;
	}

}
