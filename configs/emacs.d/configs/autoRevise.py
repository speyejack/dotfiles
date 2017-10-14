import re
import os
from os import path

def fix_all_files(root_dir):
    blacklist = ["user-config", "init-elpa", "init-use-package"]
    for root, folders, files in os.walk(root_dir):
        files = filter(lambda x: path.splitext(x)[1] == ".el", files)
        files = filter(lambda x: path.splitext(x)[0] not in blacklist, files)
        files = filter(lambda x: path.splitext(x)[0][-5:] != "layer", files)
        files = map(lambda x: fix_file(path.join(root, x)), files)
        list(files)

def fix_file(filename):
    try:
        lines = get_lines(filename)
        name = get_package_name(lines)
        fix_use_package(lines, name)
        add_hooks(lines, name)
        # write_file("./test-file-out.el", lines)
    except AttributeError as e:
        print(filename)
        raise e

def get_lines(filename):
    lines = []
    with open(filename, "r") as fh:
        lines = map(lambda x: x[:-1], fh.readlines())
    return list(lines)

def get_package_name(lines):
    line = list(filter(lambda x: "use-package" in x, lines))[0]
    name = re.match("\(use\-package ([a-zA-Z0-9-]+)", line).group(1)
    return name

def fix_use_package(lines, name):
    remove_require(lines, name)
    add_init(lines, name)

def remove_require(lines, name):
    lines.remove("  (jag--load-{}-requires)".format(name))

def add_init(lines, name):
    use_index = lines.index("(use-package {}".format(name))+1
    lines.insert(use_index, "  (jag--add-{}-hooks)".format(name))
    lines.insert(use_index, "  (jag--load-{}-requires)".format(name))
    lines.insert(use_index, "  :init")

def add_hooks(lines, name):
    comment_end = lines.index(";;; Code:") + 1
    new_lines = [
        "",
        "(defun jag--add-{}-hooks ()",
        "  \"Add hooks to {}.\"",
        "  (jag--add-{}-key-hooks)",
        "  (jag--add-{}-other-hooks))",
        "",
        "(defun jag--add-{}-key-hooks ()",
        "  \"Add key hooks to {}.\")",
        "",
        "(defun jag--add-{}-other-hooks ()",
        "  \"Add mode other to {}.\")"]

    for line in reversed(new_lines):
        lines.insert(comment_end, line.format(name))

def write_file(filename, lines):
    with open(filename, "w") as fh:
        fh.write("\n".join(lines))

fix_all_files("./")
