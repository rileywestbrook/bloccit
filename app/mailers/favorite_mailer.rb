class FavoriteMailer < ApplicationMailer
  default from: "youremail@email.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@infinite-brook-27301.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@infinite-brook-27301.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@infinite-brook-27301.herokuapp.come>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
