package ru.job4j.forum.repository;

import org.springframework.stereotype.Repository;
import ru.job4j.forum.model.Post;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Repository
public class PostMem {
    private final Map<Integer, Post> posts = new HashMap<>();

    public PostMem() {
        posts.put(1, Post.of("Продаю машину ладу 01.", "в отличном состоянии", new Date(System.currentTimeMillis())));
    }

    public Collection<Post> findAllPosts() {
        return posts.values();
    }

    public Post findPostById(int id) {
        return posts.get(id);
    }

    public void create(Post post) {
        post.setCreated(new Date(System.currentTimeMillis()));
        posts.put(post.getId(), post);
    }
}