UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_RIFLEMAN' WHERE Unit = 'UNIT_MUSKETMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_RIFLEMAN' WHERE Unit = 'UNIT_SPANISH_CONQUISTADOR';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CUIRASSIER' WHERE Unit = 'UNIT_KNIGHT';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_MUGHAL_SOWAR' WHERE Unit = 'UNIT_INDIAN_VARU';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_MACEMAN' WHERE Unit = 'UNIT_SWORDSMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_MACEMAN' WHERE Unit = 'UNIT_ROMAN_LEGION';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_MACEMAN' WHERE Unit = 'UNIT_KONGO_SHIELD_BEARER';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_MEDIEVAL_HORSEMAN' WHERE  Unit = 'UNIT_HORSEMAN';

UPDATE Units SET Combat = 46 WHERE UnitType = 'UNIT_JAPANESE_SAMURAI';

UPDATE Units SET Combat = 41 WHERE UnitType = 'UNIT_ROMAN_LEGION';

UPDATE ModifierArguments SET Value = 9 WHERE ModifierId = 'CONQUISTADOR_SPECIFIC_UNIT_COMBAT' AND Name = 'Amount';

/* Expanded Recon Class */
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_EXPLORER' WHERE Unit = 'UNIT_SCOUT';

UPDATE Units SET InitialLevel = 2 WHERE UnitType = 'UNIT_SCOUT' OR UnitType = 'UNIT_EXPLORER' OR UnitType = 'UNIT_RANGER' OR UnitType = 'UNIT_SNIPER' OR UnitType = 'UNIT_AMAZON_SCOUT';

UPDATE Units SET MandatoryObsoleteTech = 'TECH_ADVANCED_BALLISTICS' WHERE UnitType = 'UNIT_RANGER';

UPDATE Units SET Range = 2 WHERE UnitType = 'UNIT_MACHINE_GUN';

UPDATE Units SET BaseSightRange = 2 WHERE UnitType='UNIT_NATURALIST';

/* Expanded Recon Promotions Rework */
UPDATE UnitPromotions SET Name='LOC_PROMOTION_SPYGLASS_NAME', Description='LOC_PROMOTION_SPYGLASS_DESCRIPTION' WHERE UnitPromotionType='PROMOTION_GUERRILLA';
UPDATE UnitPromotions SET Name='LOC_PROMOTION_GUERRILLA_NAME', Description='LOC_PROMOTION_GUERRILLA_DESCRIPTION' WHERE UnitPromotionType='PROMOTION_SPYGLASS';

UPDATE UnitPromotionModifiers SET ModifierId = 'FADE_BONUS_MOVE_AFTER_ATTACKING' WHERE UnitPromotionType='PROMOTION_SPYGLASS';
UPDATE UnitPromotionModifiers SET ModifierId = 'SPYGLASS_BONUS_SIGHT' WHERE UnitPromotionType='PROMOTION_GUERRILLA';

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('AMBUSH_REQUIREMENTS','REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AMBUSH_REQUIREMENTS','PLAYER_IS_DEFENDER_REQUIREMENTS');
UPDATE Modifiers SET SubjectRequirementSetId = 'AMBUSH_REQUIREMENTS' WHERE ModifierId = 'AMBUSH_INCREASED_COMBAT_STRENGTH';