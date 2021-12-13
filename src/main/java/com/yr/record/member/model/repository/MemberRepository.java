package com.yr.record.member.model.repository;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.yr.record.member.model.dto.Member;


@Mapper
public interface MemberRepository {

	@Select("select * from member where user_id =#{userId} and password=#{password}")
	Member selectMemberByUserId(Member member);

	@Insert("insert into member(user_id,password,nickName,email,address,user_idx) "
			+ "values(#{userId},#{password},#{nickName},#{email},#{address},sc_user_idx.nextval) ")
	void insertMember(Member member);
	
	@Select("select count(*) from member where user_id = #{userId}")
	public int idCheck(String userId);
	
	@Select("select count(*) from member where nickName = #{nickName}")
	public int nickNameCheck(String nickName);
	
	@Select("select user_id from member where email = #{email}")
	Member searchId(Member member);
	
	@Select("select * from member where user_id = #{userId} and email = #{email}")
	Member searchPw(Member member);
	
	@Update("update member set password=#{password} where user_id=#{userId}")
	void updatePw(Member member);

	@Select("select * from member where user_id= #{userId}")
	Member selectMemberById(String userId);

	@Insert("insert all "
			+ "into member(user_id,password,nickName,email,address,user_idx) "
			+ "values(#{userId},'1234',#{nickName},#{email},#{address},sc_user_idx.nextval) "			
			+ "into KAKAO_LOGIN (kakao_id,user_idx) "
			+ "values(#{userId},sc_user_idx.nextval) "
			+ "SELECT * FROM DUAL")
	void insertKakaoMember(Member member);

	@Select("select * from member where user_idx = ${userIdx}")
	Member selectMemberByIdx(int userIdx);

}
