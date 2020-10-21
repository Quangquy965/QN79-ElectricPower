package ElectricPower.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ElectricPower.Entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>{
	UserEntity findOneByUserNameAndStatus(String name, int status);
}
