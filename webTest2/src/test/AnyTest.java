package test;

public class AnyTest {

	private static float getResult(int d){
		return ((float)d / 117.0f) * 100.0f;
	}
	
	public static void main(String[] args) {
		
		float[] results = new float[10];
		results[0] = getResult(15);
		results[1] = getResult(14);
		results[2] = getResult(14);
		results[3] = getResult(13);
		results[4] = getResult(12);
		results[5] = getResult(11);
		results[6] = getResult(10);
		results[7] = getResult(10);
		results[8] = getResult(9);
		results[9] = getResult(9);
		
		float total = 0.0f;
		for(float f : results){
			total += f;
		}
		
		System.out.println("[15] : " + results[0]);
		System.out.println("[14] : " + results[1]);
		System.out.println("[14] : " + results[2]);
		System.out.println("[13] : " + results[3]);
		System.out.println("[12] : " + results[4]);
		System.out.println("[11] : " + results[5]);
		System.out.println("[10] : " + results[6]);
		System.out.println("[10] : " + results[7]);
		System.out.println("[9] : " + results[8]);
		System.out.println("[9] : " + results[9]);
		
		System.out.println("총합 : " + total);
	}
}
