package Client.services;


import Client.model.UserCredentials;
import org.springframework.web.client.RestTemplate;

import java.math.BigDecimal;
import java.util.Scanner;

public class ConsoleService {

    private final Scanner scanner = new Scanner(System.in);
    public final String API_BASE_URL = "http://localhost:8080";
    private final RestTemplate restTemplate = new RestTemplate();


    private String authToken = null;


    public void setAuthToken(String authToken){
        this.authToken = authToken;
    }


    public int promptForMenuSelection(String prompt) {
        int menuSelection;
        System.out.print(prompt);
        try {
            menuSelection = Integer.parseInt(scanner.nextLine());
        } catch (NumberFormatException e) {
            menuSelection = -1;
        }
        return menuSelection;
    }

    public void printGreeting() {
        System.out.println("***************************");
        System.out.println("* What's this app called? *");
        System.out.println("*                         *");
        System.out.println("*        Oh right!        *");
        System.out.println("*                         *");
        System.out.println("*    FORGETful Shopper!   *");
        System.out.println("***************************");
    }

    public void printLoginMenu() {
        System.out.println();
        System.out.println("1: Register");
        System.out.println("2: Login");
        System.out.println("0: Exit");
        System.out.println();
    }

    public void printMainMenu() {
        clearConsole();
        System.out.println();
        System.out.println("1: My Pantry");
        System.out.println("2: My Shopping List");
        System.out.println("0: Exit");
        System.out.println();
    }


    public UserCredentials promptForCredentials() {
        String username = promptForString("Username: ");
        String password = promptForString("Password: ");
        return new UserCredentials(username, password);
    }


    public String promptForString(String prompt) {
        System.out.print(prompt);
        return scanner.nextLine();
    }

    public int promptForInt(String prompt) {
        System.out.print(prompt);
        while (true) {
            try {
                return Integer.parseInt(scanner.nextLine());
            } catch (NumberFormatException e) {
                System.out.println("Please enter a number.");
            }
        }
    }

    public void pause() {
        System.out.println("\n\nPress Enter to continue...");
        scanner.nextLine();
    }

    public void printErrorMessage() {
        System.out.println("An error occurred. Check the log for details.");
    }



    public String getStatusNameById(int n){
        if(n==1){
            return "By If Sale";
        }else if(n==2){
            return "Full";
        }else{
            return "NEED";
        }
    }


    public void printSeparator(int n){
        for(int i=0; i<n; i ++){
            System.out.print("-");
        }
    }

    public void clearConsole(){
        for(int i=0; i<15; i++){
            System.out.println();
        }
    }
}


