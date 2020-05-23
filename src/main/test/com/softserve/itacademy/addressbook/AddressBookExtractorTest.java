package com.softserve.itacademy.addressbook;

import org.junit.Test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static org.junit.Assert.*;

public class AddressBookExtractorTest {
	private static Pattern addrPattern = Pattern.compile(".*Address: (.+)$");
	
	@Test
	public void name() {
		String text = "blabla, Address: Kekw street";
		Matcher matcher = Pattern.compile(".*Address: (.+)$").matcher(text);
		matcher.find();
		matcher.group(1);
	}
	
	@Test
	public void fullDataTest() {
		String toBeExtracted = "First name: Petro, Last name: Ivanenko, Address: Kekw street";
		assertEquals("Kekw street", AddressBookExtractor.getAddr(toBeExtracted));
		assertEquals("Petro", AddressBookExtractor.getFName(toBeExtracted));
		assertEquals("Ivanenko", AddressBookExtractor.getLName(toBeExtracted));
	}
}
