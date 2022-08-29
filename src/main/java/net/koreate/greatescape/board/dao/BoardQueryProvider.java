package net.koreate.greatescape.board.dao;

import org.apache.ibatis.jdbc.SQL;

import net.koreate.greatescape.utils.SearchCriteria;

public class BoardQueryProvider {

	public String getCategoryList(SearchCriteria cri, String category) {
		SQL sql = new SQL();

		sql.SELECT("*");
		sql.FROM("tbl_faq");
		
		sql.WHERE("faq_category=category");
		sql.ORDER_BY("faq_num DESC");
		sql.LIMIT(cri.getPerPageNum()); // limit: 개수
		sql.OFFSET(cri.getStartRow()); // offset: 검색시작인덱스
		String query = sql.toString();
		System.out.println(query);
		return query;
	}
	
	
	
	public String getSearchFAQList(SearchCriteria cri) {
		SQL sql = new SQL();

		sql.SELECT("*");
		sql.FROM("tbl_faq");
		
		getSearchWhere(cri, sql);
		sql.ORDER_BY("faq_num DESC");
		sql.LIMIT(cri.getPerPageNum()); // limit: 개수
		sql.OFFSET(cri.getStartRow()); // offset: 검색시작인덱스
		String query = sql.toString();
		System.out.println(query);
		return query;
	}

	// 검색조건별 개수
	public String searchSelectCount(SearchCriteria cri) {
		SQL sql = new SQL();
		sql.SELECT("count(*)");
		sql.FROM("tbl_faq");
		getSearchWhere(cri, sql);
		String query = sql.toString();
		System.out.println(query);
		return query;
	}

	// 검색조건
	public void getSearchWhere(SearchCriteria cri, SQL sql) {
		String titleQuery = "faq_title LIKE CONCAT('%',#{keyword},'%')";
		String contentQuery = "faq_content LIKE CONCAT('%',#{keyword},'%')";
		
		if (cri.getKeyword() != null && !cri.getKeyword().trim().equals("")) {
			sql.OR().WHERE(titleQuery);
			sql.OR().WHERE(contentQuery);
		}
		
	}

	//공지리스트
	public String getNoticeList(SearchCriteria cri) {
		SQL sql = new SQL();

		sql.SELECT("*");
		sql.FROM("tbl_notice");
		sql.ORDER_BY("notice_num DESC");
		sql.LIMIT(cri.getPerPageNum()); // limit: 개수
		sql.OFFSET(cri.getStartRow()); // offset: 검색시작인덱스
		String query = sql.toString();
		System.out.println(query);
		return query;
	}
	
	public String getNoticeCount(SearchCriteria cri) {
		SQL sql = new SQL();
		sql.SELECT("count(*)");
		sql.FROM("tbl_notice");
		getSearchWhere(cri, sql);
		String query = sql.toString();
		System.out.println(query);
		return query;
	}
	
}
