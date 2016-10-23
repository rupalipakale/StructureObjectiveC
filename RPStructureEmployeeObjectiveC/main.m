//
//  main.m
//  RPStructureEmployeeObjectiveC
//
//  Created by Student P_07 on 23/10/16.
//  Copyright © 2016 Rupali Pakale. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Employee
{
    int employeeID;
    char employeeName[20];
    char designation[20];
    double basicSal;
};

void showEmployeeDetails(struct Employee emp);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct Employee emp[10];
        int i;
        
        printf("Enter Employee Details-\n");
        for(i=0;i<10;i++)
        {
            printf("Enter Employee ID\n");
            scanf("%d",&emp[i].employeeID);
            
            printf("Enter Employee Name\n");
            scanf("%s",emp[i].employeeName);
            
            printf("Enter Employee Designation\n");
            scanf("%s",emp[i].designation);

            printf("Enter Employee Basic Salary\n");
            scanf("%lf",&emp[i].basicSal);
            
        }
        for (i=0; i<10; i++) {
            showEmployeeDetails(emp[i]);
        }
        
    }
    return 0;
}

void showEmployeeDetails(struct Employee emp)
{
    
  printf("Employee Number = %d \nEmployee Name = %s \nEmployee designation = %s \nBasic salary = %lf\n",emp.employeeID,emp.employeeName,emp.designation,emp.basicSal);
    
    
}