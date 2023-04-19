# Circom-Circuit-Zero-Knowledge-Proof

# Compile circom circuit

 - Open circuit.circom
 - Modify include "/usr/local/lib/node_modules/circomlib/circuits/comparators.circom" with the your local computer circomlib directory 
 - chmod +x compile.sh
 - ./compile.sh

# It will generate two folder circuit_cpp & circuit_js

# Generate witness & Proving circuits with ZK
 
 - Move start.sh into circuit_js directory
 - Move circuit.r1cs into circuit_js directory
 - Move input.json into circuit_js directory
 - chmod +x start.sh
 - ./start.sh
   
# Start interacting with the ZKP-System

 - Move circuit.wasm back to root directory where snarkjs.js file exist
 - Move circuit.zkey back to root directory where snarkjs.js file exist
 - Move verification_key.json back to root directory where snarkjs.js file exist
 - Start frontend.html a web browser.
 
