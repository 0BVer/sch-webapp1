package com.example.webapp1;

import java.util.HashMap;
import java.util.Map;

public class PhoneBook {

    public Map<String, String> book = new HashMap<>();

    String name;

    String phone;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Map<String, String> getBook() {
        return book;
    }

    public Map<String, String> getByKeyBook(String name) {
        if (book.containsKey(name))
            return Map.of(name, book.get(name));
        return Map.of("name", "not found");
    }

    public void setBook(Map<String, String> book) {
        book.putAll(book);
    }
}