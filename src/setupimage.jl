using DataCurator
using Pkg
using PackageCompiler
Pkg.activate(".")
# create_sysimage([:Images, :CSV, :DataFrames, :DataCurator, :ArgParse, :TOML, :HDF5, :MAT], sysimage_path="sys_img.so", precompile_execution_file="./src/precompile.jl")
#
@info pwd()
create_sysimage([:Images, :CSV, :DataFrames, :DataCurator, :ArgParse, :TOML, :HDF5, :MAT], sysimage_path="sys_img.so", precompile_statements_file="dc_precompile.jl")