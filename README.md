# ShoppingCart

![shoppingcart](https://user-images.githubusercontent.com/35825144/112424858-7b59b280-8d78-11eb-98ad-c8ee8e2921a8.jpg)

# What I used in this project

1.UILabel, UIImage, UIImageView, UIButton, UIView (for the little seperator), UIStepper (for product quantity), UINavigationController

2.MVC 

3.Array, Dictionary

4.IBOutlet and IBAction

5.UIAlertController, Action Sheet



# Description

1.This is a simple app that models the feature of a shopping cart. Your order screen should have at least 3 product.
Each product has its name, price, quantity label, a stepper (search stepper in Object Palette) to change the product quantity.

2.The order screen also needs to be embeded in a navigation controller, has a total label that calculate the total amount of all products selected,
a place order button.At first, when no product is selected, the place order button should be disabled.

3.Your app data model should seperate the task among Product, Calculator (for total amount, tax, shipping, total bill..), and Shopping Cart.

4.When the user taps on the place order button, transitions to check out page that has a beautiful banner image, with the order total amount including tax.
the user can now choose to use Standard shipping or Express shipping. You'll need to update the total amount accordingly.

5.When the final Place Order button is selected, show a UIAlertViewController to ask the user to confirm the order. The alert should have two buttons: 
"Cancel" or "Confirm". If the user taps confirm, display an Action Sheet to say that your order has been made, check your email for confirmation, 
with a button "Keep Shopping" that takes the user back to the order screen (rootViewController).

6.When the user taps Keep Shopping, it's very important that you reset the quantity of all selected products and total amount to 0. It's a fresh new order.

# Complete Design of the Project

![complete](https://user-images.githubusercontent.com/35825144/112426677-b4dfed00-8d7b-11eb-9b8f-eeb6cc4a07b7.png)



