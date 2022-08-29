package net.koreate.greatescape.board.vo;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeBoardVO {

	private int notice_num;
    private int master_num;
    private String notice_category;
    private String notice_title;
    private String notice_content;
    private String notice_writer;
    private Date notice_regdate;
}
