```
import os

print('getcwd:      ', os.getcwd())
print('__file__:    ', __file__)

print('basename:    ', os.path.basename(__file__))
print('dirname:     ', os.path.dirname(__file__))

print('abspath:     ', os.path.abspath(__file__))
print('abs dirname: ', os.path.dirname(os.path.abspath(__file__)))

os.chdir(os.path.dirname(os.path.abspath(__file__)))

target_path_1 = os.path.join(os.path.dirname(__file__), 'test.txt')
with open(target_path_1) as f:
    print(f.read())


target_path_2 = os.path.join(os.path.dirname(__file__), '../dst/test_new.json')
with open(target_path_2) as f:
    print(f.read())


```

Ref: https://note.nkmk.me/en/python-script-file-path/
