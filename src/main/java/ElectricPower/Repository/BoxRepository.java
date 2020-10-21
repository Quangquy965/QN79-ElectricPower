package ElectricPower.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ElectricPower.Entity.BoxEntity;

public interface BoxRepository extends JpaRepository<BoxEntity, Long>{

}
