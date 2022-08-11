package net.koreate.greatescape.board.vo;

import lombok.Data;

@Data
public class QNABoardVO {

	private int qna_num;
	private int member_num;
	private String qna_title;
	private String qna_question;
	private int master_num;
	private String qna_answer;
}
