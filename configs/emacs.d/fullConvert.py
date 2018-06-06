import os
import re
from openpyxl import load_workbook
from autoOrgConverter import *

def createPackage(filename):
    try:
        fileStr = getFileStr(filename)
        package = getPackage(fileStr)
    except Exception as e:
        print("Package: " + filename)
        raise e
    return package

blacklist = ["init-elpa.el", "user-config.el", "init-use-package.el"]

def collectAllPackages(base):
    packages_collect = {}
    for root, dirnames, filenames in os.walk(base):
        filenames = filter(lambda x: ".el" in x, filenames)
        filenames = filter(lambda x: "layer" not in x, filenames)
        filenames = filter(lambda x: x not in blacklist, filenames)
        packages = {pack["name"]: pack for pack in [createPackage(root + "/" + filename) for filename in filenames]}
        packages_collect.update(packages)
    return packages_collect

def getChangedPackages(packages):
    changed = set()
    for name in packages:
        package = packages[name]
        keywords = package['keywords']
        if "init" in keywords or "config" in keywords:
            changed.add(name)
        
    return changed

def getTopHeaders(wb):
    headers = {}
    sheet = wb.get_sheet_by_name("Headers")
    for i in range(2,23):
        header = sheet.cell(row=i, column=2).value
        if header not in headers:
            headers[header] = []
        headers[header].append(sheet.cell(row=i, column=1).value)
    return headers

def getPackages(wb):
    sheet = wb.get_sheet_by_name("Packages")
    headers = {}
    for i in range(2,192):
        package = {}
        name = sheet.cell(row=i, column=1).value
        header = sheet.cell(row=i, column=2).value
        package['name'] = name
        package['description'] = sheet.cell(row=i, column=14).value
        site = sheet.cell(row=i, column=13).value
        package['site'] = site if site else "No Source"
        package['keywords'] = {}
        after = sheet.cell(row=i, column=6).value
        if after:
            after = ' ' + after
            if len(after.split(",")) > 1:
                after = ' (' + ' '.join(list(map(lambda x: x.strip(), after.split(",")))) + ')'
            package['keywords']['after'] = after
        package['keywords']['hook'] = sheet.cell(row=i, column=7).value
        package['keywords']['disabled'] = ' t'
        package['keywords']['diminish'] = ''
        if header not in headers:
            headers[header] = []
        headers[header].append(package)
    return headers

def createOrgPackageStr(package):
    strList = []
    def app(string):
        strList.append(string)
    app("*** " + package['name'])
    app("#+BEGIN_QUOTE")
    app(package['description'])
    app("#+END_QUOTE")
    app("Source: [[" + package['site'] + "]]")
    app("#+BEGIN_SRC emacs-lisp :angle ~/.emacs")
    app(createUsePackageStr(package))
    app("#+END_SRC")
    return '\n'.join(strList)
        
def main():
    # packages = collectAllPackages("./configs")
    # changed = getChangedPackages(packages)
    # packageNames = set(packages.keys())

    wb = load_workbook('packages.xlsx')
    headers = getTopHeaders(wb)
    subheaders = getPackages(wb)
    outString = ""
    for header in ["General Packages"]:
        outString += "* " + header + '\n'
        for subheader in headers[header]:
            outString += "** " + subheader + '\n'
            for package in subheaders[subheader]:
                outString += createOrgPackageStr(package) + '\n'

    with open("README.org","w") as fh:
        fh.write(outString)
        

main()
