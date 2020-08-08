public class EmpWageBuilder1
{
	public static void empmethod(int fulltime, int emprateperhr, int  parttime ) // method define
{
	int workingdays = 0 ;
	int totalworkinghr =0 ;
	int emphr=0;
	int empwage=0;

while(totalworkinghr <= 100 && workingdays <=20 )
	{
	double empCheck = Math.floor(Math.random()*10)%3;
		switch ((int)empCheck)
		{
		case 1:
			emphr = 8;
			break;
		case 2:
			emphr=4;
			break;
		default:
			emphr=0;
			break;

		}
		workingdays++;
		totalworkinghr = totalworkinghr + emphr;
	}
	empwage=emphr*emprateperhr ;
	long totalsalary = workingdays * empwage;
	System.out.println("Employee Monthly Salary  "+totalsalary);

}
	public static void main(String args[])
	{
	 final int fulltime = 1;
	 final int emprateperhr=20;
	 final int parttime=2;

	empmethod(1,20,2); //method call
}
}

