package com.trip.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.trip.domain.Criteria;
import com.trip.domain.ReplyPageDTO;
import com.trip.domain.ReplyVO;
import com.trip.domain.UserVO;
import com.trip.service.ReplyService;
import com.trip.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/* 작업 	  URL         HTTP전송방식
 * 등록 : /replies/new : POST
 * 조회 : /replies/:rno : GET
 * 삭제 : /replies/:rno : DELETE
 * 수정 : /replies/:rno : PUT or PATCH
 * 페이지 : /replies/pages/:bno/:page : GET
 */

@RestController
@Log4j
@AllArgsConstructor
@RequestMapping("/replies/")
public class ReplyController {
	private ReplyService service;
	private UserService userService;
	
	//클라이언트에서 서버전송  json, 서버에서 클라이언트 String
	//{속성:값, 속성:값} --> @RequestBody
	//{bno:값, reply:값, replyer:값}
	
	@PostMapping(value = "/new", consumes="application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO vo) {
		log.info("ReplyVO : " + vo);
		int insertCount = service.register(vo);
		
		if (insertCount == 1) {
			return new ResponseEntity<>("success", HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@GetMapping(value = "/pages/{bno}/{page}",
			produces = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable("bno") Long bno, 
			@PathVariable("page") int page) {
		log.info("getList.........." + bno + ":" + page);
		Criteria cri = new Criteria(page, 10);
		log.info("cri:" + cri);
		
		ReplyPageDTO pageDTO = service.getListPage(cri, bno);
		
		List<ReplyVO> list = new ArrayList<ReplyVO>();
		for(ReplyVO reply : pageDTO.getList()) {
			reply.setUser(userService.get(reply.getUsernum().intValue()));
			list.add(reply);
		}
		
		pageDTO.setList(list);
		
		return new ResponseEntity<>(pageDTO, HttpStatus.OK);
	}
	
	@DeleteMapping(value = "{rno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("rno") Long rno) {
		if (service.remove(rno) == 1) {
			return new ResponseEntity<>("success", HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@GetMapping(value = "/get/{rno}", produces = {MediaType.APPLICATION_JSON_VALUE,
			 MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<ReplyVO> get(@PathVariable("rno") Long rno) {
		return new ResponseEntity<ReplyVO>(service.get(rno), HttpStatus.OK);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/{rno}", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@PathVariable("rno") Long rno, @RequestBody ReplyVO vo) {
		vo.setRno(rno);
		return service.modify(vo)==1 ? new ResponseEntity<String>("success", HttpStatus.OK) :
									new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/user/{usernum}", produces = {MediaType.APPLICATION_JSON_VALUE,
			 MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<UserVO> getUser(@PathVariable("usernum") int usernum) {
		log.info("------- 유저접근 -------");
		return new ResponseEntity<UserVO>(userService.get(usernum), HttpStatus.OK);
	}
}