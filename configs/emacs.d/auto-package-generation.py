import os
import re


def load_snippet_file(filename):
    fh = open(filename, "r")
    try:
        return fh.readlines()
    finally:
        fh.close()


dir_snippet = load_snippet_file("./snippet-init-dir")
package_snippet = load_snippet_file("./snippet-init-package")


def get_package_name(node):
    dirExt = ""
    if node["dir"]:
        dirExt = "-layer"
    return node["name"] + dirExt


def get_replace_snippet(package_name, package_description, required_packages, snippet):
    replaced_snippet = []
    for line in snippet:
        line = re.sub("\$1", package_name, line)
        line = re.sub("\$2", package_description, line)
        package_require_str = ""
        if required_packages:
            package_require_str += "".join(["\n  (require 'init-" + get_package_name(package) + ")" for package in required_packages])
        line = re.sub("\$3", package_require_str, line)
        replaced_snippet.append(line)
    return "".join(replaced_snippet)


def create_tree_node(name):
    isdir = False
    dirName = ""
    if name[0] == "#":
        name = name[1:]
        isdir = True
    return {"name": name.lower(), "description": "Package Description", "dir": isdir, "subtree": None}


def create_tree_recursive(file_lines, stars):
    package_list = []
    while True:
        if not file_lines:
            return package_list
        line = file_lines.pop(0).strip()

        star_amount = len(re.match("^[*]*", line).group(0))

        if star_amount == stars:
            line = line.strip(" *")
            node = create_tree_node(line)
            package_list.append(node)
        elif star_amount == 0:
            package_list[-1]["description"] = line
        else:
            file_lines.insert(0, line)
            if star_amount < stars:
                return package_list
            elif star_amount > stars:
                subtree = create_tree_recursive(file_lines, stars + 1)
                package_list[-1]["subtree"] = subtree


def get_creation_tree(fh_in):
    file_lines = fh_in.readlines()
    return create_tree_recursive(file_lines, 1)


def get_init_filename(root, name):
    return os.path.join(root, "init-" + name + ".el")


def realize_init_file(package, root, snippet):
    pkg_dir = get_init_filename(root, get_package_name(package))
    fh = open(pkg_dir, "w")
    pkg_str = get_replace_snippet(get_package_name(package),
                                  package["description"],
                                  package["subtree"], snippet)
    fh.write(pkg_str)
    fh.close()
    realize_creation_tree(package["subtree"], root)


def realize_directory(node, root_directory):
    absDir = os.path.join(root_directory, node["name"])
    os.makedirs(absDir, exist_ok=True)
    realize_init_file(node, absDir, dir_snippet)


def realize_creation_tree(creation_tree, root_directory):
    if not creation_tree:
        return

    for node in creation_tree:
        if node["dir"]:
            realize_directory(node, root_directory)
        else:
            realize_init_file(node, root_directory, package_snippet)


if __name__ == "__main__":
    fh = open("./packages.org")
    tree = get_creation_tree(fh)
    realize_creation_tree(tree, os.path.abspath("./"))
