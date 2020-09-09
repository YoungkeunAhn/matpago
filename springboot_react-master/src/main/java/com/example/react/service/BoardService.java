package com.example.react.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
    List<Map<String, Object>> getBoards();
    List<Map<String, Object>> getBoard();
}