package ch18;

public class Temperature {

	// (0°C × 9/5) + 32 = 32°F
	
	public static double convertToFahrenheit(double Celsius) {
		return (Celsius * 9/5) + 32;
	}
	
	public static String getProgramName() {
		return "온도계 변환기 1.1";
	}
	
}
