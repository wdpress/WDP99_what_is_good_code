class Tweet
  def init(content)
    @content = content
  end

  def post!
    if @content.length <= 140
      # 投稿
    else
      # エラー処理
    end
  end
end