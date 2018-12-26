package com.proPackage;

import java.io.File;

public class Img {
	static String filename;
	public void getfilepath(String filepath) {

		filename = filepath+".PNG";
	}
public static void main(String[] args) {
	
}
public String sendpath(){
	
	return filename;
}
}
