package dao;

import java.util.ArrayList;

import dto.BoardVO;
import dto.Product;

public class BoardDAO {
	
	private ArrayList<BoardVO> boardList = new ArrayList<BoardVO>();
	
	private static BoardDAO instance = null;
	
	public static BoardDAO getInstance() {
		if(instance == null) instance = new BoardDAO();
		
		return instance;
		
	}
	
	public BoardDAO() {
		BoardVO vo = new BoardVO();
		vo.setBo_id("오징이");
		vo.setBo_writer("오지형");
		vo.setBo_content("하기싫타");
		vo.setBo_date("2022/10/11");
		vo.setBo_hit("0");
		vo.setBo_title("hello world");
		
		boardList.add(vo);
	}
	
	public ArrayList<BoardVO> getAllBoard(){
		return boardList;
	}

	/*
	 * public BoardVO getBoard(String id) {
	 * 
	 * BoardVO getbyid = null;
	 * 
	 * for(int i = 0; i < boardList.size(); i++) { BoardVO board = boardList.get(i);
	 * if(board != null && board.getBo_id() != null && board.getBo_id().equals(id))
	 * { getbyid = board; } }
	 * 
	 * return getbyid;
	 * 
	 * 
	 * 
	 * }
	 */
	public void insertBoard(BoardVO vo) {
		boardList.add(vo);
	}
	
	
}
