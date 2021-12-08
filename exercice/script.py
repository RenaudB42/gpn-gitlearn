
class Complex():

    def __init__(self, Re, Im) :
        self.Re = Re
        self.Im = Im

    def add(self, A) :
        pass

    def sub(self,B) :
        pass

    def norm(self) :
        pass

    def arg(self):
        pass

    def __str__(self) -> str:
        return f""


if __name__ == '__main__':
    A = Complex(11,55)
    B = Complex(71,5)
    A.add(B)
    A.sub(B)
    print(A.norm())
    A.
