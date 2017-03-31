package org.framework.freemarker.beans;

public class Animal implements Cloneable{

	private String name;
	private Integer age;
	public Animal() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Animal(String name, Integer age) {
		super();
		this.name = name;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	
	@Override
	public Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}
}
