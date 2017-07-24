module UsersHelper
    def user_has_posts_comments?
        current_user && (current_user.posts.any? || current_user.comments.any?)
        # flash[:alert] = "#{user.name} has not submitted and posts yet."
    end
end
