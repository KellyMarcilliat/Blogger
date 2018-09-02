require "rails_helper" 

describe "user sees one article" do 
  describe "they link from the articles index" do 
    it "displays information for one article" do 
      article_1 = Article.create!(title: "Flame Child", body: "Ya ever read that one Stephen King book?")
      
      visit articles_path  
      click_link article_1.title 
      save_and_open_page
      
      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
      
    end 
  end 
end 