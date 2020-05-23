package com.softserve.itacademy.addressbook;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AddressBookExtractor {
	private static Pattern fNamePattern = Pattern.compile("^First name: ([^,]*),.*");
	private static Pattern lNamePattern = Pattern.compile(".*Last name: ([^,]*),.*");
	private static Pattern addrPattern = Pattern.compile(".*Address: (.*)$");
	
	public static String getFName(String wholeString) {
		Matcher matcher = fNamePattern.matcher(wholeString);
		matcher.find();
		return matcher.group(1);
	}
	
	public static String getLName(String wholeString) {
		Matcher matcher = lNamePattern.matcher(wholeString);
		matcher.find();
		return matcher.group(1);
	}
	
	public static String getAddr(String wholeString) {
		Matcher matcher = addrPattern.matcher(wholeString);
		matcher.find();
		return matcher.group(1);
	}
}
