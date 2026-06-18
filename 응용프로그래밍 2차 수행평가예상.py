import cowsay
from colorama import Fore, init


init(autoreset=True)
money = 2000
print(Fore.GREEN + "--- 안녕하세요! 캐릭터 자판기입니다 ---")

print("1. 콜라(1000원)")
print("2. 사이다(1200원)")
print("3. 주스(1500원)")
choice = input("번호를 선택해서 음료를 골라주세요")

if choice == "1":
    if money >= 1000:
        money = money - 1000
        cowsay.cow("콜라 나왔어!")
    else:
        print(Fore.RED + "돈이 없어!")

elif choice == "2":
    if money >= 1200:
        money = money - 1200
        cowsay.cow("사이다 나왔어!")
    else:
        print(Fore.RED + "돈이 없어!")
        
elif choice == "3":
    if money >= 1500:
        money = money - 1500
        cowsay.cow("주스 나왔어!")
    else:
        print(Fore.RED + "돈이 없어!")

print(Fore.YELLOW + f"남은 돈은 {money}원이야.")
