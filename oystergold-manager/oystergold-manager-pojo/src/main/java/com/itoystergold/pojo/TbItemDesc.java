package com.itoystergold.pojo;

import java.util.Date;

public class TbItemDesc {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_item_desc.item_id
     *
     * @mbg.generated
     */
    private Long itemId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_item_desc.created
     *
     * @mbg.generated
     */
    private Date created;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_item_desc.updated
     *
     * @mbg.generated
     */
    private Date updated;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_item_desc.item_desc
     *
     * @mbg.generated
     */
    private String itemDesc;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_item_desc.item_id
     *
     * @return the value of tb_item_desc.item_id
     *
     * @mbg.generated
     */
    public Long getItemId() {
        return itemId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_item_desc.item_id
     *
     * @param itemId the value for tb_item_desc.item_id
     *
     * @mbg.generated
     */
    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_item_desc.created
     *
     * @return the value of tb_item_desc.created
     *
     * @mbg.generated
     */
    public Date getCreated() {
        return created;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_item_desc.created
     *
     * @param created the value for tb_item_desc.created
     *
     * @mbg.generated
     */
    public void setCreated(Date created) {
        this.created = created;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_item_desc.updated
     *
     * @return the value of tb_item_desc.updated
     *
     * @mbg.generated
     */
    public Date getUpdated() {
        return updated;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_item_desc.updated
     *
     * @param updated the value for tb_item_desc.updated
     *
     * @mbg.generated
     */
    public void setUpdated(Date updated) {
        this.updated = updated;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_item_desc.item_desc
     *
     * @return the value of tb_item_desc.item_desc
     *
     * @mbg.generated
     */
    public String getItemDesc() {
        return itemDesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_item_desc.item_desc
     *
     * @param itemDesc the value for tb_item_desc.item_desc
     *
     * @mbg.generated
     */
    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc == null ? null : itemDesc.trim();
    }
}