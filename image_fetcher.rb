# update the methods below to make the test pass.

class ImageFetcher

  def initialize(data)
    @data = data
  end

  def count_children
    @data["data"]["children"].count
  end

  def first_child
    @data["data"]["children"].first["data"]
  end

  def all_images
    @data["data"]["children"].map do |child|
      child["data"]["url"]
    end
  end

  # fetch only the images that begin with `http://i.imgur.com`
  def only_imgur_images
    all_images.select do |image|
      /http:\/\/i.i/ === image
    end
  end
end
