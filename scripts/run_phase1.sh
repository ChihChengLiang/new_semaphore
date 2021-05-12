mkdir -p pots
npx snarkjs powersoftau new bn128 12 ./pots/pot12_0000.ptau -v
npx snarkjs powersoftau contribute ./pots/pot12_0000.ptau ./pots/pot12_0001.ptau --name="First contribution" -v -e="some random text"
npx snarkjs powersoftau contribute ./pots/pot12_0001.ptau ./pots/pot12_0002.ptau --name="Second contribution" -v -e="some more random text"
npx snarkjs powersoftau beacon ./pots/pot12_0002.ptau ./pots/pot12_beacon.ptau 0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f 10 -n="Final Beacon"
npx snarkjs powersoftau prepare phase2 ./pots/pot12_beacon.ptau ./pots/pot12_final.ptau -v