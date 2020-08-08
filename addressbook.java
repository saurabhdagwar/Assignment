import java.io.*;
import java.util.Scanner;

public class addressbook {

    private contact[] friends;
    private int numfriends;

    public addressbook() {
                friends = new contact[10];
                numfriends = 0;
    }

    public void addcontact(contact c) {
                friends[numfriends] = c;
                numfriends++;
    }

    public void printcontacts() {
                for (int i=0;i<numfriends;i++)
                friends[i].printcontact();
    }

    public int numcontacts() {
                return numfriends;
    }

    private int havecontact(String fn, String ln) {

                for (int i=0;i<numfriends;i++)
                if (friends[i].getfName().equals(fn) && friends[i].getlName().equals(ln))
                                return i;
                return -1;
    }

    public void deletecontact(String fn, String ln) {

                int place = havecontact(fn,ln);
                if (place >= 0) {
                friends[place] = friends[numfriends-1];
                numfriends--;
                System.out.println("Contact Deleted.");
                }
                else
                        System.out.println("Contact Not Present.");
    }

    public static void menu() {
                System.out.println("1.Add a new contact to your address book.");
                System.out.println("2.Delete a contact from your address book.");
                System.out.println("3.Print out the number of contacts you have.");
                System.out.println("4.Print out information of all of your contacts.");
                System.out.println("5.Quit.");
                System.out.println("Enter your menu choice:");
    }



    public static void main(String[] args) {

                Scanner stdin = new Scanner(System.in);

                addressbook cont = new addressbook();

                menu();

                int choice = stdin.nextInt();


                while (choice!=5) {

                if (choice == 1) {

                                if (cont.numcontacts() < 10) {


                                System.out.print("Enter First name: ");
                                String fname = stdin.next();
                                System.out.print("Enter Last name: ");
                                String lname = stdin.next();
                                stdin.nextLine();
                                System.out.print("Enter Address: ");
                                String add = stdin.nextLine();
                                System.out.print("Enter City name: ");
                                String city = stdin.next();
                                System.out.print("Enter State name: ");
                                String state = stdin.next();
                                System.out.print("Enter Phone number: ");
                                long pnumber = stdin.nextLong();
                                System.out.print("Enter Zip Code: ");
                                long zip = stdin.nextLong();

                                cont.addcontact(new contact(fname,lname,add,city,state,pnumber,zip));
                                }
                                else
                                System.out.println("Sorry, can not add anyone, your AddressBook is full.");
                }

                 else if (choice == 2) {
                                System.out.println("What is the first name of the contact you want to delete?");
                                String fname = stdin.next();
                                System.out.println("What is the last name of the contact you want to delete?");
                                String lname = stdin.next();
                                cont.deletecontact(fname, lname);
                }
                else if (choice == 3) {
                                System.out.println("You have " + cont.numcontacts() + " contacts.");
                }
                else if (choice == 4) {
                                cont.printcontacts();
                }
                else if (choice !=5) {
                                System.out.println("Sorry, that was an invalid menu choice, try again.");
                }

                menu();
                choice = stdin.nextInt();
                }

    }
}
