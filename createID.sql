# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-12-02 15:19                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Users"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Users` (
    `UserID` VARCHAR(10) NOT NULL,
    `UserName` VARCHAR(10),
    `Password` VARCHAR(8),
    `Email` VARCHAR(20),
    `IsSuperAdmin` VARCHAR(10),
    CONSTRAINT `PK_Users` PRIMARY KEY (`UserID`)
);

# ---------------------------------------------------------------------- #
# Add table "Roles"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Roles` (
    `RoleID` VARCHAR(10) NOT NULL,
    `RoleTile` VARCHAR(40),
    CONSTRAINT `PK_Roles` PRIMARY KEY (`RoleID`)
);

# ---------------------------------------------------------------------- #
# Add table "UserRoles"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `UserRoles` (
    `UserRoleID` VARCHAR(40) NOT NULL,
    `RoleID` VARCHAR(10) NOT NULL,
    `UserID` VARCHAR(10) NOT NULL,
    CONSTRAINT `PK_UserRoles` PRIMARY KEY (`UserRoleID`, `RoleID`, `UserID`)
);

# ---------------------------------------------------------------------- #
# Add table "Permissions"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `Permissions` (
    `PermissionsID` VARCHAR(10) NOT NULL,
    `PermissionsTilte` VARCHAR(40),
    `PermissionsConstantName` VARCHAR(40),
    PRIMARY KEY (`PermissionsID`)
);

# ---------------------------------------------------------------------- #
# Add table "RolePermissions"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `RolePermissions` (
    `RolePermissionsID` VARCHAR(10) NOT NULL,
    `RoleID` VARCHAR(40) NOT NULL,
    `PermissionsID` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_RolePermissions` PRIMARY KEY (`RolePermissionsID`, `RoleID`, `PermissionsID`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `UserRoles` ADD CONSTRAINT `Roles_UserRoles` 
    FOREIGN KEY (`RoleID`) REFERENCES `Roles` (`RoleID`);

ALTER TABLE `UserRoles` ADD CONSTRAINT `Users_UserRoles` 
    FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

ALTER TABLE `RolePermissions` ADD CONSTRAINT `Roles_RolePermissions` 
    FOREIGN KEY (`RoleID`) REFERENCES `Roles` (`RoleID`);

ALTER TABLE `RolePermissions` ADD CONSTRAINT `Permissions_RolePermissions` 
    FOREIGN KEY (`PermissionsID`) REFERENCES `Permissions` (`PermissionsID`);
