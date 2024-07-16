package dao;

public class Main {
	
public static void main(String[] args) throws Exception {
	System.out.println("실행");
	
	MainTourDao mt = new MainTourDao();
	CategoryDao cd = new CategoryDao(); 
	PackageDao pd = new PackageDao();
	ReservationCheckDao rc = new ReservationCheckDao();
	
	
// 메인 페이지	
	//유형1 확인
	//mt.showtype1(2); 
	
	//유형4확인
	//mt.showtype4(202);
	
	//유형5확인
	// mt.showtype5(3);
	
	//유형6확인
	// mt.showtype6(221);
	
	//유형7확인
	// mt.showtype7(203);
	
	//유형8확인
	// mt.showtype8(205);
	
	//유형9확인 
	// mt.showtype9(219);   
	
	//메인페이지 검색기능
	// mt.search_country("베트남", null, null, null);
	
	//카테고리 페이지 출발지 선택
	// cd.choice_departure("인천");
	
// 카테고리 페이지
	// 카테고리 날짜 선택해서 카테고리 나열 
	// cd.choiceDateShowCategroy("24/06/01", "24/06/30");   
	
	
// 패키지 페이지 
	// 패키지 top부분 한줄 정보 
	//pd.packageTopOneLineInfo(1);
	

// 예약내역 확인
	//rc.travelReservationCheck("subin1222");
	
	//rc.hotelReservationCheck("subin1222");
	
	// rc.OverseaFlightReservationCheck("subin1222");
	
	
	
	
	
	
	
	
	
}
 
}
