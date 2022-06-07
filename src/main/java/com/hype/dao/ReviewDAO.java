package com.hype.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.hype.dto.ReviewDTO;

public class ReviewDAO {

   private BasicDataSource bds;

   public ReviewDAO() {
      try {
         Context iCtx = new InitialContext();
         Context envCtx = (Context) iCtx.lookup("java:comp/env");
         bds = (BasicDataSource) envCtx.lookup("jdbc/bds");
      } catch (Exception e) {
         e.printStackTrace();
      }
   }

   public int insertReview(ReviewDTO ReviewDto) throws Exception { // 리뷰 등록
      String sql = "insert into tbl_review values(seq_review.nextval, ?, ?, ?, sysdate, ?)";

      try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

         pstmt.setInt(1, ReviewDto.getSeq_product());
         pstmt.setString(2, ReviewDto.getUser_id());
         pstmt.setString(3, ReviewDto.getReview_content());
         pstmt.setInt(4, ReviewDto.getReview_rate());

         int rs = pstmt.executeUpdate();
         return rs;

      }
   }

   public ArrayList<ReviewDTO> selectBySeq(int seq_product) throws Exception { // 상품번호로 리뷰 출력
      String sql = "select * from tbl_review where seq_product = ?";

      try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

         pstmt.setInt(1, seq_product);

         ResultSet rs = pstmt.executeQuery();

         ArrayList<ReviewDTO> list = new ArrayList<>();
         while (rs.next()) {
            int seq_review = rs.getInt("seq_review");
            String user_id = rs.getString("user_id");
            String review_content = rs.getString("review_content");
            String review_date = rs.getString("review_date");
            int review_rate = rs.getInt("review_rate");
            list.add(new ReviewDTO(seq_review, 0, user_id, review_content, review_date, review_rate));
         }
         return list;
      }
   }

   /*
    * public ArrayList<ReviewDTO> reviewAll(int start, int end) throws Exception {
    * // 전체 출력 String sql =
    * "select * from (select tbl_review.*, row_number() over(order by seq_review desc) as num from tbl_review)"
    * + "where num between ? and ?";
    * 
    * try (Connection con = bds.getConnection(); PreparedStatement pstmt =
    * con.prepareStatement(sql)) {
    * 
    * pstmt.setInt(1, start); pstmt.setInt(2, end);
    * 
    * ResultSet rs = pstmt.executeQuery(); ArrayList<ReviewDTO> list = new
    * ArrayList<>(); while (rs.next()) { int seq_review = rs.getInt("seq_review");
    * int seq_product = rs.getInt("seq_product"); String user_id =
    * rs.getString("user_id"); String review_content =
    * rs.getString("review_content"); String review_date =
    * rs.getString("review_date"); int review_rate = rs.getInt("review_rate");
    * list.add(new ReviewDTO(seq_review, seq_product, user_id, review_content,
    * review_date, review_rate)); } return list; } }
    */

   public int countReview(int seq_review) throws Exception { // 상품에 맞는 리뷰 개수 출력
      String sql = "select count(*) cnt from tbl_review where seq_product = ?";

      try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

         pstmt.setInt(1, seq_review);

         ResultSet rs = pstmt.executeQuery();

         if (rs.next()) {
            int cnt = rs.getInt("cnt");
            return cnt;
         }
         return 0;
      }
   }

   public int sumReview(int seq_review) throws Exception { // 별점 더하기
      String sql = "select sum(review_rate) sum from tbl_review where seq_product = ?";

      try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

         pstmt.setInt(1, seq_review);
         ResultSet rs = pstmt.executeQuery();

         if (rs.next()) {
            int sum = rs.getInt("sum");
            return sum;
         }
         return 0;
      }
   }

}