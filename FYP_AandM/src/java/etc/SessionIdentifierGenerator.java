/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package etc;

/**
 *
 * @author Anson
 */
import java.security.SecureRandom;
import java.math.BigInteger;

public final class SessionIdentifierGenerator {
  private SecureRandom random = new SecureRandom();

  public String nextSessionId() {
    return new BigInteger(50, random).toString(32);
  }
}
