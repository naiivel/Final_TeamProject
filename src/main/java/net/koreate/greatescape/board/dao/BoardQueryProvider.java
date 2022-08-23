package net.koreate.greatescape.board.dao;

import org.apache.ibatis.jdbc.SQL;

import net.koreate.greatescape.utils.SearchCriteria;

public class BoardQueryProvider {

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
		String titleQuery = "faq_title LIKE CONCAT('%','" + cri.getKeyword() + "','%')";
		String contentQuery = "faq_content LIKE CONCAT('%',#{keyword},'%')";
		String categoryQuery = "faq_category LIKE CONCAT('%','" + cri.getKeyword() + "','%')";

		if (cri.getKeyword() != null && !cri.getKeyword().trim().equals("")) {
			sql.OR().WHERE(titleQuery);
			sql.OR().WHERE(contentQuery);
			sql.OR().WHERE(categoryQuery);
		}
		
		/*
		if (cri.getSearchType() != null && !cri.getSearchType().trim().equals("")
				&& !cri.getSearchType().trim().equals("n")) {
			if (cri.getSearchType().contains("faq_title")) {
				sql.OR().WHERE(titleQuery); // 계속 그냥 where로 이어주면 기본은 AND로 연결됨. 처음 들어가는거면 OR있어도 바로 WHERE로 들어감
			}
			if (cri.getSearchType().contains("faq_content")) {
				sql.OR().WHERE(contentQuery);
			}
			if (cri.getSearchType().contains("faq_category")) {
				sql.OR().WHERE(categoryQuery);
			}
		}
		*/
	}

}
