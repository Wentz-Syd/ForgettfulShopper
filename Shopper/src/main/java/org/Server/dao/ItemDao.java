package org.Server.dao;

import org.Server.model.Item;

import java.util.List;

public interface ItemDao {

    List<Item> getItems();

    Item getItemById(int itemId);

    Item getItemByName(String itemName);

    Item createItem(Item item);

    Item updateItem(int itemId);

}
