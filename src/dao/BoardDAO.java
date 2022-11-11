package dao;

import java.util.ArrayList;

import dto.BoardVO;


public class BoardDAO {
	
	private ArrayList<BoardVO> boardList = new ArrayList<BoardVO>();
	
	private static BoardDAO instance = null;
	
	public static BoardDAO getInstance() {
		if(instance == null) instance = new BoardDAO();
		
		return instance;
		
	}
	public static int increaseId = 0;
	
	public BoardDAO() {
		BoardVO vo = new BoardVO();
		vo.setBo_id("0");
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

	public void insertBoard(BoardVO vo) {
		boardList.add(vo);
	}

	public String increasedId() {
		++increaseId;
		return String.valueOf(increaseId);
	}
	
	public BoardVO getvoById(String id) {
		BoardVO vo = new BoardVO();
		for(int i = 0; i<boardList.size(); i++) {
			BoardVO fvo = boardList.get(i);
			if(fvo !=null && fvo.getBo_id()!= null
				&&fvo.getBo_id().equals(id)) {
				vo = fvo;
			}
		}
		
		return vo;
		
	}
	
	public void deleteBoard(String id) {
		
		for(int i = 0; i<boardList.size(); i++) {
			BoardVO fvo = boardList.get(i);
			if(fvo !=null && fvo.getBo_id()!= null
				&&fvo.getBo_id().equals(id)) {
				boardList.remove(i);
				break;
			}
		}
		
	}
	
	public void updateBoard(String bo_id, String bo_title, String bo_writer, String bo_content) {
		
		for(int i = 0; i<boardList.size(); i++) {
				BoardVO fvo = boardList.get(i);
			if(fvo.getBo_id().equals(bo_id)) {
				boardList.get(i).setBo_title(bo_title);
				boardList.get(i).setBo_writer(bo_writer);
				boardList.get(i).setBo_content(bo_content);
				
			}
			
		}
		
	}
	
}
