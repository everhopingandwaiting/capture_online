package cn.spring.goods.controller;

import cn.spring.goods.form.GoodsForm;
import cn.spring.goods.service.GoodsService;
import cn.spring.goods.util.FormUtil;
import cn.spring.goods.util.SaveToJsonFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller("GoodsController")
@RequestMapping("/")
public class GoodsController {
    public static  String parentPath="index";
    @Autowired
	GoodsService goodsService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model, GoodsForm goodsForm,HttpSession httpSession) {
        String path = httpSession.getServletContext().getRealPath("data");
        model = FormUtil.model(goodsForm, goodsService, model);
        List<GoodsForm> goodsFormList = goodsService.searchGoodsList(goodsForm);
        SaveToJsonFile.save(path,goodsFormList);
        parentPath = "index";


        return "index";
    }

    @RequestMapping(value = "/initGoods", method = RequestMethod.GET)
	public ModelAndView initGoods(Model model, GoodsForm goodsForm) throws UnsupportedEncodingException {
		ModelAndView modelAndView = new ModelAndView();
		if (goodsForm.getType() == null) {
            model = FormUtil.model(goodsForm, goodsService, model);
			modelAndView.setViewName("index");
            parentPath = "index";
        } else {
//			String type=new String(goodsForm.getType().getBytes("iso8859-1"),"utf-8");
			String type = goodsForm.getType().toString();
			System.out.println(type + "&&*&*(^*&%^&%^&$*&^*$^$^&");
			goodsForm.setType(goodsForm.getType());
			model.addAttribute("listGoods", goodsService.searchGoodsList(goodsForm));
			modelAndView.setViewName(type);
            parentPath = type;
        }

		return modelAndView;
	}

	// TODO  merge  openGallery and   openBlog   method  !!  by use   @PathVariable  as:   "/open/{what:blog|gallery}"
	@RequestMapping(value = "/galleryDetail", method = RequestMethod.GET)
	public String openGallery(@RequestParam(value = "goodsId") int id,Model model, GoodsForm goodsForm,HttpServletRequest httpServletRequest) throws UnsupportedEncodingException {

//		String id=new String(httpServletRequest.getParameter("goodsId").toString());
		goodsForm.setId(id);
        List<GoodsForm> goodsForms = goodsService.searchGoodById(goodsForm);
        goodsForm = goodsForms.get(0);
        goodsForm.setView(goodsForm.getView() + 1);
        goodsService.updateGoodsById(goodsForm);
        model.addAttribute("list", goodsForms);
		return "detail";
	}
	@RequestMapping(value = "/blogDetail", method = RequestMethod.GET)
	public String openBlog(@RequestParam(value = "goodsId") int id,Model model, GoodsForm goodsForm,HttpServletRequest httpServletRequest) throws UnsupportedEncodingException {

//		String id=new String(httpServletRequest.getParameter("goodsId").toString());
		goodsForm.setId(id);
        List<GoodsForm> goodsForms = goodsService.searchGoodById(goodsForm);
        goodsForm = goodsForms.get(0);
        goodsForm.setView(goodsForm.getView()+1);
        goodsService.updateGoodsById(goodsForm);
        model.addAttribute("list", goodsForms);
		return "detail";
	}

    @RequestMapping(value = "/GlobalSearch", method = RequestMethod.POST)
    public ModelAndView showGlobalSearchForm(HttpServletRequest httpSession,@RequestParam(value = "autocomplete") String value, Model model, GoodsForm goodsForm) {
        ModelAndView modelAndView = new ModelAndView();
        goodsForm.setName(value);
        modelAndView.setViewName(parentPath);
        if (parentPath.equals("index")) {
            model = FormUtil.model(goodsForm, goodsService, model);
        } else {
            goodsForm.setType(parentPath);

            model.addAttribute("listGoods", goodsService.searchConditionGoodsList(goodsForm));
        }
 /*       switch (parentPath) {
            case "index":
                modelAndView.setViewName("index");
                model = FormUtil.model(goodsForm, goodsService, model);

                break;
            case "blog":
                goodsForm.setType("blog");
                model.addAttribute("listGoods", goodsService.searchConditionGoodsList(goodsForm));
                modelAndView.setViewName("blog");
                break;
            case "gallery":
                modelAndView.setViewName("gallery");
                goodsForm.setType("gallery");
                model.addAttribute("listGoods", goodsService.searchConditionGoodsList(goodsForm));
                break;
        }*/



        return modelAndView;
    }
}
