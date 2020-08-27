package web_study_08.dao;

import java.util.List;

import web_study_08.dto.Member;

public interface MemberDao {
	List<Member> selectMemberByAll();
	
	Member selectMemberByNo(Member member);
	
	int insertMember(Member member);
	
	int deleteMember(Member member);
	
	int updateMember(Member member);

	

	
}
