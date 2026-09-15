# djfivem-305shops

Ped-based shops for **ox_inventory**, themed for **The 305** (hot pink, chrome silver, and black). Catalogs currently use **stock QBX / ox_inventory items** so stores work on a fresh Qbox box until you add custom items.

## Shops

| Shop | What it sells | Locations |
| --- | --- | --- |
| 24/7 | `burger`, `water`, `sprunk`, `mustard`, `paperbag`, `bandage` | All vanilla 24/7 clerks |
| LTD Gasoline | Same convenience catalog as 24/7 | Grove, Little Seoul, Richman, Mirror Park, Grapeseed |
| Rob's Liquor | `burger`, `water`, `sprunk` | All Rob's Liquor clerks |
| Ammunation | `WEAPON_KNIFE`, `WEAPON_BAT`, `WEAPON_PISTOL` (weapon license), `ammo-9`, `armour` | All 11 Ammunation clerks |
| YouTool | `lockpick`, `scrapmetal`, `WEAPON_CROWBAR`, `WEAPON_HAMMER`, `WEAPON_FLASHLIGHT`, `WEAPON_FIREEXTINGUISHER` | Davis, Harmony, Paleto |
| Digital Den | `phone`, `radio` | Legion, Mirror Park, Rockford, Little Seoul |
| Pharmacy | `bandage` | Pillbox, Vinewood, Sandy, Paleto |
| The Backroom | `lockpick`, `WEAPON_CROWBAR`, `WEAPON_DAGGER`, `scrapmetal` | Hidden peds, no blip |
| Street Chemist | Disabled until custom chemist items are added | Hidden peds, no blip |

Every location uses a frozen invincible ped. Legal shops have red-tinted map blips. Illegal shops do not.

Ammunation pistols require a `weapon` license. Melee, ammo, and armour do not.

## Requirements

- [ox_lib](https://github.com/overextended/ox_lib)
- [ox_inventory](https://github.com/overextended/ox_inventory)
- [interact](https://github.com/darktrovx/interact) (preferred) or `ox_target` / `qb-target`
- qbx_core, qb-core, or ESX
- [Renewed-Banking](https://github.com/Renewed-Scripts/Renewed-Banking) for bank statement lines

## Install

1. Drop this resource in your server as `djfivem-305shops`.
2. Add to `server.cfg` **after** inventory, banking, and interact:

```cfg
ensure ox_lib
ensure ox_inventory
ensure interact
ensure Renewed-Banking
ensure djfivem-305shops
```

3. Stop **qb-shops** (or any other shop script) so you do not get double peds.
4. Clear or comment the default shops in `ox_inventory/data/shops.lua` if you still see ox shop markers.
5. Restart the server.

`config/config.lua` defaults to `Config.Target = 'auto'`, which uses **interact** when it is started.

## Theme

The NUI defaults to **The 305** look: black panels, hot-pink glow, chrome borders, and the 305 logo.

```lua
Config.Theme.preset = 'the305' -- the305 | envy | chrome | lava | vice | gold | ice | sunset
```

Leave `preset = ''` and fill `Config.Theme.gradient` for a custom blend (`colors`, `angle`, `inkOnAccent`, `glow`). The NUI applies those values as CSS variables when a shop opens.

## Payments

- **Cash** comes from the ox_inventory `money` item by default.
- **Bank** removes player bank money through qbx / qb / ESX, then logs a withdraw on **Renewed-Banking**.
- Robbery shops also accept **dirty money** (`black_money`).

If your cash is on the framework account instead of the `money` item:

```lua
Config.Money.cash = 'framework'
```

## Items

Catalogs live in `config/shops.lua` and use the stock ox_inventory names listed above. Add your custom items there when you are ready.

**Items that are not registered in ox_inventory are hidden automatically.**

Weapon metadata example:

```lua
I('WEAPON_PISTOL', 1000, 'pistols', { license = 'weapon', metadata = { registered = true } })
```

Images load from `nui://ox_inventory/web/images/`. Change `Config.ImagePath` if your icons live somewhere else.

## Config extras

- Move peds by editing `locations` `vector4(x, y, z, heading)`.
- Disable a shop with `enabled = false`.
- Restrict payment methods with `payments = { 'cash', 'bank' }`.
- Hide a blip with `blip = false`.

## Exports

```lua
-- Client
exports['djfivem-305shops']:OpenShop('general', 1)
```
