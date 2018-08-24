require 'rails_helper'

describe 'User Deletes an Article' do
  describe 'they link from the show page' do
    it 'displays all articles with the deleted entry' do
      article_1 = Article.create(title: "Title_1", body: "Cool Story Bro")
      article_2 = Article.create(title: "Title_2", body: "EVEN Cooler Story Bro")

      visit article_path(article_1)
      click_link

      expect(current_path).to eq(articles_path)
      expect(page).to have_content(article_2.title)
      expect(page).to_not have_content(article_1.title)
    end
  end
end
