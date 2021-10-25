package application.mapper;


import application.dtoes.AbstractDto;
import application.entities.AbstractEntity;

public interface Mapper<E extends AbstractEntity, D extends AbstractDto> {

    E toEntity(D dto);

    D toDto(E entity);
}
