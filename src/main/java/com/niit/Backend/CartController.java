package com.niit.Backend;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.Backend.DAO.UserDAO;
import com.niit.Model.User;

@Controller
@RequestMapping("/customer/cart")

public class CartController {

	@Autowired
	private UserDAO user;

	/*
	 * @RequestMapping public String getCart(Principal principal, Model model){
	 * User customer = user.getCustomerByUsername(principal.getName());
	 * model.addAttribute("customer", customer); model.addAttribute("cartId",
	 * customer.getCart().getCartId()); return "cart"; }
	 */

	/*@RequestMapping
	public String getCart(@AuthenticationPrincipal User activeUser) {
		User customer = user.getCustomerByUsername(activeUser.getName());
		int cartId = customer.getCart().getCartId();

		return "redirect:/customer/cart/" + cartId;
	}
*/
	@RequestMapping("/{cartId}")
	public String getCartRedirect(@PathVariable(value = "cartId") int cartId, Model model) {
		model.addAttribute("cartId", cartId);

		return "cart";
	}

} // The End of Class;

// @RequestMapping("/{cartId}")
// public String getCartRedirect(@PathVariable (value = "cartId") int cartId,
// Model model){
// /*model.addAttribute("cartId", cartId);*/
//
// return "cart";
// }
