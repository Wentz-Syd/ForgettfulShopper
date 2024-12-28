package org.Server.dao;

import org.Server.model.Pantry;

import java.util.List;

public interface PantryDao {

    List<Pantry> getPantries(int onwerId);

    Pantry getPantryById(int pantryId);

    Pantry getPantryByName(String pantryName);

    Pantry createPantry(Pantry pantry);

    Boolean updatePantry(Pantry pantry);

    Boolean checkPantryNameForUser(String pantryName, int userId);

}
