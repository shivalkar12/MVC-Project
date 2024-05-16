package aepl.controller;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import aepl.dao.AeplDao;
import aepl.dto.UserDTO;

@Controller
@MultipartConfig
public class AeplControler {
	@Autowired
	private AeplDao userDao;

	
	@RequestMapping("/login")
	public String signup(@ModelAttribute UserDTO userDTO) {
		userDao.save(userDTO);

		return "login.jsp";
	}

	private boolean isValid(UserDTO userDTO) {
		// Perform validation logic here
		// For example:
		if (userDTO.getName() == null || userDTO.getEmail() == null || userDTO.getMobile() == 0
				|| userDTO.getDob() == null || userDTO.getLocation() == null) {
			return false;
		}
		// You can add more validation rules as needed
		return true;
	}
}
