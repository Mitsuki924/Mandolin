module ApplicationHelper
  # YouTubeのURLから動画ID（11桁）を正確に抜き出すメソッド
  def find_youtube_url(url)
    return "" if url.blank?
    
    # youtu.be/ や watch?v= の後ろにある11桁の英数字を抜き出す
    regex = /(?:youtu\.be\/|youtube\.com\/(?:watch\?(?:.*&)?v=|(?:embed|v)\/))([a-zA-Z0-9_-]{11})/
    match = url.match(regex)
    match ? match[1] : ""
  end
end
