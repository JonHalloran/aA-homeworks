const selectCurrency = function(baseCurrency, rates) {
  return {
    type: "SWITCH_CURRENCY",
    baseCurrency: baseCurrency,
    rates: rates
  };
};
