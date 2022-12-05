set -e
export RISCV=`pwd`/riscv
mkdir -p build/riscv-pk
cd build/riscv-pk
../../riscv-pk/configure --host=riscv64-unknown-elf --prefix=$RISCV
cd ../..
CFLAGS="-mabi=lp64d -march=rv64imafdc" make -C build/riscv-pk -j4
make -C build/riscv-pk install
