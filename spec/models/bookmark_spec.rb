require 'spec_helper'

describe Bookmark do
    
    before(:each) do
        @attr = { :name => "name", :URL => "google.com" }
    end
    
    it "should accept valid url" do
        urls = %w[google.com facebook.com myspace.com]
        urls.each do |new_url|
            valid_url =Bookmark.new(@attr.merge(:URL => new_url))
            valid_url.should be_valid
        end
    end
    
    it "should reject invalid urls" do
        urls = %w[x z c]
        urls.each do |new_url|
            invalid_url = Bookmark.new(@attr.merge(:URL => new_url))
            invalid_url.should_not be_valid
        end
    end
    
    it "should accept valid name" do
        names = %w[google.com facebook.com myspace.com]
        names.each do |new_name|
            valid_url =Bookmark.new(@attr.merge(:name => new_name))
            valid_url.should be_valid
        end
    end
    
    it "should reject invalid names" do
        names = "a" * 211
        invalid_url = Bookmark.new(@attr.merge(:name => names))
        invalid_url.should_not be_valid
    end


end
