import subprocess

result = subprocess.check_output("./proj0", shell=True).decode()
result = result.split('\n')
assert (result[0] == '4294967295')
