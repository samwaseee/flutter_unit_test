class SalaryCalculation
{
  int perhourpayment=400;
  int calculatesalary(int hour)
  {
    if(hour <= 40 ) {
      return hour * perhourpayment;
    }
    else {
      return 40 * perhourpayment + (hour-40) * 600;
    }
  }
}