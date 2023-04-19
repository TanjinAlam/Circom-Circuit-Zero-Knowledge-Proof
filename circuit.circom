pragma circom 2.0.5;

include "/usr/local/lib/node_modules/circomlib/circuits/comparators.circom";

template FactorCircuit() {
    signal input a;
    signal output isFactor;

    // Constraint to ensure that a are factors of 9
    signal temp;
    temp <-- 9 % a;
    // Output true if a factors of 9, false otherwise
    isFactor <== IsZero()(temp);
}

component main = FactorCircuit();