atom_feed do |feed|
    feed.title("Hillary Johnson\'s blog feed")
    feed.updated(@blogs.first.created_at)
    
    @blogs.each do |blog|
      feed.entry(blog) do |entry|
        entry.title(blog.title)
        entry.content(blog.body, :type => 'text')
        entry.author { |author| author.name("Hillary Johnson")}
    end
  end
end

