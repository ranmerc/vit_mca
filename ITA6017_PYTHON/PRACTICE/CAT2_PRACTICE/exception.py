class SillyException(Exception):
    def __init__(self, message):
        super().__init__(message)


try:
    raise SillyException("Oh no sillly!")
except SillyException as e:
    print(e)
