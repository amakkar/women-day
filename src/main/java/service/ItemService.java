package service;

import java.util.List;

import model.Item;

public interface ItemService {
	
	List<Item> getItems(String cityInfo, String localityInfo);

}
