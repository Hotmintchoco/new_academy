package com.trip.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;
import com.trip.domain.City;
import com.trip.domain.Criteria;
import com.trip.domain.DesDataDTO;
import com.trip.domain.PageDTO;
import com.trip.domain.UserVO;
import com.trip.mapper.DesDataMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/destination/*")
public class DestinationController {
	private DesDataMapper mapper;
	
	@GetMapping("list.do")
	public String list(UserVO vo, Criteria cri, Model model, String destinationAddress) {
		int total = mapper.getTotal(cri);
		log.info("여행지 : " + destinationAddress);
		List<DesDataDTO> list = mapper.getListWithPagging(cri);	//肄붿뒪 由ъ뒪�듃瑜� list�뿉 �떞�뒗�떎.
		
		City cities = new City();
		cities.setAddress(destinationAddress);
		
		if (destinationAddress != null) {
			switch (destinationAddress) {
			case "경기":
				cities.setCity("인천");
				list = mapper.getAddressListggd(destinationAddress);
				break;
			case "충청북":
				cities.setCity("세종");
				list = mapper.getAddressListcb(destinationAddress);
				break;
			case "충청남":
				list = mapper.getAddressListcn(destinationAddress);
				break;
			case "경상북":
				list = mapper.getAddressListgb(destinationAddress);
				break;
			case "경상남":
				list = mapper.getAddressListgn(destinationAddress);
				break;
			case "전라남":
				list = mapper.getAddressListgn(destinationAddress);
				break;
			default:
				list = mapper.getAddressList(cities);
			}
		}
		model.addAttribute("list", list);
		model.addAttribute("pageMaker",new PageDTO(cri, total));
		log.info("total : " + total + ", " + "Admin : " + vo.getAdmin());
		return "destination/destination";
	}

	@GetMapping("/register.do")
	public String register() {
		return "destination/destinationInsert";
	}
	
	@PostMapping("/register.do")
	public String register(DesDataDTO dto, RedirectAttributes rttr) {
		log.info("register : " + dto);
		mapper.register(dto);
		rttr.addFlashAttribute("result", dto.getDestinationNum());
		
		return "redirect:/destination/list.do";
	}

	@GetMapping({"/get.do"})
	public String get(Long num, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("-----------------get-----------------");
		model.addAttribute("destination", mapper.read(num));
		return "destination/destinationGet";
	}
	@GetMapping({"/update.do"})
	public String update(Long destinationNum, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("-----------------modify-----------------");
		model.addAttribute("destination", mapper.read(destinationNum));
		return "destination/destinationModify";
	}
	
	@PostMapping({"/update.do"})
	public String modify(DesDataDTO dto, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("update : " + dto);
		if( mapper.update(dto) == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/destination/list.do";
	}
	
	@GetMapping("/test.do")
	public void test() {
		log.info("test로 옮김");
		
	}
	
	@PostMapping("/delete.do")
	public String delete(Long destinationNum, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("delete---------" + destinationNum);
		if(mapper.delete(destinationNum)==1) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/destination/list.do";
	}
	
	
	@RequestMapping(value = "/summernoteImage.do",produces = "application/json; charset=utf-8")
	   @ResponseBody
	   public String uploadsummernoteimagefile(@RequestParam("file")MultipartFile multipartFile,HttpServletRequest requset) {
	      JsonObject jsonobject = new JsonObject();
	      String contextroot= new HttpServletRequestWrapper(requset).getRealPath("/");
	      String fileroot = contextroot+"resources/upload/";
	      String originalfilename = multipartFile.getOriginalFilename();
	      String extension = originalfilename.substring(originalfilename.lastIndexOf("."));
	      String savedfilename = UUID.randomUUID()+extension;
	      File targetfile =new File(fileroot+savedfilename);
	      try {
	         InputStream fileStream = multipartFile.getInputStream();
	         FileUtils.copyInputStreamToFile(fileStream, targetfile);
	         jsonobject.addProperty("url", "/resources/upload/"+savedfilename);
	         jsonobject.addProperty("responseCode", "success");
	         
	         
	      }catch (Exception e) {
	         FileUtils.deleteQuietly(targetfile);
	         jsonobject.addProperty("responseCode", "error");
	         e.printStackTrace();
	      }
	      String a= jsonobject.toString();
	      return a;
	   }
}