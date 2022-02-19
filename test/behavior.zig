const builtin = @import("builtin");

test {
    _ = @import("behavior/align.zig");
    _ = @import("behavior/alignof.zig");
    _ = @import("behavior/array.zig");
    _ = @import("behavior/basic.zig");
    _ = @import("behavior/bit_shifting.zig");
    _ = @import("behavior/bitreverse.zig");
    _ = @import("behavior/byteswap.zig");
    _ = @import("behavior/bool.zig");
    _ = @import("behavior/bugs/394.zig");
    _ = @import("behavior/bugs/655.zig");
    _ = @import("behavior/bugs/656.zig");
    _ = @import("behavior/bugs/679.zig");
    _ = @import("behavior/bugs/1025.zig");
    _ = @import("behavior/bugs/1111.zig");
    _ = @import("behavior/bugs/1277.zig");
    _ = @import("behavior/bugs/1310.zig");
    _ = @import("behavior/bugs/1381.zig");
    _ = @import("behavior/bugs/1486.zig");
    _ = @import("behavior/bugs/1500.zig");
    _ = @import("behavior/bugs/1735.zig");
    _ = @import("behavior/bugs/1741.zig");
    _ = @import("behavior/bugs/1914.zig");
    _ = @import("behavior/bugs/2006.zig");
    _ = @import("behavior/bugs/2346.zig");
    _ = @import("behavior/bugs/2578.zig");
    _ = @import("behavior/bugs/3007.zig");
    _ = @import("behavior/bugs/3112.zig");
    _ = @import("behavior/bugs/3367.zig");
    _ = @import("behavior/bugs/6850.zig");
    _ = @import("behavior/bugs/7250.zig");
    _ = @import("behavior/cast.zig");
    _ = @import("behavior/comptime_memory.zig");
    _ = @import("behavior/fn_delegation.zig");
    _ = @import("behavior/fn_in_struct_in_comptime.zig");
    _ = @import("behavior/hasdecl.zig");
    _ = @import("behavior/hasfield.zig");
    _ = @import("behavior/ir_block_deps.zig");
    _ = @import("behavior/namespace_depends_on_compile_var.zig");
    _ = @import("behavior/optional.zig");
    _ = @import("behavior/prefetch.zig");
    _ = @import("behavior/pub_enum.zig");
    _ = @import("behavior/reflection.zig");
    _ = @import("behavior/slice.zig");
    _ = @import("behavior/slice_sentinel_comptime.zig");
    _ = @import("behavior/struct.zig");
    _ = @import("behavior/truncate.zig");
    _ = @import("behavior/tuple.zig");
    _ = @import("behavior/type.zig");
    _ = @import("behavior/var_args.zig");

    // tests that don't pass for stage1
    if (builtin.zig_backend != .stage1) {
        _ = @import("behavior/decltest.zig");
    }

    if (builtin.zig_backend != .stage2_arm and builtin.zig_backend != .stage2_x86_64 and builtin.zig_backend != .stage2_aarch64) {
        // Tests that pass (partly) for stage1, llvm backend, C backend, wasm backend.
        _ = @import("behavior/bitcast.zig");
        _ = @import("behavior/bugs/624.zig");
        _ = @import("behavior/bugs/704.zig");
        _ = @import("behavior/bugs/1076.zig");
        _ = @import("behavior/bugs/2692.zig");
        _ = @import("behavior/bugs/2889.zig");
        _ = @import("behavior/bugs/3046.zig");
        _ = @import("behavior/bugs/3586.zig");
        _ = @import("behavior/bugs/4560.zig");
        _ = @import("behavior/bugs/4769_a.zig");
        _ = @import("behavior/bugs/4769_b.zig");
        _ = @import("behavior/bugs/4954.zig");
        _ = @import("behavior/byval_arg_var.zig");
        _ = @import("behavior/call.zig");
        _ = @import("behavior/defer.zig");
        _ = @import("behavior/enum.zig");
        _ = @import("behavior/error.zig");
        _ = @import("behavior/fn.zig");
        _ = @import("behavior/for.zig");
        _ = @import("behavior/generics.zig");
        _ = @import("behavior/if.zig");
        _ = @import("behavior/import.zig");
        _ = @import("behavior/incomplete_struct_param_tld.zig");
        _ = @import("behavior/inttoptr.zig");
        _ = @import("behavior/member_func.zig");
        _ = @import("behavior/null.zig");
        _ = @import("behavior/pointers.zig");
        _ = @import("behavior/ptrcast.zig");
        _ = @import("behavior/ref_var_in_if_after_if_2nd_switch_prong.zig");
        _ = @import("behavior/src.zig");
        _ = @import("behavior/this.zig");
        _ = @import("behavior/try.zig");
        _ = @import("behavior/type_info.zig");
        _ = @import("behavior/undefined.zig");
        _ = @import("behavior/underscore.zig");
        _ = @import("behavior/union.zig");
        _ = @import("behavior/usingnamespace.zig");
        _ = @import("behavior/void.zig");
        _ = @import("behavior/while.zig");

        if (builtin.zig_backend != .stage2_wasm) {
            // Tests that pass for stage1, llvm backend, C backend
            _ = @import("behavior/bugs/9584.zig");
            _ = @import("behavior/cast_int.zig");
            _ = @import("behavior/eval.zig");
            _ = @import("behavior/int128.zig");
            _ = @import("behavior/merge_error_sets.zig");
            _ = @import("behavior/translate_c_macros.zig");

            if (builtin.zig_backend != .stage2_c) {
                // Tests that pass for stage1 and the llvm backend.
                _ = @import("behavior/atomics.zig");
                _ = @import("behavior/floatop.zig");
                _ = @import("behavior/math.zig");
                _ = @import("behavior/maximum_minimum.zig");
                _ = @import("behavior/popcount.zig");
                _ = @import("behavior/saturating_arithmetic.zig");
                _ = @import("behavior/sizeof_and_typeof.zig");
                _ = @import("behavior/switch.zig");
                _ = @import("behavior/widening.zig");

                if (builtin.zig_backend == .stage1) {
                    // Tests that only pass for the stage1 backend.
                    if (builtin.os.tag != .wasi) {
                        _ = @import("behavior/asm.zig");
                        _ = @import("behavior/async_fn.zig");
                    }
                    _ = @import("behavior/await_struct.zig");
                    _ = @import("behavior/bugs/421.zig");
                    _ = @import("behavior/bugs/529.zig");
                    _ = @import("behavior/bugs/718.zig");
                    _ = @import("behavior/bugs/726.zig");
                    _ = @import("behavior/bugs/828.zig");
                    _ = @import("behavior/bugs/920.zig");
                    _ = @import("behavior/bugs/1120.zig");
                    _ = @import("behavior/bugs/1421.zig");
                    _ = @import("behavior/bugs/1442.zig");
                    _ = @import("behavior/bugs/1607.zig");
                    _ = @import("behavior/bugs/1851.zig");
                    _ = @import("behavior/bugs/2114.zig");
                    _ = @import("behavior/bugs/3384.zig");
                    _ = @import("behavior/bugs/3742.zig");
                    _ = @import("behavior/bugs/3779.zig");
                    _ = @import("behavior/bugs/4328.zig");
                    _ = @import("behavior/bugs/5398.zig");
                    _ = @import("behavior/bugs/5413.zig");
                    _ = @import("behavior/bugs/5474.zig");
                    _ = @import("behavior/bugs/5487.zig");
                    _ = @import("behavior/bugs/6456.zig");
                    _ = @import("behavior/bugs/6781.zig");
                    _ = @import("behavior/bugs/7003.zig");
                    _ = @import("behavior/bugs/7027.zig");
                    _ = @import("behavior/bugs/7047.zig");
                    _ = @import("behavior/bugs/10147.zig");
                    _ = @import("behavior/const_slice_child.zig");
                    _ = @import("behavior/export_self_referential_type_info.zig");
                    _ = @import("behavior/field_parent_ptr.zig");
                    _ = @import("behavior/misc.zig");
                    _ = @import("behavior/muladd.zig");
                    _ = @import("behavior/select.zig");
                    _ = @import("behavior/shuffle.zig");
                    _ = @import("behavior/struct_contains_null_ptr_itself.zig");
                    _ = @import("behavior/struct_contains_slice_of_itself.zig");
                    _ = @import("behavior/switch_prong_err_enum.zig");
                    _ = @import("behavior/switch_prong_implicit_cast.zig");
                    _ = @import("behavior/typename.zig");
                    _ = @import("behavior/union_with_members.zig");
                    _ = @import("behavior/vector.zig");
                    if (builtin.target.cpu.arch == .wasm32) {
                        _ = @import("behavior/wasm.zig");
                    }
                }
            }
        }
    }
}
