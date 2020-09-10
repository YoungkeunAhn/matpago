package com.example.react.service;


import com.example.react.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService {

    private BoardRepository boardRepository;

    @Autowired
    public BoardServiceImpl(BoardRepository boardRepository) {
        this.boardRepository = boardRepository;
    }

    public int id = 2;

    @Override
    public List<Map<String, Object>> getBoards() {
        return boardRepository.getBoards();
    }

    @Override
    public List<Map<String, Object>> getBoard() {
        return boardRepository.getBoard(id);
    }
}