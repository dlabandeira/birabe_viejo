module PostsHelper

    def show_comments(user)
      @comentarios = Comment.where("post_id = ?",user.id)
    end
end
