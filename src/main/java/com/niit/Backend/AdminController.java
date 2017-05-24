
package com.niit.Backend;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Backend.DAO.ProductDAO;
import com.niit.Model.Product;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	ProductDAO pDAO;

	@RequestMapping(value = "/product")
	public ModelAndView adminview() {
		ModelAndView mv = new ModelAndView("adminview");
		mv.addObject("product", new Product());
		mv.addObject("products", pDAO.getAll());
		return mv;
	}

	@RequestMapping(value = "/pro")
	@ResponseBody
	public List<Product> getAllProducts() {

		return pDAO.getAll();

	}

	@RequestMapping(value = "/singlepro/{id}", method = RequestMethod.GET)
	public ModelAndView getoneProduct(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("singlepro");
		mv.addObject("product", pDAO.getProduct(id));
		return mv;
	}

	@RequestMapping(value = "/delete/{id}")
	public String adminDelete(@PathVariable("id") Integer rt) {
		pDAO.delete(rt);
		return "redirect:/admin/product";
	}

	@RequestMapping(value = "/edit/{id}")
	public ModelAndView adminEdit(@PathVariable("id") int rt) {
		ModelAndView mv = new ModelAndView("adminview");
		mv.addObject("product", pDAO.getProduct(rt));
		mv.addObject("products", pDAO.getAll());

		return mv;
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String adminSave(@Valid @ModelAttribute("product") Product product, BindingResult results,
			HttpServletRequest request, Model model) {
		if (results.hasErrors()) {
			model.addAttribute("product", product);
			model.addAttribute("products", pDAO.getAll());
			return "adminview";
		}

		if (product.getId() == 0) {

			pDAO.insert(product);

			// ................................... multi part starts
			// here....................

			// need to have a transient field of type MultipartFile in Product
			// model class
			MultipartFile productImage = product.getFile();

			// only if file exist upload the image
			if (productImage != null && productImage.getSize() > 0) {
				// first get the root directory and then append the directory
				// where
				// you want to store
				String rootPath = request.getSession().getServletContext().getRealPath("/");
				String directoryPath = rootPath + "resources\\images\\product";

				// append the file name
				String filePath = directoryPath + File.separator + product.getId() + ".jpg";

				// ========================================================
				// If directory does not exist create the directory
				if (!Files.exists(Paths.get(directoryPath))) {
					try {
						// create the directories recursively
						Files.createDirectories(Paths.get(directoryPath));
					}

					catch (IOException ex) {
						ex.printStackTrace();
					}
				}
				// =======================================================
				// transfer the file

				try {
					productImage.transferTo(new File(filePath));
				} catch (Exception ex) {
					ex.printStackTrace();
				}

				// ................................... ends
				// here..................................
			}

		} else {
			pDAO.update(product);
		}
		return "redirect:/admin/product";
	}

}
