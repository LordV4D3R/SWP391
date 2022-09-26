/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users;

import java.io.Serializable;

/**
 *
 * @author tranq
 */
public class UserError implements Serializable{
    private String usernameErr;
    private String passwordErr;
    private String confirmNotMatch;
    private String usernameDuplicate;

    public UserError() {
    }

    public String getUsernameErr() {
        return usernameErr;
    }

    public void setUsernameErr(String usernameErr) {
        this.usernameErr = usernameErr;
    }

    public String getPasswordErr() {
        return passwordErr;
    }

    public void setPasswordErr(String passwordErr) {
        this.passwordErr = passwordErr;
    }

    public String getConfirmNotMatch() {
        return confirmNotMatch;
    }

    public void setConfirmNotMatch(String confirmNotMatch) {
        this.confirmNotMatch = confirmNotMatch;
    }

    public String getUsernameDuplicate() {
        return usernameDuplicate;
    }

    public void setUsernameDuplicate(String usernameDuplicate) {
        this.usernameDuplicate = usernameDuplicate;
    }
    
    
}
