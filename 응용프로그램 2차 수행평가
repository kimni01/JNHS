import cowsay
from colorama import Fore, init


init(autoreset=True)
money = 2000
print(Fore.GREEN + "--- 안녕하세요! 캐릭터 자판기입니다 ---")

choice = input("1. 콜라(1000원) 중 고르새요")

if choice == "1":
    if money >= 1000:
        money = money - 1000
        cowsay.cow("콜라 나왔어! 맛있게 마셔!")
    else:
        print(Fore.RED + "돈이 없어!")

print(Fore.YELLOW + f"남은 돈은 {money}원이야. 안녕!")
