def _print_aspect_impl(target, ctx):
    # Make sure the rule has a srcs attribute.
    printbaz(target.label)
#    if hasattr(ctx.rule.attr, 'srcs'):
#        # Iterate through the files that make up the sources and
#        # print their paths.
#        for src in ctx.rule.attr.srcs:
#            for f in src.files.to_list():
#                print(f.path)
    return []

print_aspect = aspect(
    implementation = _print_aspect_impl,
    attr_aspects = [
    "deps",
    "jars",
    "exports",
    "associates",
    "proc_macro_deps",
    "runtime_deps",
    "_cc_toolchain"
],
)


# --tool_tag=bazelbsp:3.2.0
# --aspects=@@bazelbsp_aspect//aspects:core.bzl%bsp_target_info_aspect
# "--output_groups=bsp-target-info,external-deps-resolve,rust_analyzer_crate_spec"
# --keep_going
# --color=yes
# --curses=no
# --build_tag_filters=-no-ide
# --build_event_binary_file=/var/folders/jk/qhslt41x5yd9tczlrfw8_92m0000gp/T/bazel-bep-output4865009993820219713.tmp
# --bes_outerr_buffer_size=10
# --build_event_publish_all_actions
# --override_repository=bazelbsp_aspect=/Users/Jiaming.Tang/workspace/test/examples/cpp-tutorial/stage3/.bazelbsp
# --curses=no
# --color=yes
# --noprogress_in_terminal_title



#bazel build //... --aspects=@@bazelbsp_aspect//aspects:core.bzl%bsp_target_info_aspect "--output_groups=bsp-target-info,external-deps-resolve,rust_analyzer_crate_spec"  --build_tag_filters=-no-ide --build_event_json_file=out.json --build_event_publish_all_actions  --override_repository=bazelbsp_aspect=/Users/Jiaming.Tang/workspace/test/examples/cpp-tutorial/stage3/.bazelbsp
