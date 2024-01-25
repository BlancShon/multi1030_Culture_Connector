package com.multi.mvc.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class WishList {
	
	
	private int cartId;
	private int contentId;
	private String userId;
	private int status;

}
