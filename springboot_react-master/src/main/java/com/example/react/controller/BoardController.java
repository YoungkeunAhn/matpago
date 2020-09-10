package com.example.react.controller;


import com.example.react.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class BoardController {

    private BoardService boardService;

    @Autowired
    public BoardController(BoardService boardService) {
        this.boardService = boardService;
    }

    @GetMapping("/v1/board")
    public List<Map<String, Object>> getBoards() {
        return boardService.getBoards();
    }

    @GetMapping("/v2/board")
    public List<Map<String, Object>> getBoard() {
        return boardService.getBoard();
    }
}