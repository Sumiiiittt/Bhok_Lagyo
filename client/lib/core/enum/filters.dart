enum SortOption {
  newest('Best Review', 'date', '-1'),
  oldest('Your Personal Favourite', 'date', '1'),
  priceHighToLow('Price: High to Low', 'price', '-1'),
  priceLowToHigh('Price: Low to High', 'price', '1');

  final String label;
  final String field;
  final String order;

  const SortOption(this.label, this.field, this.order);
}
