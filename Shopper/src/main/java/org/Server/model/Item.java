package org.Server.model;

public class Item {

    private int itemId;
    private int pantryId;
    private String itemName;
    private String status;
    private String type;
    private String description;

    public Item() {}

    public Item(int itemId, int pantryId, String itemName, String status, String type, String description) {
        this.itemId = itemId;
        this.pantryId = pantryId;
        this.itemName = itemName;
        this.status = status;
        this.type = type;
        this.description = description;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public int getPantryId() {
        return pantryId;
    }

    public void setPantryId(int pantryId) {
        this.pantryId = pantryId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
