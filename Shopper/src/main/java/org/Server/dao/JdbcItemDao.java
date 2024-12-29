package org.Server.dao;

import org.Server.exception.DaoException;
import org.Server.model.Item;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class JdbcItemDao implements ItemDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcItemDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Item> getItems() {
        return List.of();
    }

    @Override
    public Item getItemById(int itemId) {
        Item item = null;
        String sql = "SELECT item_id, pantry_id, name, status, type, description FROM item WHERE item_id = ?";

        try{
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, itemId);
            if(results.next()){
                item = mapRowToItem(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return item;
    }

    @Override
    public Item getItemByName(String itemName) {
        return null;
    }

    @Override
    public Item createItem(Item item) {
        Item newItem = null;
        String sql = "INSERT INTO item (pantry_id, name, status, type, description) VALUES (?,?,?,?,?) RETURNING item_id";

        try{
            int newItemId = jdbcTemplate.queryForObject(sql, new Object[]{ item.getPantryId(), item.getItemName(), item.getStatus(), item.getType(), item.getDescription() }, Integer.class);
            newItem = getItemById(newItemId);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return item;
    }

    @Override
    public Item updateItem(int itemId) {
        return null;
    }

    private Item mapRowToItem(SqlRowSet rs){
        Item item = new Item();
        item.setItemId(rs.getInt("item_id"));
        item.setPantryId(rs.getInt("pantry_id"));
        item.setItemName(rs.getString("name"));
        item.setStatus(rs.getString("status"));
        item.setType(rs.getString("type"));
        item.setDescription("description");
        return item;
    }
}
