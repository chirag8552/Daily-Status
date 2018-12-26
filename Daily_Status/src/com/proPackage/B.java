package com.proPackage;

import java.io.IOException;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Cell;

public class B {
	static String filename;
	static String ImgPath;
	static int c = 0,page=0;
	int i = 0;

	public static void main(String[] args) {
		int x=0,y=0;
		B abc = new B();
		abc.gethead();
		abc.getbody(x,y);
	}

	public void getfilepath(String filepath) {

		filename = filepath+".xlsx";
		
	}

	public ArrayList gethead() {
		ArrayList val = new ArrayList();

		if (filename != null && !filename.equals("")) {
			try {
				FileInputStream fs = new FileInputStream(filename);
				XSSFWorkbook wb = new XSSFWorkbook(fs);
				DataFormatter df = new DataFormatter();
				XSSFSheet sheet = wb.getSheetAt(0);
				Iterator<Row> rows = sheet.rowIterator();

				while (rows.hasNext()) {
					XSSFRow row = (XSSFRow) rows.next();
					if (row.getRowNum() > 0) {
						int s = row.getRowNum();
						continue; // just skip the rows if row number is 0 or 1
					}
					Iterator<Cell> cells = row.cellIterator();
					while (cells.hasNext()) {
						XSSFCell cell = (XSSFCell) cells.next();
						val.add(df.formatCellValue(cell));
						c++;			
					}
				}
			} catch (Exception e) {
				System.out.println(e);
			}
		} else {
			System.out.println("no file found");
		}
		return val;
	}

	public ArrayList getbody(int start,int total) {
		 ArrayList val1 = new ArrayList();
		 DataFormatter df = new DataFormatter();
			int k=c,z=start,count=0,l,m;
			float x=0;
			String s=" ";
			if (filename != null && !filename.equals("")) {
				try {
					FileInputStream fs = new FileInputStream(filename);
					XSSFWorkbook wb = new XSSFWorkbook(fs);
					
					XSSFSheet sheet = wb.getSheetAt(0);
					Iterator<Row> rows = sheet.rowIterator();
					count=sheet.getLastRowNum();
					while (z<(start+total)) {
						XSSFRow row = (XSSFRow) sheet.getRow(z);
						if (row.getRowNum() == 0) {
							continue; // just skip the rows if row number is 0 or 1
						}
						z++;
						int j=k,i=0;
						while (j>0) {
							XSSFCell cell = (XSSFCell) row.getCell(i);
							if((df.formatCellValue(cell))!=null){
								val1.add(df.formatCellValue(cell));
								
							}
							else{
								
								val1.add(null);
							}
							j--;i++;
						}
						
					}
				} catch (Exception e) {
					System.out.println(e);
				}
			} else {
				System.out.println("no file found");
			}
			c=0;
			x=(float)count/(float)total;
			x=x*10;
			m=(int) (x%10);
			x=(x-m)/10;
			if(m>0)
			{
				l=(int) (x+1);
			}
			else
			{
				l=(int) x;
			}
			page=l;
//			System.out.println(count);
//			System.out.println(x);
//			System.out.println(l);
			return val1;
	    }
	 
	

	public int getcount() {
		return page;
	}
}
