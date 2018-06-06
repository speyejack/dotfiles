import re

def splitIntoFunctions(fileStr):
    funcs = []
    startIndex = 0 
    paraCount = 0
    for index,char in enumerate(fileStr):
        if char == '(':
            if paraCount == 0:
                startIndex = index
            paraCount += 1
        elif char == ')':
            paraCount -= 1    
            if paraCount == 0:
                funcs.append(fileStr[startIndex:index].strip())
    return funcs

def getPackageDescription(fileStr):
    start = fileStr.find("---")
    end = fileStr.find("\n", start)
    desc = fileStr[start + 3:end].replace("-", " ").strip()
    return desc if "Package Description" == desc else ""

def getFileStr(filename):
    with open(filename, "r") as fh:
        return ''.join(fh.readlines())

def removeExtraFunctions(funcs):
    return [func for func in funcs if "Add hooks" not in func and "Load required" not in func and "(provide" not in func]

def isFuncEmpty(func):
    return len(func.split('\n')) == 2

def parseFunctions(funcs):
    funcBodies = {}
    for keyword in ["key-hooks", "other-hooks", "key-bindings","config"]:
        func = [func for func in funcs if keyword in func.split('\n',1)[0]][0]
        funcBodies[keyword] = '\n'.join(func.split('\n')[2:])
    return funcBodies

def parseUsePackage(funcs):
    usePackageStr = [func for func in funcs if "use-package" in func.split('\n',1)[0]][0]
    packageName = usePackageStr.split('\n',1)[0].split(' ',1)[1].strip()
    keywordSections = usePackageStr.split(":")
    return (packageName, {keySecParts[0]: ''.join(keySecParts[1:]).rstrip() for keySecParts in [re.split("(\s)", sec, 1) for sec in keywordSections]})

def getPackage(fileStr):
    package = {}
    package["description"] = getPackageDescription(fileStr)
    funcs = splitIntoFunctions(fileStr)
    funcs = removeExtraFunctions(funcs)
    funcBodies = parseFunctions(funcs)
    packageName, keywords = parseUsePackage(funcs)
    for keyword in [keyword for keyword in ["ensure"] if keyword in keywords]:
        del keywords[keyword]
    package["name"] = packageName
    keywords["init"] = '\n' + (funcBodies['key-hooks'] + '\n' + funcBodies['other-hooks']).rstrip()
    keywords["config"] = '\n' + (funcBodies['key-bindings'] + '\n' + funcBodies['config']).rstrip()
    package["keywords"] = {keyword: keywords[keyword] for keyword in keywords if keywords[keyword].strip()}
    return package

def createUsePackageStr(package):
    pkgList = []
    pkgList.append("(use-package " + package["name"])
    for keyword in [keyword for keyword in ["commands", "diminish", "after","init", "config"] if keyword in package["keywords"]]:
        keySec = package["keywords"][keyword]
        pkgList.append("  :" + keyword + keySec)
    return '\n'.join(pkgList) + ')'

def main():
    filename = "configs/helm/init-helm.el"
    fileStr = getFileStr(filename)
    package = getPackage(fileStr)
    pkgStr = createPackageStr(package)
    print(pkgStr)

# main()
