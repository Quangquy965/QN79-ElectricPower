package ElectricPower.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ElectricPower.Entity.ElectriccardEntity;

public interface ElectriccardRepository extends JpaRepository<ElectriccardEntity, Long>{

}
