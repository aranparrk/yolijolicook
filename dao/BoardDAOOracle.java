package com.my.dao;

import java.util.List;

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

@Repository
@Qualifier(value = "oracle")
public class BoardDAOOracle implements BoardDAO {
	@Autowired
   private DataSource ds;

   @Autowired
   private SqlSessionFactory sqlSessionFactory;
	public List<Board> selectBoardList() throws FindException {
		 SqlSession session=null;
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

	public List<Board> selectBoardByWord(String word) throws FindException {
		
		return null;
	}

	public List<Board> selectBoardList(int currentPage, int cnt_per_page) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectCount() throws FindException {
		// TODO Auto-generated method stub
		return 0;
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

	public List<BoardComment> selectBoardComment(String board_no) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	public void InsertComment(BoardComment boardcomment) throws AddException {
		// TODO Auto-generated method stub

	}

	public void insertBoard(Board board) throws AddException {
		// TODO Auto-generated method stub

	}

	public void updateBoard(Board board) throws ModifyException {
		// TODO Auto-generated method stub

	}

	public void deleteBoard(Board board) throws RemoveException {
		// TODO Auto-generated method stub

	}

	public void deleteBoardList(Board board) throws RemoveException {
		// TODO Auto-generated method stub

	}

}
