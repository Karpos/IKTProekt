using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MojaZgrada.Class
{
    public class transactions
    {
        public int Id { get; set; }
        public double Budget { get; set; }
        public double BudgetBank { get; set; }
        public double BudgetAll { get; set; }

        public transactions() { }
        public transactions(int id,double budget,double budgetBank, double budgetAll)
        {
            Id = id;
            Budget = budget;
            BudgetBank = budgetBank;
            BudgetAll = budgetAll;
        }
    }
    
}