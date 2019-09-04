package com.yuanshuai.movie.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuanshuai.movie.domain.Movie;
import com.yuanshuai.movie.service.MovieService;
import com.yuanshuai.movie.util.Pages;

import aj.org.objectweb.asm.Type;

@Controller
public class MovieController {
	@Resource
	private MovieService movieService;
	//列表
	@RequestMapping("list")
	public  String MovieListAll(Model model,@RequestParam(defaultValue = "")String mname,
			@RequestParam(defaultValue = "1")int pageNum
			) {
		PageHelper.startPage(pageNum, 3);
		List<Movie> listmovie = movieService.MovieListAll(mname);
		PageInfo info = new PageInfo(listmovie);
		Pages.page(pageNum, info, model, " ");
		model.addAttribute("listmovie",listmovie);
		return "list";
	}
	@RequestMapping("toAdd")
	public String toAdd(Model model) {
		List<Type> typeListAll = movieService.TypeListAll();
		model.addAttribute("typeListAll",typeListAll);
		
		return "add";
	}
	@RequestMapping("add")
	@ResponseBody
	public boolean addMovie(Movie movie) {
		try {
			movieService.AddMovie(movie);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.fillInStackTrace();
			return false;
		}
	}
	@RequestMapping("toUpdate")
	public String toUpdate(int mid,Model model) {
		Movie movie = movieService.getMovie(mid);
		List<Type> typeListAll = movieService.TypeListAll();
		model.addAttribute("movie",movie);
		model.addAttribute("typeListAll",typeListAll);
	
		return "update";
	}
	@RequestMapping("update")
	@ResponseBody
	public boolean updateMovie(Movie movie) {
		try {
			movieService.updateMovie(movie);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.fillInStackTrace();
			return false;
		}
	}
	
	@RequestMapping("deletes")
	@ResponseBody
	public boolean deleMovie(String mid) {
		try {
			movieService.deleMovie(mid);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.fillInStackTrace();
			return false;
		}
	}
	
	
	

}
