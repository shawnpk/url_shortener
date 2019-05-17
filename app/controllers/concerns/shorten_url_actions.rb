module ShortenUrlActions
  def shorten_link(link, user_id)
    url = ShortenUrl.find_by(body: link, user_id: user_id)

    if url
      json = { "long_url": url.body, "short_link": url.complete_short }
    else
      url = ShortenUrl.create({body: link, base_url: request.base_url, user_id: user_id })
      json = { "long_url": link, "short_link": url.complete_short }
    end
  end
end
