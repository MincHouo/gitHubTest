package jason.is.happy.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jason.is.happy.mapper.TestMapper;
import jason.is.happy.vo.TestVO;

@Repository
public class testDAO {

	@Autowired
	SqlSession sqls;
	
	public ArrayList<TestVO> read() {
		ArrayList<TestVO> list = null;
		
		try {
			TestMapper mapper = sqls.getMapper(TestMapper.class);
			list = mapper.read();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
