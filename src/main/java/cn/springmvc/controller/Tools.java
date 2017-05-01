package cn.springmvc.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Tools {
	public void Input2Output(InputStream input,OutputStream output) throws IOException{
		int len=0;
		byte buffer[] = new byte[512];
		try{
			while((len=input.read(buffer))>0){
				output.write(buffer, 0, len);
			}
		}catch(IOException e){
			
		}finally{
	//		if(input!=null)input.close();   ////在这里关并不合适
	//		if(output!=null)output.close();
		}
		
	}
	
	
	

}
