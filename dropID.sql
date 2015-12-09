# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-12-02 15:19                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `UserRoles` DROP FOREIGN KEY `Roles_UserRoles`;

ALTER TABLE `UserRoles` DROP FOREIGN KEY `Users_UserRoles`;

ALTER TABLE `RolePermissions` DROP FOREIGN KEY `Roles_RolePermissions`;

ALTER TABLE `RolePermissions` DROP FOREIGN KEY `Permissions_RolePermissions`;

# ---------------------------------------------------------------------- #
# Drop table "RolePermissions"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `RolePermissions` DROP PRIMARY KEY;

DROP TABLE `RolePermissions`;

# ---------------------------------------------------------------------- #
# Drop table "Permissions"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Permissions`;

# ---------------------------------------------------------------------- #
# Drop table "UserRoles"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `UserRoles` DROP PRIMARY KEY;

DROP TABLE `UserRoles`;

# ---------------------------------------------------------------------- #
# Drop table "Roles"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Roles` DROP PRIMARY KEY;

DROP TABLE `Roles`;

# ---------------------------------------------------------------------- #
# Drop table "Users"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Users` DROP PRIMARY KEY;

DROP TABLE `Users`;
