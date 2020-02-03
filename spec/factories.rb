FactoryBot.define do
  factory(:quote) do
    show = factory(:show) do
      name {"show"}
    end
    quotation {"This is a quote."}
    show_id {show.id}
  end
end
