package org.Server.dao;

import org.Server.exception.DaoException;
import org.Server.model.Pantry;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.ArrayList;
import java.util.List;

public class JdbcPantryDao implements PantryDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcPantryDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Pantry> getPantries(int ownerId) {
        List<Pantry> pantries = new ArrayList<>();
        String sql = "SELECT pantry_id, pantry_owner_id, name, desciption FROM pantry WHERE pantry_owner_id = ?;";
        try{
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, onwerId);
            while (results.next()){
                Pantry pantry = mapRowToPantry(results);
                pantries.add(pantry);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return pantries;
    }

    @Override
    public Pantry getPantryById(int pantryId) {
        Pantry pantry = null;
        String sql = "SELECT pantry_id, pantry_owner_id, name, description FROM pantry WHERE name = ?";

        try{
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, pantryId);
            if(results.next()){
                pantry = mapRowToPantry(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return pantry;
    }

    @Override
    public Pantry getPantryByName(String pantryName) {
        if(pantryName == null) throw new IllegalArgumentException("Pantry Name Cannot be Null");
        Pantry pantry = null;
        String sql = "SELECT pantry_id, pantry_owner_id, name, description FROM pantry WHERE name = ?";

        try{
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, pantryName);
            if(results.next()){
                pantry = mapRowToPantry(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return pantry;
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
    public Pantry updatePantry(Pantry pantry) {
        String sql = "UPDATE pantry SET name=?, description=? WHERE pantry_id=?;";
        try{
            int rowsUpdate = jdbcTemplate.update(sql, pantry.getPantryName(), pantry.getDescription(), pantry.getPantryId());
            return rowsUpdate > 0;
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }catch (DataIntegrityViolationException e) { throw new DaoException("Data integrity violation", e);}
        return null;
    }

    private Pantry mapRowToPantry(SqlRowSet rs){
        Pantry pantry = new Pantry();
        pantry.setPantryId(rs.getInt("pantry_id"));
        pantry.setOwnerId(rs.getInt("pantry_owner_id"));
        pantry.setPantryName(rs.getString("name"));
        pantry.setDescription(rs.getString("description"));
        return pantry;
    }


}
