package ru.job4j.forum.service;

import org.springframework.stereotype.Service;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.repository.PostRepository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Service
public class PostService {
    private final PostRepository postRep;

    public PostService(PostRepository postRep) {
        this.postRep = postRep;
    }

    public Collection<Post> getAll() {
        List<Post> rsl = new ArrayList<>();
        postRep.findAll().forEach(rsl::add);
        return rsl;
    }

    public void create(Post post) {
        post.setCreated(new Date(System.currentTimeMillis()));
        postRep.save(post);

    }

    public Post findPostById(int id) {
        return postRep.findById(id).orElse(null);
    }
}
