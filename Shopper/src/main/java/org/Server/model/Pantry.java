package org.Server.model;

public class Pantry {

    private int pantryId;
    private int ownerId;
    private String pantryName;
    private String description;

    public Pantry() {};

    public Pantry(int pantryId, int ownerId, String pantryName, String description) {
        this.pantryId = pantryId;
        this.ownerId = ownerId;
        this.pantryName = pantryName;
        this.description = description;
    }

    public int getPantryId() {
        return pantryId;
    }

    public void setPantryId(int pantryId) {
        this.pantryId = pantryId;
    }

    public int getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(int ownerId) {
        this.ownerId = ownerId;
    }

    public String getPantryName() {
        return pantryName;
    }

    public void setPantryName(String pantryName) {
        this.pantryName = pantryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
