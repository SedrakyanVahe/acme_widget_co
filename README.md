# Acme Widget Co Sales System

This is a proof of concept for the new sales system for Acme Widget Co, implemented in Ruby. The system allows users to add products to a basket, apply discounts based on special offers, and calculate the total cost including delivery.

## Features
- **Products List**: Red, Green, and Blue Widgets with fixed prices.
- **Special Offers**: "Buy one red widget, get the second at half price".
- **Delivery Costs**:
  - $4.95 for orders under $50
  - $2.95 for orders between $50 and $90
  - Free for orders over $90

## Class Structure
- **ProductsList**: Holds product data.
- **Basket**: Manages the basket contents and calculates the total cost.
- **DeliveryCostCalculator**: Calculates the delivery cost based on total price.
- **Offer**: Handles offer applications (like discounts on red widgets).

## Usage

### Setup

```bash
git clone https://github.com/yourusername/acme_widget_co.git
cd acme_widget_co
ruby app/main.rb