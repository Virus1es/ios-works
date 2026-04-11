/*
Задание 1

Представьте, что вы разрабатываете систему для интернет-магазина. Пользователь вводит сумму 
покупки и указывает, есть ли у него карта лояльности.

Если сумма покупки превышает 10 000 рублей, применяется скидка 10%. Если сумма превышает 
5 000 рублей — скидка составляет 5%. При наличии карты лояльности к итоговой скидке добавляется 
еще 2%.

Необходимо определить итоговую стоимость покупки с учетом всех скидок и вывести результат в консоль 
с указанием примененной скидки.
*/

func calculatePurchase(amount: Double, hasLoyaltyCard: Bool) {
    var discountPercent = 0.0
    
    if amount > 10_000 {
        discountPercent = 10.0
    } else if amount > 5_000 {
        discountPercent = 5.0
    }

    if hasLoyaltyCard {
        discountPercent += 2.0
    }
    
    let discountAmount = amount * (discountPercent / 100)
    let finalPrice = amount - discountAmount

    print("Итоговая стоимость: \(finalPrice) ₽")
}

calculatePurchase(amount: 12_500, hasLoyaltyCard: true) 