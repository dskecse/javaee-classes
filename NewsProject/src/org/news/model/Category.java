package org.news.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "N_CATEGORY")
public class Category {
	@Id
	@Column(name = "CATEGORY_ID")
	private long categoryId;
	@Column(name = "CATEGORY_NAME")
	private String categoryName;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	private List<NewsModel> news;

	public Category() {

	}

	public long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public List<NewsModel> getNews() {
		return news;
	}

	public void setNews(List<NewsModel> news) {
		this.news = news;
	}
}
