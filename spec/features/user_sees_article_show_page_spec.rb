require "rails_helper"

describe "user sees one article" do
  describe "they link from the articles index" do
    it "displays information for one article" do
      article_1 = Article.create!(title: "New Title", body: "New Body")

      visit articles_path

      clink_link article.title

      expect(page).to have_content(article.title)
      expect(page).to have_content(article.body)
    end
  end
end
