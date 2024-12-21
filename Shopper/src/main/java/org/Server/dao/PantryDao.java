package org.Server.dao;

import org.Server.model.Pantry;

import java.util.List;

public interface PantryDao {

    List<Pantry> getLists(int onwerId);

    Pantry getPantryById(int pantryId);

    Pantry getPantryByName(String pantryName);

    Pantry createPantry(Pantry pantry);

    Pantry updatePantry(int pantryid);

}
