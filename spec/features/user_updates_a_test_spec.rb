require 'rails_helper'

describe "user updates an article" do
  describe "they update the title and body" do
    it "updates an article" do
      article = Article.create(title: "Title_1", body: "Cool Story Bro")

      visit article_path(article)

      click_link 'Edit'

      expect(current_path).to eq(edit_article_path(article))

      fill_in 'article[title]', with: 'New Title'
      fill_in 'article[body]', with: 'Not Cool Man'

      click_on 'Update Article'

      expect(current_path).to eq(article_path(article))
      expect(page).to have_content('New Title')
      expect(page).to have_content('Not Cool Man')
    end
  end
end
