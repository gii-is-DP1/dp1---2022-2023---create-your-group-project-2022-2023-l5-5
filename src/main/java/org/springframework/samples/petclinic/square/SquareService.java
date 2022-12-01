package org.springframework.samples.petclinic.square;

import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

@Service
public class SquareService {
    
    @Autowired
    private SquareRepository squareRepository;

    @Autowired
	public SquareService(SquareRepository squareRepository) {
		this.squareRepository = squareRepository;
	}

    
    @Transactional(readOnly = true)
	public Square findSquareById(int id) throws DataAccessException {
		return squareRepository.findById(id);
	}



    @Transactional
	public List<Square> findAll(){
		List<Square> allSquares= new ArrayList<Square>();
		squareRepository.findAll().forEach(allSquares::add);
		return allSquares;
	}



    @Transactional
    public Square findSquareByPosition(int coordinateX, int coordinateY) throws DataAccessException{
        return squareRepository.findByPosition(coordinateX,coordinateY);
    }
}