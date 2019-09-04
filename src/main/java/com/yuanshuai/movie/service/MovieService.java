package com.yuanshuai.movie.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yuanshuai.movie.domain.Movie;

import aj.org.objectweb.asm.Type;

public interface MovieService {
	//列表
		List<Movie> MovieListAll(@Param("mname")String mname);
		//回显类别
		List<Type> TypeListAll();
		//添加
		void AddMovie(Movie movie);
		//回显电影
		Movie getMovie(int mid);
		void updateMovie(Movie movie);
		//删除
		void deleMovie(String mid);
}
