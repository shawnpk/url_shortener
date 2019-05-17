module ShortenUrlActions
  def shorten_link(link)
    url = ShortenUrl.find_by(body: link)

    if url
      json = { "long_url": url.body, "short_link": url.complete_short }
    else
      url = ShortenUrl.create({body: link, base_url: request.base_url})
      json = { "long_url": link, "short_link": url.complete_short }
    end
  end
end
