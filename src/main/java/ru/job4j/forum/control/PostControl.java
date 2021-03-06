package ru.job4j.forum.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.service.PostService;

@Controller
public class PostControl {

    private PostService postService;

    private PostControl(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/create")
    public String create() {
        return "/create";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Post post) {
        postService.create(post);
        return "redirect:/";
    }

    @GetMapping("/edit")
    public String edit(@RequestParam("id") int id, Model model) {
        model.addAttribute("post", postService.findPostById(id));
        return "/edit";
    }

    @GetMapping("/post")
    public String post(@RequestParam("id") int id, Model model) {
        model.addAttribute("post", postService.findPostById(id));
        return "/post";
    }
}
