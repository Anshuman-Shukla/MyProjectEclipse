package pattern;

import java.util.Scanner;

public class loop {

	public static void main(String[] args) {
		
		

	
		/*
		 * for(int i=0;i<5;i++) {
		 * 
		 * for(int j=0;j<=i;j++) { System.out.print("*"); } System.out.println();
		 * 
		 * }
		 * 
		 * for(int i=0;i<5;i++) {
		 * 
		 * for(int j=(5-i);j>=0;j--) { System.out.print(" "); } for(int j=0;j<=i;j++) {
		 * System.out.print("* "); } System.out.println();
		 * 
		 * }
		 * 
		 */

		while (true) {
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter to find number of prime Number;");
			int num1 = sc.nextInt();
			int num=num1;
		//sc.close();
		int count=0;
		//while(num>0) {
			for(int i=1;i<=num;i++) {
				//System.out.println("running");
			if(num%i==0) {
				count++;
				
			}
		}
		if(count==2) {
			System.out.println(" Number is Prime");
		}else {
			System.out.println("Number is not Prime");
		}
		}}
}
	


	


