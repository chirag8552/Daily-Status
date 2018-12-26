package com.proPackage;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;

public class OpenFile {
	private void main() {
		// TODO Auto-generated method stub
		
	}
	
	public void met() {
		// TODO Auto-generated method stub
File file=new File("C:/Users/chirag.gokani/Desktop/eclipse-workspace/ProAction/dd.xlsm");
		
		try{
			Desktop.getDesktop().open(file);
		}catch(IOException e){
			e.printStackTrace();
		}
	}
}
