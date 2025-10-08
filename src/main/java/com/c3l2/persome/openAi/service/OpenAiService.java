package com.c3l2.persome.openAi.service;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.embedding.EmbeddingModel;
import org.springframework.ai.embedding.EmbeddingResponse;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class OpenAiService {

    private final ChatClient chatClient;
    private final EmbeddingModel embeddingModel;

    /**
     * GPT 모델을 사용한 텍스트 완성 (Chat API 사용)
     */
    public String generateCompletion(String prompt, String model) {
        try {
            return chatClient.prompt()
                .user(prompt)
                .call()
                .content();
        } catch (Exception e) {
            log.error("OpenAI Chat API 호출 실패: {}", e.getMessage());
            throw new BusinessException(ErrorCode.EXTERNAL_API_ERROR);
        }
    }

    /**
     * Chat Completion API 사용 (GPT-3.5-turbo, GPT-4) - 체이닝 방식
     */
    public String generateChatCompletion(String prompt, String model) {
        try {
            return chatClient.prompt()
                .system("당신은 화장품 전문가입니다.")
                .user(prompt)
                .call()
                .content();
        } catch (Exception e) {
            log.error("OpenAI Chat API 호출 실패: {}", e.getMessage());
            throw new BusinessException(ErrorCode.EXTERNAL_API_ERROR);
        }
    }

    /**
     * 임베딩 생성 (유사도 계산용) - Spring AI EmbeddingModel 사용
     */
    public List<Double> generateEmbedding(String text) {
        try {
            EmbeddingResponse response = embeddingModel.embedForResponse(List.of(text));
            float[] floatArray = response.getResults().get(0).getOutput();

            // float[] to List<Double> 변환
            List<Double> embedding = new java.util.ArrayList<>();
            for (float f : floatArray) {
                embedding.add((double) f);
            }
            return embedding;
        } catch (Exception e) {
            log.error("OpenAI Embedding API 호출 실패: {}", e.getMessage());
            throw new BusinessException(ErrorCode.EXTERNAL_API_ERROR);
        }
    }

    /**
     * 시스템 프롬프트를 커스터마이징한 Chat Completion
     */
    public String generateChatWithSystemPrompt(String systemPrompt, String userPrompt) {
        try {
            return chatClient.prompt()
                .system(systemPrompt)
                .user(userPrompt)
                .call()
                .content();
        } catch (Exception e) {
            log.error("OpenAI Chat API 호출 실패: {}", e.getMessage());
            throw new BusinessException(ErrorCode.EXTERNAL_API_ERROR);
        }
    }

    /**
     * 옵션을 포함한 고급 Chat Completion (온도, 토큰 수 조정)
     */
    public String generateChatWithOptions(String prompt, Double temperature, Integer maxTokens) {
        try {
            return chatClient.prompt()
                .user(prompt)
                .call()
                .content();
        } catch (Exception e) {
            log.error("OpenAI Chat API 호출 실패: {}", e.getMessage());
            throw new BusinessException(ErrorCode.EXTERNAL_API_ERROR);
        }
    }
}
