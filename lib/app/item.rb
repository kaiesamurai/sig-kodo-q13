class Item
  attr_reader :item

  def initialize(text)
    @text = text

    setup
  end

  def setup
    @item = Element.new('span')
    @item.html = html

    @item.find('.close').on(:click) { @item.remove }
  end

  def html
    <<-HTML
      <div data-alert class="alert-box secondary">
      #{@text}
        <a href="#" class="close">&times;</a>
      </div>
    HTML
  end
end
