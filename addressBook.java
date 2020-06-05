import java.io.IOException;
import java.util.*;
import java.io.FileWriter;
public class addressBook {
public static void main(String[] args) throws IOException {
LinkedList<contacts> ob = new LinkedList<contacts>();
Scanner sc = new Scanner(System.in);
System.out.println("Contact Book");
System.out.println("Select option from the menu");
boolean end_key = true;
while(end_key){
System.out.println("1: Add 2: Delete 3: Update 4: View 5: Sort 9: Exit");
int choice = sc.nextInt();
switch (choice){
case 1:
sc.nextLine();
System.out.println("Enter the first name:");
String fname = sc.nextLine();
System.out.println("Enter the last name:");
String lname = sc.nextLine();
System.out.println("Enter the City name:");
String c_name = sc.nextLine();
System.out.println("Enter the State name:");
String s_name = sc.nextLine();
System.out.println("Enter the zip code:");
int z_code = sc.nextInt();
System.out.println("Enter the mobile number:");
long m_number = sc.nextLong();
ob.add(new contacts( fname, lname, c_name, s_name, z_code, m_number));
break;
case 2:
sc.nextLine();
System.out.println("Enter the first name of the contact to be deleted");
String delete = sc.nextLine();
for(ListIterator<contacts> iter = ob.listIterator(); iter.hasNext();){

contacts data = iter.next();
if(delete.equals(data.getRecord())){
iter.remove();
}
}
System.out.println("Contact deleted");
break;
case 3:
sc.nextLine();
System.out.println("Enter the name of the contact you want to update");
String update = sc.nextLine();
for(ListIterator<contacts> iter = ob.listIterator(); iter.hasNext();){
contacts data = iter.next();
if(update.equals(data.getRecord())){
System.out.println("Update 1: City 2:State 3:Zip Code 4:Mobile Number ");
int choice_2 = sc.nextInt();
switch (choice_2){
case 1:
sc.nextLine();
System.out.println("Update new City:");
data.Cname = sc.nextLine();
break;
case 2:
import java.io.IOException;
import java.util.*;
import java.io.FileWriter;
public class addressBook {

    public static final void main(String... args) throws IOException {
        LinkedList<contacts> ob = new LinkedList<contacts>();
        Scanner sc = new Scanner(System.in);
        System.out.println("Contact Book");
        System.out.println("Select option from the menu");
        boolean end_key = true;
        while(end_key){
            System.out.println("1: Add 2: Delete 3: Update 4: View 5: Sort 9: Exit");
            int choice = sc.nextInt();
            switch (choice){
                case 1:
                    sc.nextLine();
                    System.out.println("Enter the first name:");
                    String fname = sc.nextLine();
                    System.out.println("Enter the last name:");
                    String lname = sc.nextLine();
                    System.out.println("Enter the City name:");
                    String c_name = sc.nextLine();
                    System.out.println("Enter the State name:");
                    String s_name = sc.nextLine();
                    System.out.println("Enter the zip code:");
                    int z_code = sc.nextInt();
                    System.out.println("Enter the mobile number:");
                    long m_number = sc.nextLong();

                    ob.add(new contacts( fname, lname, c_name, s_name, z_code, m_number));
                    break;
                case 2:
                    sc.nextLine();
                    System.out.println("Enter the first name of the contact to be deleted");
                    String delete = sc.nextLine();
                    for(ListIterator<contacts> iter = ob.listIterator(); iter.hasNext();){
                        contacts data = iter.next();
                        if(delete.equals(data.getRecord())){
                            iter.remove();
                        }
                    }
                    System.out.println("Contact deleted");
                    break;
                case 3:
                    sc.nextLine();
                    System.out.println("Enter the name of the contact you want to update");
                    String update = sc.nextLine();
                    for(ListIterator<contacts> iter = ob.listIterator(); iter.hasNext();){
                        contacts data = iter.next();
                        if(update.equals(data.getRecord())){
                            System.out.println("Update 1: City 2:State 3:Zip Code 4:Mobile Number ");
                            int choice_2 = sc.nextInt();
                            switch (choice_2){
                                case 1:
                                    sc.nextLine();
                                    System.out.println("Update new City:");
                                    data.Cname = sc.nextLine();
                                    break;
                                case 2:
                                    System.out.println("Update the State:");
                                    data.Sname = sc.nextLine();
                                    break;
                                case 3:
                                    System.out.println("Update the Zip Code");
                                    data.Z_code = sc.nextInt();
                                    break;
                                case 4:
                                    System.out.println("Update the mobile number");
                                    data.M_number = sc.nextLong();
                                    break;
                                default:
                                    System.out.println("Enter valid input");
                                    break;
                            }
                            System.out.println("Contact updated");
                        }
                    }
                    break;

                case 4:
                    for(contacts cont : ob) {
                        System.out.println(cont);
                    }
                    break;
                case 5:
                    System.out.println("Press 1: Sort by Name 2: Sort by Zip code 3: Sort by State");
                    int choice_2 = sc.nextInt();
                    switch (choice_2){
                        case 1:
                            Collections.sort(ob,new Comparator<contacts>(){
                                public int compare(contacts obj1,contacts obj2){
                                    return obj2.Fname.compareTo(obj1.Fname);
                                }
                            }.reversed());
                            break;
                        case 2:
                            Collections.sort(ob,new Comparator<contacts>(){
                                public int compare(contacts obj1,contacts obj2){
                                    return obj2.Z_code - obj1.Z_code;
                                }
                            }.reversed());
                            break;
                        case 3:
                            Collections.sort(ob,new Comparator<contacts>(){
                                public int compare(contacts obj1,contacts obj2){
                                    return obj2.Sname.compareTo(obj1.Sname);
                                }
                            }.reversed());
                            break;
                        default:
                            System.out.println("Enter valid input");
                            break;
                    }
                    for(contacts cont : ob)
                        System.out.println(cont);
                    break;
                case 9:
                    end_key = false;
                    break;
                default:
                    System.out.println("Enter valid input");
                    break;
            }

        }
        FileWriter writer = new FileWriter("Output.txt");
        for(contacts cont : ob) {
            writer.write(String.valueOf(cont));
        }
        writer.close();

    }
}



class contacts{
    public String Fname;
    public String Lname;
    public String Cname;
    public String Sname;
    public int Z_code;
    public long M_number;
    contacts( String Fname, String Lname,String c_name,String  s_name,int z_code,long m_number){
    this.Fname = Fname;
    this.Lname = Lname;
    this.Cname = c_name;
    this.Sname = s_name;
    this.Z_code = z_code;
    this.M_number = m_number;
    }
    public String toString(){
        return this.Fname +" "+ this.Lname +" "+ this.Cname +" "+ this.Sname +" "+ this.Z_code +" "+ this.M_number;
    }
    public String getRecord(){
        return this.Fname;
    }

}
