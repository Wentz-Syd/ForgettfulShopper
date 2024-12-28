package org.Server.controller;

import org.Server.dao.ItemDao;
import org.Server.exception.DaoException;
import org.Server.model.Item;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@CrossOrigin
public class ItemController {

    private ItemDao itemDao;

    public ItemController(ItemDao itemDao) {
        this.itemDao = itemDao;
    }

    @RequestMapping(path = "/item/new", method = RequestMethod.POST)
    public void createItem(@RequestBody Item item){
        try{
            itemDao.createItem(item);

        } catch (DaoException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Item creation failed.");
        }
    }

    @RequestMapping(path = "/item/{id}", method = RequestMethod.GET)
    public Item getItem(@PathVariable int id){
        try{
            Item item = itemDao.getItemById(id);
            if(item == null){
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Item not found.");
            } else {
                return item;
            }
        } catch (DaoException e){
            throw new DaoException("Unable to Retrieve Item", e);
        }
    }



}
