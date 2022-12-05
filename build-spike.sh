set -e
export RISCV=`pwd`/riscv
mkdir -p build/riscv-isa-sim
cd build/riscv-isa-sim
../../riscv-isa-sim/configure --prefix=$RISCV
cd ../..
make -C build/riscv-isa-sim -j4
make -C build/riscv-isa-sim install
