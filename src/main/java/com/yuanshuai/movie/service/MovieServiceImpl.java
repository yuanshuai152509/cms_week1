package com.yuanshuai.movie.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yuanshuai.movie.dao.MovieMapper;
import com.yuanshuai.movie.domain.Movie;

import aj.org.objectweb.asm.Type;

@Service
public class MovieServiceImpl implements MovieService{
	@Resource
	private MovieMapper movieMapper;
	@Override
	public List<Movie> MovieListAll(String mname) {
		// TODO Auto-generated method stub
		return movieMapper.MovieListAll(mname);
				
	}
	@Override
	public List<Type> TypeListAll() {
		// TODO Auto-generated method stub
		return movieMapper.TypeListAll();
	}
	@Override
	public void AddMovie(Movie movie) {
		// TODO Auto-generated method stub
		movieMapper.AddMovie(movie);
	}
	@Override
	public Movie getMovie(int mid) {
		// TODO Auto-generated method stub
		return movieMapper.getMovie(mid);
	}
	@Override
	public void updateMovie(Movie movie) {
		// TODO Auto-generated method stub
		movieMapper.updateMovie(movie);
	}
	@Override
	public void deleMovie(String mid) {
		// TODO Auto-generated method stub
		movieMapper.deleMovie(mid);
	}

}
