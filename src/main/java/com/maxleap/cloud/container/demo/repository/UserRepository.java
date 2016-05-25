package com.maxleap.cloud.container.demo.repository;

import com.maxleap.cloud.container.demo.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * User：David Young
 * Date：16/5/24
 */
@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    @Modifying //修改操作
    @Transactional //事务性操作
    // 定义查询
    // @Param注解用于提取参数
    @Query("update UserEntity us set us.firstName=:qFirstName, us.lastName=:qLastName, us.password=:qPassword where us.id=:qId")
    public void updateUser(@Param("qFirstName") String firstName,
                           @Param("qLastName") String qLastName,
                           @Param("qPassword") String password,
                           @Param("qId") Integer id);
}