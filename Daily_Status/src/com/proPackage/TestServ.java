package com.proPackage;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.ss.usermodel.DataFormatter;

import java.io.*;
import java.util.*;

import javax.servlet.http.HttpServlet;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

public class TestServ extends HttpServlet 
{
	public void test(){

	String   value="", value2="",value3=" ", value4="" , value5="" , value6="", value7="",value8=" ", value9="" , value10="";
   
	String filename="C:/Users/chirag.gokani/Desktop/records.xlsx" ; 
    
    if (filename != null && !filename.equals("")) {
    try{
    
    	FileInputStream fs =new FileInputStream(filename);
   
    	XSSFWorkbook wb = new XSSFWorkbook(fs);
    	 DataFormatter df = new DataFormatter();
    
    	
    
   		 XSSFSheet sheet = wb.getSheetAt(0); 
   		 Iterator<Row> rows     = sheet.rowIterator ();
   		while (rows.hasNext ())
   		{
   		XSSFRow row = (XSSFRow) rows.next ();
   		if(row.getRowNum()>0){
   		       continue; //just skip the rows if row number is 0 or 1
   		      }
   		
   		Iterator<Cell> cells = row.cellIterator ();
   		
   		while (cells.hasNext ())
   		{
   		XSSFCell cell = (XSSFCell) cells.next ();
   	 value = df.formatCellValue(cell);
   		}}}
    catch(Exception e){
    	
    }
}
}}