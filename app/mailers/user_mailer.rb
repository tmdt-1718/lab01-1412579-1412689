class UserMailer < ApplicationMailer
    default from: "iuemanhngatxiu@gmail.com"
    
      def login id
        @user = User.find_by_id(id)
        puts @user
        mail to: @user.email, subject: "Bạn đã đăng nhập vào Lab01!"
      end
      def comment id, fullname
        @user = User.find_by_id(id)
        @fullname = fullname
        mail to: @user.email, subject: "#{fullname} đã bình luận vào bài viết của bạn!"
      end
end
