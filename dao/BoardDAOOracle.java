package com.my.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.my.exception.AddException;
import com.my.exception.FindException;
import com.my.exception.ModifyException;
import com.my.exception.RemoveException;
import com.my.vo.Board;
import com.my.vo.BoardComment;
import com.my.vo.Report;

@Repository
@Qualifier(value = "oracle")
public class BoardDAOOracle implements BoardDAO {
	@Autowired
    private DataSource ds;

    @Autowired
    private SqlSessionFactory sqlSessionFactory;
   
	public List<Board> selectBoardList() throws FindException {
		 SqlSession session = null;
	      try {
	         session = sqlSessionFactory.openSession();
	         List<Board> list = session.selectList("mybatis.BoardMapper.selectAllBoard");
	         if (list.size() == 0) {
	            throw new FindException("게시글이 없습니다.");
	         }

	         return list;
	      } catch (Exception e) {
	         throw new FindException(e.getMessage());
	      } finally {
	         if (session != null)
	            session.close();
	      }
	}

	public List<Board> selectBoardByWord(String keyword) throws FindException {
		SqlSession session = null;
		HashMap<String, String> map = new HashMap<>();
		map.put("o", "board_no DESC");
		try {
			session =sqlSessionFactory.openSession();
			List<Board> list = session.selectList("mybatis.BoardMapper.selectAllBoard", map);
			if(list.size() == 0) {
				throw new FindException("게시글이 없습니다");
			}
			return list;
		} catch(Exception e) {
			throw new FindException(e.getMessage());
		}
	}
	
	@Override
	public List<Board> selectBoardList(String searchopt, String keyword, int currentPage, int cnt_per_page) throws FindException {
		 SqlSession session = null;
	      try {
	         session = sqlSessionFactory.openSession();
	         Map<String, Object> map = new HashMap<>();
	         map.put("keyword", keyword);
	         map.put("searchopt", searchopt);
	         map.put("currentPage", currentPage);
	         map.put("cnt_per_page", cnt_per_page);	         
	         List<Board> list = session.selectList("mybatis.BoardMapper.selectAllBoard", map);
	         if (list.size() == 0) {
	            throw new FindException("게시글이 없습니다.");
	         }
	         return list;
	      } catch (Exception e) {
	         throw new FindException(e.getMessage());
	      } finally {
	         if (session != null)
	            session.close();
	      }
	}

	public int selectCount(String searchopt, String keyword) throws FindException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Map<String, Object> map = new HashMap<>();
	         map.put("keyword", keyword);
	         map.put("searchopt", searchopt);
			int count = session.selectOne("mybatis.BoardMapper.selectCount", map);
			if(count == 0) {
				throw new FindException("해당 게시물이 없습니다");
			}
			return count;
		}catch(Exception e) {
			throw new FindException(e.getMessage());
		}finally {
			if(session != null) session.close();
		}
	}

	public void updateBoardCnt(int board_no) throws ModifyException {
		SqlSession session = null;
	      try {
	         session = sqlSessionFactory.openSession();
	         int rowcnt = session.update("mybatis.BoardMapper.updateBoardCnt", board_no);
	         if (rowcnt == 0) {
	            throw new ModifyException("게시글이없습니다.");
	         }
	      } catch (Exception e) {
	         throw new ModifyException(e.getMessage());
	      } finally {
	         if (session != null)
	            session.close();
	      }

	}

	public Board selectBoardDetail(int board_no) throws FindException {
		SqlSession session = null;
	      try {
	         session = sqlSessionFactory.openSession();
	         Board b = session.selectOne("mybatis.BoardMapper.selectByBoard_no", board_no);
	         if (b == null) {
	            throw new FindException("게시글이 없습니다");
	         }
	         return b;
	      } catch (Exception e) {
	         throw new FindException(e.getMessage());
	      } finally {
	         if (session != null)
	            session.close();
	      }
	}

	public List<BoardComment> selectBoardComment(int board_no) throws FindException {
		SqlSession session = null;
	      try {
	         session = sqlSessionFactory.openSession();
	         List<BoardComment> list = session.selectList("mybatis.BoardMapper.selectCommentByBoard_no", board_no);
	         if (list.size() == 0) {
	            throw new FindException("댓글이 없습니다.");
	         }
	         return list;
	      } catch (Exception e) {
	         throw new FindException(e.getMessage());
	      } finally {
	         if (session != null)
	            session.close();
	      }
	      
	}

	public void insertComment(BoardComment boardcomment) throws AddException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Map<String,Object> map = new HashMap<String, Object>();
            map.put("board_no",boardcomment.getBoard().getBoard_no());
            map.put("boardcmt_detail",boardcomment.getBoardcmt_detail());
            map.put("member_id",boardcomment.getMember().getMember_id());            
			session.insert("mybatis.BoardMapper.insertBoardComment", boardcomment);
			
		} catch(Exception e) {
			throw new AddException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}

	}

	public void insertBoard(Board board) throws AddException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("board_title", board.getBoard_title());
			map.put("board_detail", board.getBoard_detail());
			map.put("member_id", board.getMember().getMember_id());
			session.insert("mybatis.BoardMapper.insertBoard", board);			
		} catch(Exception e) {
			throw new AddException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}

	}

	public void updateBoard(Board board) throws ModifyException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("board_title", board.getBoard_title());
			map.put("board_detail", board.getBoard_detail());
			map.put("board_no", board.getBoard_no());
			session.insert("mybatis.BoardMapper.updateBoard", board);			
		} catch(Exception e) {
			throw new ModifyException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}

	}

	public void deleteBoard(int board_no) throws RemoveException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			int rowcnt = session.delete("mybatis.BoardMapper.deleteBoard", board_no);
			if(rowcnt ==0) {
				throw new RemoveException("해당 게시물이 존재하지 않습니다");
			}
			session.commit();
		} catch(Exception e) {
			throw new RemoveException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}

	}

	@Override
	public void insertReport(Report report) throws AddException {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Map<String,Object> map = new HashMap<String, Object>();
            map.put("report_title",report.getReport_title());
            map.put("report_detail",report.getReport_detail());
            map.put("member_id",report.getMember().getMember_id());
            map.put("board_no", report.getBoard().getBoard_no());
			session.insert("mybatis.BoardMapper.insertReport", report);			
		} catch(Exception e) {
			throw new AddException(e.getMessage());
		} finally {
			if(session != null) session.close();
		}

		
	}
	
	public void deleteBoardList(Board board) throws RemoveException {
		// TODO Auto-generated method stub

	}

}
