package com.dolbommon.dbmon.Teacher;

import org.springframework.web.multipart.MultipartFile;

public class TeacherVO {
	private String userid;
	private String pic = "테스트";
	private String care_type;
	private String[] type_list;
	private String child_age;
	private String[] age_list;
	private String activity_type;
	private String[] activity_list;
	private int desired_wage;
	private String intro;
	private String area1;
	private String area2;
	private String area3;
	private String cctv;
	private String certi_check;
	private MultipartFile filename;
	
	public MultipartFile getFilename() {
		return filename;
	}
	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getCare_type() {
		return care_type;
	}
	public void setCare_type(String care_type) {
		this.care_type = care_type;
	}
	public String[] getType_list() {
		return type_list;
	}
	public void setType_list(String[] type_list) {
		this.type_list = type_list;
	}
	public String getChild_age() {
		return child_age;
	}
	public void setChild_age(String child_age) {
		this.child_age = child_age;
	}
	public String[] getAge_list() {
		return age_list;
	}
	public void setAge_list(String[] age_list) {
		this.age_list = age_list;
	}
	public String getActivity_type() {
		return activity_type;
	}
	public void setActivity_type(String activity_type) {
		this.activity_type = activity_type;
	}
	public String[] getActivity_list() {
		return activity_list;
	}
	public void setActivity_list(String[] activity_list) {
		this.activity_list = activity_list;
	}
	public int getDesired_wage() {
		return desired_wage;
	}
	public void setDesired_wage(int desired_wage) {
		this.desired_wage = desired_wage;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getArea1() {
		return area1;
	}
	public void setArea1(String area1) {
		this.area1 = area1;
	}
	public String getArea2() {
		return area2;
	}
	public void setArea2(String area2) {
		this.area2 = area2;
	}
	public String getArea3() {
		return area3;
	}
	public void setArea3(String area3) {
		this.area3 = area3;
	}
	public String getCctv() {
		return cctv;
	}
	public void setCctv(String cctv) {
		this.cctv = cctv;
	}
	public String getCerti_check() {
		return certi_check;
	}
	public void setCerti_check(String certi_check) {
		this.certi_check = certi_check;
	}
	
	
	
	
	
}
