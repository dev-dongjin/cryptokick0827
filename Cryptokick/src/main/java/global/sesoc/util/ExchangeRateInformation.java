package global.sesoc.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;




public class ExchangeRateInformation {
   
    public double exchange()  {
           

           StringBuffer sbuf = new StringBuffer();
           String cList[] = null;
           double currency=0.0;
           try {

              Calendar c1 = new GregorianCalendar();
            Calendar cal = Calendar.getInstance();
            int hour = cal.get(Calendar.HOUR_OF_DAY);
            
            if(hour<12) {
               
               c1.add(Calendar.DATE,-1);
               
            }
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); // 날짜 포맷 

            String strToday = sdf.format(c1.getTime()); // String으로 저장
                
               // URL 객체 생성
               URL url = new URL("https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=CqxE5GC5ka9DcEsduKkRf44wg228VJB9&searchdate="+strToday+"&data=AP01");
                
               // URLConnection 생성
               URLConnection urlConn = url.openConnection();
                
                
               InputStream is = urlConn.getInputStream();
               InputStreamReader isr = new InputStreamReader(is, "UTF-8");
               BufferedReader br = new BufferedReader(isr);
                
               String str ;
               while((str=br.readLine()) != null){
                    
                   sbuf.append(str + "\r\n") ;
               }
               
                
               // 콘솔에 출력하기
               
              // System.out.println(sbuf.toString()) ;
               cList = sbuf.toString().split("USD");
               cList = cList[1].split("\"deal_bas_r\":\"");
               cList = cList[1].split("\"");
               //System.out.println(cList[0]);
               String temp = cList[0].replaceAll(",", "");
               currency=Double.parseDouble(temp);
               
           } catch (MalformedURLException e) {
               e.printStackTrace();
           } catch (IOException e) {
               e.printStackTrace();
           }
         return currency;
            
    
       }
   
   
}