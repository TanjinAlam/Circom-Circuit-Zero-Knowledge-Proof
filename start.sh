node generate_witness.js circuit.wasm input.json witness.wtns
sleep 1
snarkjs powersoftau new bn128 12 pot12_0000.ptau -v
sleep 5
echo "hello" | snarkjs powersoftau contribute pot12_0000.ptau pot12_0001.ptau --name="First contribution"
sleep 5
snarkjs powersoftau prepare phase2 pot12_0001.ptau pot12_final.ptau -v
sleep 1
snarkjs groth16 setup circuit.r1cs pot12_final.ptau circuit.zkey
sleep 1
snarkjs groth16 prove circuit.zkey witness.wtns proof.json public.json
sleep 1
snarkjs zkey export verificationkey circuit.zkey verification_key.json
sleep 1
snarkjs groth16 verify verification_key.json public.json proof.json
sleep 1
snarkjs zkey export solidityverifier circuit.zkey verifier.sol