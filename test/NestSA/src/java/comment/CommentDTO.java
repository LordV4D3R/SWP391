/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package comment;

import java.io.Serializable;

/**
 *
 * @author tranq
 */
public class CommentDTO implements Serializable {

    private int commentId;
    private int userId;
    private int productId;
    private String comment;
    private boolean status;

    public CommentDTO() {
    }

    public CommentDTO(int commentId, int userId, int productId, String comment, boolean status) {
        this.commentId = commentId;
        this.userId = userId;
        this.productId = productId;
        this.comment = comment;
        this.status = status;
    }

    public CommentDTO(int userId, int productId, String comment, boolean status) {
        this.userId = userId;
        this.productId = productId;
        this.comment = comment;
        this.status = status;
    }

    /**
     * @return the commentId
     */
    public int getCommentId() {
        return commentId;
    }

    /**
     * @param commentId the commentId to set
     */
    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    /**
     * @return the userId
     */
    public int getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }

    /**
     * @return the productId
     */
    public int getProductId() {
        return productId;
    }

    /**
     * @param productId the productId to set
     */
    public void setProductId(int productId) {
        this.productId = productId;
    }

    /**
     * @return the comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * @param comment the comment to set
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

    /**
     * @return the status
     */
    public boolean isStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(boolean status) {
        this.status = status;
    }

}
