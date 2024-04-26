package com.green.evalBbs2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.green.evalBbs2.dto.EvalBbsDto;


@Mapper
public interface IEvalBbsDao {
	public List<EvalBbsDto> listDao();
}
