class CategoriesRepresenter
    def initialize(categories)
        @categories = categories 
    end

    def as_json
        categories.tap do |category|
            {
                id: category.id,
                name: category.name
            }
        end
    end

    private

    attr_reader :categories
end
