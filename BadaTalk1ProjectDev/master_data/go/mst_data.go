package main

import (
	"encoding/json"
	"io/ioutil"
)

type mstBandatalk1TrainQuiz struct {
	Bandatalk1TrainQuizMid int64 `json:"bandatalk1_train_quiz_mid"`
	Version int64 `json:"version"`
	TrainQuizSets int64 `json:"train_quiz_sets"`
	SoundBG string `json:"sound_BG"`
	TrainQuizKeyword []string `json:"train_quiz_keyword"`
	TrainQuizImg []string `json:"train_quiz_img"`
	SoundAllert string `json:"sound_allert"`
	SoundCorrect string `json:"sound_correct"`
	SoundWrong string `json:"sound_wrong"`
	TrainQuizKeywordAudio []string `json:"train_quiz_keyword_audio"`
	SoundEffect []string `json:"sound_effect"`
	IntroSentence string `json:"intro_sentence"`
	IntroSentenceAudio string `json:"intro_sentence_audio"`
	OutroSentence []string `json:"outro_sentence"`
	OutroSentenceAudio []string `json:"outro_sentence_audio"`
}

type mstError struct {
	ErrorMid int64 `json:"error_mid"`
	Version int64 `json:"version"`
	EnumStr string `json:"enum_str"`
}

type mstMessage struct {
	MessageMid int64 `json:"message_mid"`
	Version int64 `json:"version"`
	EnumStr string `json:"enum_str"`
}

type mstRhymeCardMemory struct {
	RhymeCardMemoryMid int64 `json:"rhyme_card_memory_mid"`
	Version int64 `json:"version"`
	CardMemorySets int64 `json:"card_memory_sets"`
	SoundBG string `json:"sound_BG"`
	CardMemoryKeyword []string `json:"card_memory_keyword"`
	CardMemoryImg []string `json:"card_memory_img"`
	SoundAllert string `json:"sound_allert"`
	SoundCorrect string `json:"sound_correct"`
	SoundWrong string `json:"sound_wrong"`
	CardMemoryKeywordAudio []string `json:"card_memory_keyword_audio"`
	SoundEffect []string `json:"sound_effect"`
	IntroSentence string `json:"intro_sentence"`
	IntroSentenceAudio string `json:"intro_sentence_audio"`
	OutroSentence []string `json:"outro_sentence"`
	OutroSentenceAudio []string `json:"outro_sentence_audio"`
}

type mstUIText struct {
	UITextMid string `json:"ui_text_mid"`
	Version int64 `json:"version"`
	KoKr string `json:"ko_kr"`
	EnUs string `json:"en_us"`
	FrFr string `json:"fr_fr"`
	EsEs string `json:"es_es"`
	ZhCn string `json:"zh_cn"`
}

type mst struct {
	Bandatalk1TrainQuiz map[string]mstBandatalk1TrainQuiz `json:"bandatalk1_train_quiz"`
	Error map[string]mstError `json:"error"`
	Message map[string]mstMessage `json:"message"`
	RhymeCardMemory map[string]mstRhymeCardMemory `json:"rhyme_card_memory"`
	UIText map[string]mstUIText `json:"ui_text"`
}

func (m *mst) parseFrom(file string) {
	bytes, err := ioutil.ReadFile(file)
	if err != nil {
		panic(err)
	}

	err = json.Unmarshal(bytes, m)
	if err != nil {
		panic(err)
	}
}
