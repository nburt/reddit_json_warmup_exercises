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
    imgur_images = []
    @data["data"]["children"].each do |child|
      if child["data"]["url"].match /http:\/\/i.i/
        imgur_images << child["data"]["url"]
        @data.delete_if {|k, v| v.nil?}
      end
    end
    imgur_images
  end
end
