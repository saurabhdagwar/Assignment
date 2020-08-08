public class empWageCompanies
{
	public static final int IsPartTime=1;
	public static final int IsFullTime=2;
	public static int EmpWage(String company, int emprateperhr, int noofworkingdays, int maxhrpermonth)
	{
		int emphr=0, totalemphr=0, totalworkingdays=0;
		while(totalemphr <= maxhrpermonth && totalworkingdays <= noofworkingdays )
		{
			totalworkingdays++;
			double empCheck=Math.floor(Math.random()*10)%3;
			switch((int) empCheck)
			{
			case IsPartTime:
				emphr=4;
				break;
			case IsFullTime:
				emphr=8;
				break;
			default:
				emphr=0;
				break;
			}
			totalemphr+=emphr;
			System.out.println("Day: " +totalworkingdays+ "Emp Hrs: "+emphr);
		}
		int totalempwage =  totalemphr*emprateperhr;
		System.out.println("Total Emp wagee for companies: "+company+ "is"+totalempwage);
		return totalempwage;
	}
	public static void main(String args[])
	{
	EmpWage("Amazon",20,2,10);
	EmpWage("Jio",40,5,15);

	}




}
