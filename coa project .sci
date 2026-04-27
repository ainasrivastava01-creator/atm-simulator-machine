clc;

// Initialize values
correct_pin = 1234;
balance = 1000;

// Ask user to enter PIN
pin = input("Enter your ATM PIN: ");

if pin == correct_pin then
    disp("Login Successful");

    choice = 0;

    while choice <> 4
        disp(" ");
        disp("===== ATM MENU =====");
        disp("1. Check Balance");
        disp("2. Deposit Money");
        disp("3. Withdraw Money");
        disp("4. Exit");

        choice = input("Enter your choice: ");

        select choice

        case 1 then
            disp("Current Balance = " + string(balance));

        case 2 then
            deposit = input("Enter amount to deposit: ");

            if deposit > 0 then
                balance = balance + deposit;
                disp("Amount Deposited Successfully");
                disp("Updated Balance = " + string(balance));
            else
                disp("Invalid Deposit Amount");
            end

        case 3 then
            withdraw = input("Enter amount to withdraw: ");

            if (withdraw <= balance) & (withdraw > 0) then
                balance = balance - withdraw;
                disp("Please collect your cash");
                disp("Remaining Balance = " + string(balance));
            else
                disp("Insufficient Balance or Invalid Amount");
            end

        case 4 then
            disp("Thank you for using ATM Simulator");

        else
            disp("Invalid Choice");
        end
    end

else
    disp("Incorrect PIN. Access Denied");
end
