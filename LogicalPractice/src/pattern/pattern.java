package pattern;

public class pattern {
	private int x=10;

	public static void main(String[] args) {
		/*
		 * int num=1234567; System.out.println((int)Math.log10(num)+1); //int d =
		 * (int)Math.log10(num) + 1;
		 */	

		/*
		 * int arr[] = {2,3,4,5,5,6,3,2,};
		 * 
		 * 
		 * int l=arr.length; for(int i=0;i<l;i++) { System.out.println(arr[i]+" "); }
		 * int temp; for(int i=0;i<l/2;i++) { temp=arr[i]; arr[i]=arr[l-1-i];
		 * arr[l-1-i]=temp; }
		 * 
		 * for(int i=0;i<l;i++) { System.out.print(arr[i]+" "); }
		 */
		
	//	System.out.println(x);
for(int i=0;i<5;i++) {
			
			for(int j=0;j<5-i;j++) {
				System.out.print("*");
			}
			System.out.println();
			
		}

		for (int i = 0; i < 5; i++) {
			
			for(int j=(5-i);j>=0;j--) {
				System.out.print(" ");
			}
			
			for (int j = 0; j <=i; j++) {
				System.out.print("* ");
			}
			System.out.println();

		}
		// outer loop to handle number of rows 
		for (int i = 0; i < 5; i++) {
			 // inner loop to handle number spaces
			for (int j = 2*(5 - i); j >= 0; j--) {
				System.out.print(" ");
			}
			 //  inner loop to handle number of columns
			for (int j = 0; j <= i; j++) {
				System.out.print("* ");
			}
			System.out.println();

		}
		int num1=1;
		for (int i = 0; i < 5; i++) {
			for (int j = 0; j <=i; j++) {
				System.out.print(num1+" ");
				num1++;
			}
			System.out.println();

		}
		
		int num=0;
		for (int i = 0; i < 5; i++) {
			num=1;
			for (int j = 0; j <=i; j++) {
				System.out.print(num+" ");
				num++;
			}
			System.out.println();

		}
		
	}

}


