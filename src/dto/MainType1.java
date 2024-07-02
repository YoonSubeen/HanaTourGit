package dto;

import java.sql.*;


public class MainType1 {
	static void showtype1(int n) throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "project";
		String pw = "pass1222";
	
		//Connect
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,id,pw);
		
		//PreparedStatement
		String sql ="SELECT  mt1.img_url, " + 
				"        mt1.promotion_idx " + 
				"FROM main_type1 mt1 " + 
				"LEFT JOIN main_order mo ON mt1.order_idx = mo.order_idx " + 
				"LEFT JOIN main_classification mc ON mc.classification_idx = mo.classification_idx " + 
				"WHERE mo.classification_idx = ? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,n);
		
		//Result
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String img_url = rs.getString("img_url");
			int promotion_idx = rs.getInt("promotion_idx");
			System.out.println(img_url + " | " + promotion_idx);
		}
		rs.close();
		pstmt.close();
		conn.close(); 
	}
	public static void main(String[] args) throws Exception {
		showtype1(2);
	}
		
}
