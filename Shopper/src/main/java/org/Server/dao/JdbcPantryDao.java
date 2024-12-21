package org.Server.dao;

import org.Server.exception.DaoException;
import org.Server.model.Pantry;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class JdbcPantryDao implements PantryDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcPantryDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Pantry> getLists(int onwerId) {
        return List.of();
    }

    @Override
    public Pantry getPantryById(int pantryId) {
        return null;
    }

    @Override
    public Pantry getPantryByName(String pantryName) {
        return null;
    }


    @Override
    public Pantry createPantry(Pantry pantry) {
        Pantry newPantry = null;
        String sql = "INSERT INTO pantry (pantry_owner_id, name, description) VALUES (?,?,?) RETURNING pantry_id";

        try{
            int newPantryId = jdbcTemplate.queryForObject(sql, int.class, pantry.getPantryName(), pantry.getDescription());
            newPantry = getPantryById(newPantryId);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return newPantry;
    }

    @Override
    public Pantry updatePantry(int pantryid) {
        return null;
    }
}
