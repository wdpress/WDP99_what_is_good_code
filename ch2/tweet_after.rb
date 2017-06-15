class Tweet
  MAX_TWEET_LENGTH = 140

  def init(content)
    @content = content
  end

  def post!
    if @content.length <= MAX_TWEET_LENGTH
      # 投稿
    else
      # エラー処理
    end
  end
end