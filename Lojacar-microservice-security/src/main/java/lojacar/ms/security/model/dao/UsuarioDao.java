package lojacar.ms.security.model.dao;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import lojacar.ms.security.model.entity.Usuario;

@Repository
public interface UsuarioDao extends PagingAndSortingRepository<Usuario,Long> {

	public Usuario findByUsername (@Param("nombre") String username);
}
