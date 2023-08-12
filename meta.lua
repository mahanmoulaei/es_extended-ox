---@meta

---@alias playerId integer
---@alias gradeKey string starts from 0 (must be string)
---@alias entityId integer
---@alias routingBucket integer
---@alias routingBucketPlayersData table<playerId, true>
---@alias routingBucketEntitiesData table<entityId, true>


---@class xPlayer
---@field cid string
---@field accounts table
---@field groups table<string, integer | number>
---@field group string
---@field identifier string
---@field license string
---@field inventory table
---@field job table
---@field loadout table
---@field name string
---@field playerId integer | number
---@field source integer | number
---@field variables table
---@field weight integer | number
---@field maxWeight integer | number
---@field metadata table<string, any>
---@field triggerEvent fun(eventName: string, ...)
---@field setCoords fun(coords: vector3 | vector4 | table)
---@field getCoords fun(vector?: boolean): vector4 | table
---@field kick fun(reason?: string)
---@field setMoney fun(money?: integer | number): boolean
---@field getMoney fun(): integer | number
---@field addMoney fun(money?: integer | number, reason?: string): boolean
---@field removeMoney fun(money?: integer | number, reason?: string): boolean
---@field getIdentifier fun(): string
---@field getLicense fun(): string
---@field hasGroup fun(groupName: string, groupGrade?: integer | number): boolean, integer | number | nil
---@field addGroup fun(groupName: string, groupGrade: integer | number): boolean
---@field removeGroup fun(groupName: string): boolean
---@field getGroups fun(): table<string, integer | number>
---@field setGroup fun(newGroup?: string): boolean
---@field getGroup fun(): string
---@field set fun(key: string, value: any)
---@field get fun(key?: string): any
---@field getAccounts fun(minimal?: boolean): table
---@field getAccount fun(accountName?: string): table?
---@field getInventory fun(minimal?: boolean): table
---@field getLoadout fun(minimal?: boolean): table
---@field getName fun(): string
---@field setName fun(newName: string)
---@field setAccountMoney fun(accountName: string, money: integer | number, reason?: string): boolean
---@field addAccountMoney fun(accountName: string, money: integer | number, reason?: string): boolean
---@field removeAccountMoney fun(accountName: string, money: integer | number, reason?: string): boolean
---@field getInventoryItem fun(itemName: string): table?
---@field addInventoryItem fun(itemName: string, itemCount?: integer | number): boolean
---@field removeInventoryItem fun(itemName: string, itemCount?: integer | number): boolean
---@field setInventoryItem fun(itemName: string, itemCount: integer | number): boolean
---@field getWeight fun(): integer | number
---@field getMaxWeight fun(): integer | number
---@field setMaxWeight fun(newWeight: integer | number)
---@field canCarryItem fun(itemName: string, itemCount: integer | number): boolean
---@field canSwapItem fun(firstItem: string, firstItemCount: integer | number, testItem: string, testItemCount: integer | number): boolean
---@field getJob fun(): table
---@field setJob fun(job: string, grade: integer | number | string, duty?: boolean): boolean
---@field getDuty fun(): boolean
---@field setDuty fun(duty: boolean): boolean
---@field addWeapon fun(weaponName: string, ammo: integer | number): boolean
---@field removeWeapon fun(weaponName: string): boolean
---@field addWeaponComponent fun(weaponName: string, weaponComponent: string): boolean
---@field removeWeaponComponent fun(weaponName: string, weaponComponent: string): boolean
---@field updateWeaponAmmo fun(weaponName: string, ammoCount: integer | number): boolean
---@field addWeaponAmmo fun(weaponName: string, ammoCount: integer | number): boolean
---@field removeWeaponAmmo fun(weaponName: string, ammoCount: integer | number): boolean
---@field setWeaponTint fun(weaponName: string, weaponTintIndex: integer | number): boolean
---@field getWeaponTint fun(weaponName: string): integer | number
---@field hasWeaponComponent fun(weaponName: string, weaponComponent: string): boolean
---@field hasWeapon fun(weaponName: string): boolean
---@field hasItem fun(itemName: string): false | table, integer | number | nil
---@field getWeapon fun(weaponName: string): false | integer | number, table?
---@field getMetadata fun(index?: string, subIndex?: string | table): nil | string | table
---@field getMeta fun(index: string, subIndex?: string | table): nil | string | table
---@field setMetadata fun(index: string, value?: string | number | table, subValue?: any): boolean
---@field setMeta fun(index: string, value?: string | number | table, subValue?: any): boolean
---@field clearMetadata fun(index: string | string[]): boolean
---@field clearMeta fun(index: string | string[]): boolean


---@class xVehicle
---@field id? integer | number
---@field owner? string | boolean
---@field group? string | boolean
---@field netId integer | number
---@field entity integer | number
---@field model string
---@field plate string
---@field vin string
---@field script string
---@field stored? boolean
---@field set fun(key: string, value: any)
---@field get fun(key?: string): any
---@field delete fun(removeFromDb?: boolean)
---@field setStored fun(value?: boolean, despawn?: boolean)
---@field setOwner fun(newOwner?: string)
---@field setGroup fun(newGroup?: string)
---@field setPlate fun(newPlate: string)
---@field getMetadata fun(index?: string, subIndex?: string | table): nil | string | table
---@field setMetadata fun(index: string, value?: string | number | table, subValue?: any): boolean


---@class VehicleData
---@field acceleration number
---@field braking number
---@field handling number
---@field speed number
---@field class number
---@field doors number
---@field make string
---@field name string
---@field seats number
---@field type string
---@field hash number


---@class TopVehicleStats
---@field air VehicleData
---@field land VehicleData
---@field sea VehicleData
