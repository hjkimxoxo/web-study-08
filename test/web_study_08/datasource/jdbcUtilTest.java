package web_study_08.datasource;

import java.sql.Connection;

import org.junit.Assert;
import org.junit.Test;

public class jdbcUtilTest {

	@Test
	public void testGetConnection() {
		System.out.println("TestGetConnection");
		Connection con = JdbcUtil.getConnection();
		Assert.assertNotNull(con);
		
	}

}
