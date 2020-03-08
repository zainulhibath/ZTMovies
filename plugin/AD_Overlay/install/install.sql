-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE IF NOT EXISTS `ad_overlay_codes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `users_id` INT(11) NOT NULL,
  `code` TEXT NULL,
  `status` ENUM('a', 'i') NOT NULL DEFAULT 'i',
  `created` DATETIME NULL,
  `modified` DATETIME NULL,
  INDEX `fk_ad_overlay_codes_users_idx` (`users_id` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_ad_overlay_codes_users`
    FOREIGN KEY (`users_id`)
    REFERENCES `users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
