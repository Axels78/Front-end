function resetValue() {
    document.calc.display.value = '0';
}

function addValue(value) {
    if (document.calc.display.value == 0) {
        document.calc.display.value = value;
    } else {
        document.calc.display.value += value;
    }
}

function calculate() {
    document.calc.display.value = eval(calc.display.value);
}