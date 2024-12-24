package org.Server.controller;

import org.Server.dao.PantryDao;
import org.Server.exception.DaoException;
import org.Server.model.Pantry;
import org.Server.model.User;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@CrossOrigin
public class PantryController {

    private PantryDao pantryDao;

    public PantryController(PantryDao pantryDao) {
        this.pantryDao = pantryDao;
    }

    @RequestMapping(path = "/pantry", method = RequestMethod.GET)
    public List<Pantry> getPantries(@RequestBody User user){
        try{
            return pantryDao.getPantries(user.getId());
        } catch (DaoException e){
            throw new DaoException("Unable to Retrieve Pantries", e);
        }
    }

    @RequestMapping(path = "/pantry/{id}", method = RequestMethod.GET)
    public Pantry getPantry(@PathVariable int id){
        try{
            Pantry pantry = pantryDao.getPantryById(id);
            if(pantry == null){
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Pantry not found.");
            } else {
                return pantry;
            }
        } catch (DaoException e){
            throw new DaoException("Unable to retrieve Pantry", e);
        }
    }

}
