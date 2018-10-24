class PagesController < ApplicationController
    def about
        @title = 'About this App';
        @content = 'I am a web developer learning Ruby - and my mind is BLOWN'
    end
    def contact
        @title = 'Contact the Author';
        @content = 'Hi ! My name is Marie Nguyen Phu Qui. This is my first time touching Ruby on Rails and I am excited ! This is probably the greatest thing I have done today. And I discovered a new drawer in my house... so pretty big. Contact my on my '
    end
end
