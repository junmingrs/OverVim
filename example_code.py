class Car:
    def __init__(self, brand: str, model: str, speed: int = 0):
        self.brand = brand
        self.model = model
        self.speed = speed

    def accelerate(self, amount: int) -> None:
        self.speed += amount

    def brake(self, amount: int) -> None:
        self.speed = max(0, self.speed - amount)

    def honk(self) -> str:
        return "Beep beep!"

    def get_info(self) -> str:
        return f"{self.brand} {self.model} travelling at {self.speed} km/h"

def main() -> None:
    car1 = Car("Toyota", "Supra")
    car2 = Car("Nissan", "GTR")

    car1.accelerate(120)
    car2.accelerate(100)

    print(car1.get_info())
    print(car2.get_info())

    # TODO: GET THE CARS TO RACE AGAINST EACH OTHER


if __name__ == "__main__":
    main()
