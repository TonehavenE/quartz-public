import json
import os

from natsort import natsorted, ns


class Language:
    def __init__(self, name, path):
        self.paths = []
        self.content = []
        # Name
        self.name = name
        # Files
        self.files = read_dir(path)
        self.files = natsorted(self.files)
        # Paths
        for file in self.files:
            if is_source(file):
                print(file)
                self.paths.append(f"{path}{file}")
        self.paths.sort()
        # Content
        for path in self.paths:
            f = open(path, "r")
            text = f.read()
            self.content.append(text)

    def print(self):
        print(f"Name: {self.name}")
        print(f"Paths: {self.paths}")
        print(f"Files: {self.files}")
        print(f"Content: {self.content}")

    def to_dict(self):
        data_dict = {
            "name": self.name,
            "paths": self.paths,
            "files": self.files,
            "content": self.content
        }
        return data_dict


def find_dirs(path):
    file_list = os.listdir(path)
    dir_list = []
    for file in file_list:
        if os.path.isdir(f"{path}/{file}"):
            dir_list.append(file)

    return dir_list


def read_dir(dir):
    raw_file_list = os.listdir(dir)
    file_list = []
    for file in raw_file_list:
        if is_source(file):
            file_list.append(file)
    return file_list


def is_source(file):
    for ext in language_extensions:
        if file.lower().endswith(f".{ext}"):
            return file


def write_json(dicts):
    dict = {}
    for lang in dicts:
        dict.update({lang: dicts[lang]})

    out_json = json.dumps(dict, indent=4)
    with open("data.json", "w") as f:
        f.write(out_json)


language_extensions = ["c", "clj", "ex", "go", "java",
                       "js", "jl", "nim", "py", "rs", "zig"]
path = './solutions/'


dicts = {}
langs = natsorted(find_dirs("./solutions"))
for lang in langs:
    temp = Language(lang.capitalize(), f"{path}{lang}/")
    temp_dict = temp.to_dict()
    dicts.update({lang: temp_dict})

for lang in dicts:
    print(f"{lang}: {dicts[lang]}\n\n\n")

write_json(dicts)
