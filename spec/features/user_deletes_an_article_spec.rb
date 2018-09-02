require 'rails_helper'

describe 'user deletes an article' do 
  describe 'user links from the show page' do 
    it 'shows all articles without the deleted entry' do 
      article_1 = Article.create!(title: "Big Bigness", body: "Very bigly things")
      article_2 = Article.create!(title: "Tired of Winning?", body: "Way tired of something")
      
      visit article_path(article_1)
      click_link "Delete" 
      
      expect(current_path).to eq(articles_path)
      expect(page).to have_content(article_2.title)
      expect(page).to_not have_content(article_1.title) 
    end 
  end 
end 
        