package org.news.controller;

import org.news.model.NewsModel;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Service
public class NewsValidator implements Validator {

	@Override
	public boolean supports(Class<?> klass) {
		return NewsModel.class.isAssignableFrom(klass);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(
			errors, "title", "required.news.title"
		);
		ValidationUtils.rejectIfEmptyOrWhitespace(
			errors, "brief", "required.news.brief"
		);
		ValidationUtils.rejectIfEmptyOrWhitespace(
			errors, "content", "required.news.content"
		);
	}
}
