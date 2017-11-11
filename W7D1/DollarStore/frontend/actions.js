const selectCurrency = (base, rate) => {
    return {type: "SWITCH_CURRENCY", baseCurrency: base, rates: rate};
};

export default selectCurrency;