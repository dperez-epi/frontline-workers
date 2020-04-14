set more 1

/*
File:	frontline-workers_acs_socp18.do
Date: 01 April 2020
Desc:	Creates consistent industry 3 digit variable.
Note:	See copyright notice at end of program.

	Part the cepr_acs_ind.do*/

/* Determine survey year */


/*Industry Recode, 3 digit*/

rename indp ind3d_18
#delimit ;
lab def ind3d_18
0170 "AGR-CROP PRODUCTION"
0180 "AGR-ANIMAL PRODUCTION AND AQUACULTURE"
0190 "AGR-FORESTRY EXCEPT LOGGING"
0270 "AGR-LOGGING"
0280 "AGR-FISHING, HUNTING AND TRAPPING"
0290 "AGR-SUPPORT ACTIVITIES FOR AGRICULTURE AND FORESTRY"
0370 "EXT-OIL AND GAS EXTRACTION"
0380 "EXT-COAL MINING"
0390 "EXT-METAL ORE MINING"
0470 "EXT-NONMETALLIC MINERAL MINING AND QUARRYING"
0490 "EXT-SUPPORT ACTIVITIES FOR MINING"
0570 "UTL-ELECTRIC POWER GENERATION, TRANSMISSION AND DISTRIBUTION"
0580 "UTL-NATURAL GAS DISTRIBUTION"
0590 "UTL-ELECTRIC AND GAS, AND OTHER COMBINATIONS"
0670 "UTL-WATER, STEAM, AIR CONDITIONING, AND IRRIGATION SYSTEMS"
0680 "UTL-SEWAGE TREATMENT FACILITIES"
0690 "UTL-NOT SPECIFIED UTILITIES"
0770 "CON-CONSTRUCTION, INCL CLEANING DURING AND IMM AFTER"
1070 "MFG-ANIMAL FOOD, GRAIN AND OILSEED MILLING"
1080 "MFG-SUGAR AND CONFECTIONERY PRODUCTS"
1090 "MFG-FRUIT AND VEGETABLE PRESERVING AND SPECIALTY FOODS"
1170 "MFG-DAIRY PRODUCTS"
1180 "MFG-ANIMAL SLAUGHTERING AND PROCESSING"
1190 "MFG-RETAIL BAKERIES"
1270 "MFG-BAKERIES AND TORTILLA, EXCEPT RETAIL BAKERIES"
1280 "MFG-SEAFOOD AND OTHER MISCELLANEOUS FOODS, N.E.C."
1290 "MFG-NOT SPECIFIED FOOD INDUSTRIES"
1370 "MFG-BEVERAGE"
1390 "MFG-TOBACCO"
1470 "MFG-FIBER, YARN, AND THREAD MILLS"
1480 "MFG-FABRIC MILLS, EXCEPT KNITTING MILLS"
1490 "MFG-TEXTILE AND FABRIC FINISHING AND FABRIC COATING MILLS"
1570 "MFG-CARPET AND RUG MILLS"
1590 "MFG-TEXTILE PRODUCT MILLS, EXCEPT CARPET AND RUG"
1670 "MFG-KNITTING FABRIC MILLS, AND APPAREL KNITTING MILLS"
1691 "MFG-CUT AND SEW APPAREL, AND APPAREL ACCESSORIES AND OTHER APPAREL"
1770 "MFG-FOOTWEAR"
1790 "MFG-LEATHER TANNING AND FINISHING AND OTHER ALLIED PRODUCTS MANUFACTURING"
1870 "MFG-PULP, PAPER, AND PAPERBOARD MILLS"
1880 "MFG-PAPERBOARD CONTAINER"
1890 "MFG-MISCELLANEOUS PAPER AND PULP PRODUCTS"
1990 "MFG-PRINTING AND RELATED SUPPORT ACTIVITIES"
2070 "MFG-PETROLEUM REFINING"
2090 "MFG-MISCELLANEOUS PETROLEUM AND COAL PRODUCTS"
2170 "MFG-RESIN, SYNTHETIC RUBBER, AND FIBERS AND FILAMENTS"
2180 "MFG-AGRICULTURAL CHEMICALS"
2190 "MFG-PHARMACEUTICALS AND MEDICINES"
2270 "MFG-PAINT, COATING, AND ADHESIVES"
2280 "MFG-SOAP, CLEANING COMPOUND, AND COSMETICS"
2290 "MFG-INDUSTRIAL AND MISCELLANEOUS CHEMICALS"
2370 "MFG-PLASTICS PRODUCTS"
2380 "MFG-TIRES"
2390 "MFG-RUBBER PRODUCTS, EXCEPT TIRES"
2470 "MFG-POTTERY, CERAMICS, AND PLUMBING FIXTURE MANUFACTURING"
2480 "MFG- CLAY BUILDING MATERIAL AND REFRACTORIES"
2490 "MFG-GLASS AND GLASS PRODUCTS"
2570 "MFG-CEMENT, CONCRETE, LIME, AND GYPSUM PRODUCTS"
2590 "MFG-MISCELLANEOUS NONMETALLIC MINERAL PRODUCTS"
2670 "MFG-IRON AND STEEL MILLS AND STEEL PRODUCTS"
2680 "MFG-ALUMINUM PRODUCTION AND PROCESSING"
2690 "MFG-NONFERROUS METAL, EXCEPT ALUMINUM, PRODUCTION AND PROCESSING"
2770 "MFG-FOUNDRIES"
2780 "MFG-METAL FORGINGS AND STAMPINGS"
2790 "MFG-CUTLERY AND HAND TOOLS"
2870 "MFG-STRUCTURAL METALS, AND BOILER, TANK, AND SHIPPING CONTAINERS"
2880 "MFG-MACHINE SHOPS; TURNED PRODUCTS; SCREWS, NUTS AND BOLTS"
2890 "MFG-COATING, ENGRAVING, HEAT TREATING AND ALLIED ACTIVITIES"
2970 "MFG-ORDNANCE"
2980 "MFG-MISCELLANEOUS FABRICATED METAL PRODUCTS"
2990 "MFG-NOT SPECIFIED METAL INDUSTRIES"
3070 "MFG-AGRICULTURAL IMPLEMENTS"
3080 "MFG-CONSTRUCTION, AND MINING AND OIL AND GAS FIELD MACHINERY"
3095 "MFG-COMMERCIAL AND SERVICE INDUSTRY MACHINERY"
3170 "MFG-METALWORKING MACHINERY"
3180 "MFG-ENGINE, TURBINE, AND POWER TRANSMISSION EQUIPMENT"
3291 "MFG-MACHINERY, N.E.C. OR NOT SPECIFIED"
3365 "MFG-COMPUTER AND PERIPHERAL EQUIPMENT"
3370 "MFG-COMMUNICATIONS, AND AUDIO AND VIDEO EQUIPMENT"
3380 "MFG-NAVIGATIONAL, MEASURING, ELECTROMEDICAL, AND CONTROL INSTRUMENTS"
3390 "MFG-ELECTRONIC COMPONENTS AND PRODUCTS, N.E.C."
3470 "MFG-HOUSEHOLD APPLIANCES"
3490 "MFG-ELECTRIC LIGHTING AND ELECTRICAL EQUIPMENT MANUFACTURING,AND OTHER ELECTRICAL COMPONENT MANUFACTURING, .N.E.C."
3570 "MFG-MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT"
3580 "MFG-AIRCRAFT AND PARTS"
3590 "MFG-AEROSPACE PRODUCTS AND PARTS"
3670 "MFG-RAILROAD ROLLING STOCK"
3680 "MFG-SHIP AND BOAT BUILDING"
3690 "MFG-OTHER TRANSPORTATION EQUIPMENT"
3770 "MFG-SAWMILLS AND WOOD PRESERVATION"
3780 "MFG-VENEER, PLYWOOD, AND ENGINEERED WOOD PRODUCTS"
3790 "MFG-PREFABRICATED WOOD BUILDINGS AND MOBILE HOMES"
3875 "MFG-MISCELLANEOUS WOOD PRODUCTS"
3895 "MFG-FURNITURE AND RELATED PRODUCTS"
3960 "MFG-MEDICAL EQUIPMENT AND SUPPLIES"
3970 "MFG-SPORTING AND ATHLETIC GOODS, AND DOLL, TOY, AND GAME MANUFACTURING"
3980 "MFG-MISCELLANEOUS MANUFACTURING, N.E.C."
3990 "MFG-NOT SPECIFIED MANUFACTURING INDUSTRIES"
4070 "WHL-MOTOR VEHICLE AND MOTOR VEHICLE PARTS AND SUPPLIES MERCHANT WHOLESALERS"
4080 "WHL-FURNITURE AND HOME FURNISHING MERCHANT WHOLESALERS"
4090 "WHL-LUMBER AND OTHER CONSTRUCTION MATERIALS MERCHANT WHOLESALERS"
4170 "WHL-PROFESSIONAL AND COMMERCIAL EQUIPMENT AND SUPPLIES MERCHANT WHOLESALERS"
4180 "WHL-METALS AND MINERALS, EXCEPT PETROLEUM, MERCHANT WHOLESALERS"
4195 "WHL-HOUSEHOLD APPLIANCES AND ELECTRICAL AND ELECTRONIC GOODS MERCHANT WHOLESALERS"
4265 "WHL-HARDWARE, AND PLUMBING AND HEATING EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS"
4270 "WHL-MACHINERY, EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS"
4280 "WHL-RECYCLABLE MATERIAL MERCHANT WHOLESALERS"
4290 "WHL-MISCELLANEOUS DURABLE GOODS MERCHANT WHOLESALERS"
4370 "WHL-PAPER AND PAPER PRODUCTS MERCHANT WHOLESALERS"
4380 "WHL-DRUGS, SUNDRIES, AND CHEMICAL AND ALLIED PRODUCTS MERCHANT WHOLESALERS"
4390 "WHL-APPAREL, PIECE GOODS, AND NOTIONS MERCHANT WHOLESALERS"
4470 "WHL-GROCERY AND RELATED PRODUCT MERCHANT WHOLESALERS"
4480 "WHL-FARM PRODUCT RAW MATERIAL MERCHANT WHOLESALERS"
4490 "WHL-PETROLEUM AND PETROLEUM PRODUCTS MERCHANT WHOLESALERS"
4560 "WHL-ALCOHOLIC BEVERAGES MERCHANT WHOLESALERS"
4570 "WHL-FARM SUPPLIES MERCHANT WHOLESALERS"
4580 "WHL-MISCELLANEOUS NONDURABLE GOODS MERCHANT WHOLESALERS"
4585 "WHL-WHOLESALE ELECTRONIC MARKETS AND AGENTS AND BROKERS"
4590 "WHL-NOT SPECIFIED WHOLESALE TRADE"
4670 "RET-AUTOMOBILE DEALERS"
4680 "RET-OTHER MOTOR VEHICLE DEALERS"
4690 "RET-AUTOMOTIVE PARTS, ACCESSORIES, AND TIRE STORES"
4770 "RET-FURNITURE AND HOME FURNISHINGS STORES"
4780 "RET-HOUSEHOLD APPLIANCE STORES"
4795 "RET-ELECTRONICS STORES"
4870 "RET-BUILDING MATERIAL AND SUPPLIES DEALERS"
4880 "RET-HARDWARE STORES"
4890 "RET-LAWN AND GARDEN EQUIPMENT AND SUPPLIES STORES"
4971 "RET-SUPERMARKETS AND OTHER GROCERY (EXCEPT CONVENIENCE) STORES"
4972 "RET-CONVENIENCE STORES"
4980 "RET-SPECIALTY FOOD STORES"
4990 "RET-BEER, WINE, AND LIQUOR STORES"
5070 "RET-PHARMACIES AND DRUG STORES"
5080 "RET-HEALTH AND PERSONAL CARE, EXCEPT DRUG, STORES"
5090 "RET-GASOLINE STATIONS"
5170 "RET-CLOTHING STORES"
5180 "RET-SHOE STORES"
5190 "RET-JEWELRY, LUGGAGE, AND LEATHER GOODS STORES"
5275 "RET-SPORTING GOODS, AND HOBBY AND TOY STORES"
5280 "RET-SEWING, NEEDLEWORK, AND PIECE GOODS STORES"
5295 "RET-MUSICAL INSTRUMENT AND SUPPLIES STORES"
5370 "RET-BOOK STORES AND NEWS DEALERS"
5381 "RET-DEPARTMENT STORES"
5390 "RET-GENERAL MERCHANDISE STORES, INCL. WAREHOUSE CLUBS AND SUPERCENTERS"
5470 "RET-FLORISTS"
5480 "RET-OFFICE SUPPLIES AND STATIONERY STORES"
5490 "RET-USED MERCHANDISE STORES"
5570 "RET-GIFT, NOVELTY, AND SOUVENIR SHOPS"
5580 "RET-MISCELLANEOUS RETAIL STORES"
5593 "RET-ELECTRONIC SHOPPING AND MAIL-ORDER HOUSES"
5670 "RET-VENDING MACHINE OPERATORS"
5680 "RET-FUEL DEALERS"
5690 "RET-OTHER DIRECT SELLING ESTABLISHMENTS"
5790 "RET-NOT SPECIFIED RETAIL TRADE"
6070 "TRN-AIR TRANSPORTATION"
6080 "TRN-RAIL TRANSPORTATION"
6090 "TRN-WATER TRANSPORTATION"
6170 "TRN-TRUCK TRANSPORTATION"
6180 "TRN-BUS SERVICE AND URBAN TRANSIT"
6190 "TRN-TAXI AND LIMOUSINE SERVICE"
6270 "TRN-PIPELINE TRANSPORTATION"
6280 "TRN-SCENIC AND SIGHTSEEING TRANSPORTATION"
6290 "TRN-SERVICES INCIDENTAL TO TRANSPORTATION"
6370 "TRN-POSTAL SERVICE"
6380 "TRN-COURIERS AND MESSENGERS"
6390 "TRN-WAREHOUSING AND STORAGE"
6470 "INF-NEWSPAPER PUBLISHERS"
6480 "INF-PERIODICAL, BOOK, AND DIRECTORY PUBLISHERS"
6490 "INF-SOFTWARE PUBLISHERS"
6570 "INF-MOTION PICTURE AND VIDEO INDUSTRIES"
6590 "INF-SOUND RECORDING INDUSTRIES"
6670 "INF-BROADCASTING, EXCEPT INTERNET"
6672 "INF-INTERNET PUBLISHING AND BROADCASTING AND WEB SEARCH PORTALS"
6680 "INF-WIRED TELECOMMUNICATIONS CARRIERS"
6690 "INF-TELECOMMUNICATIONS, EXCEPT WIRED TELECOMMUNICATIONS CARRIERS"
6695 "INF-DATA PROCESSING, HOSTING, AND RELATED SERVICES"
6770 "INF-LIBRARIES AND ARCHIVES"
6780 "INF-OTHER INFORMATION SERVICES, EXCEPT LIBRARIES AND ARCHIVES, AND INTERNET PUBLISHING AND BROADCASTING AND WEB SEARCH PORTALS"
6870 "FIN-BANKING AND RELATED ACTIVITIES"
6880 "FIN-SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS"
6890 "FIN-NONDEPOSITORY CREDIT AND RELATED ACTIVITIES"
6970 "FIN-SECURITIES, COMMODITIES, FUNDS, TRUSTS, AND OTHER FINANCIAL INVESTMENTS"
6991 "FIN-INSURANCE CARRIERS"
6992 "FIN-AGENCIES, BROKERAGE, AND OTHER INSURANCE RELATED ACTIVITIES"
7071 "FIN-LESSORS OF REAL ESTATE, AND OFFICES OF REAL ESTATE AGENTS AND BROKERS"
7072 "FIN-REAL ESTATE PROPERTY MANAGERS, OFFICES OF REAL ESTATE APPRAISERS, AND OTHER ACTIVTIES RELATED TO REAL ESTATE"
7080 "FIN-AUTOMOTIVE EQUIPMENT RENTAL AND LEASING"
7181 "FIN-OTHER CONSUMER GOODS RENTAL"
7190 "FIN-COMMERCIAL, INDUSTRIAL, AND OTHER INTANGIBLE ASSETS RENTAL AND LEASING"
7270 "PRF-LEGAL SERVICES"
7280 "PRF-ACCOUNTING, TAX PREPARATION, BOOKKEEPING, AND PAYROLL SERVICES"
7290 "PRF-ARCHITECTURAL, ENGINEERING, AND RELATED SERVICES"
7370 "PRF-SPECIALIZED DESIGN SERVICES"
7380 "PRF-COMPUTER SYSTEMS DESIGN AND RELATED SERVICES"
7390 "PRF-MANAGEMENT, SCIENTIFIC, AND TECHNICAL CONSULTING SERVICES"
7460 "PRF-SCIENTIFIC RESEARCH AND DEVELOPMENT SERVICES"
7470 "PRF-ADVERTISING, PUBLIC RELATIONS, AND RELATED SERVICES"
7480 "PRF-VETERINARY SERVICES"
7490 "PRF-OTHER PROFESSIONAL, SCIENTIFIC, AND TECHNICAL SERVICES"
7570 "PRF-MANAGEMENT OF COMPANIES AND ENTERPRISES"
7580 "PRF-EMPLOYMENT SERVICES"
7590 "PRF-BUSINESS SUPPORT SERVICES"
7670 "PRF-TRAVEL ARRANGEMENTS AND RESERVATION SERVICES"
7680 "PRF-INVESTIGATION AND SECURITY SERVICES"
7690 "PRF-SERVICES TO BUILDINGS AND DWELLINGS, EX CONSTR CLN"
7770 "PRF-LANDSCAPING SERVICES"
7780 "PRF-OTHER ADMINISTRATIVE AND OTHER SUPPORT SERVICES"
7790 "PRF-WASTE MANAGEMENT AND REMEDIATION SERVICES"
7860 "EDU-ELEMENTARY AND SECONDARY SCHOOLS"
7870 "EDU-COLLEGES, UNIVERSITIES, AND PROFESSIONAL SCHOOLS, INCLUDING JUNIOR COLLEGES"
7880 "EDU-BUSINESS, TECHNICAL, AND TRADE SCHOOLS AND TRAINING"
7890 "EDU-OTHER SCHOOLS AND INSTRUCTION, AND EDUCATIONAL SUPPORT SERVICES"
7970 "MED-OFFICES OF PHYSICIANS"
7980 "MED-OFFICES OF DENTISTS"
7990 "MED-OFFICES OF CHIROPRACTORS"
8070 "MED-OFFICES OF OPTOMETRISTS"
8080 "MED-OFFICES OF OTHER HEALTH PRACTITIONERS"
8090 "MED-OUTPATIENT CARE CENTERS"
8170 "MED-HOME HEALTH CARE SERVICES"
8180 "MED-OTHER HEALTH CARE SERVICES"
8191 "MED-GENERAL MEDICAL AND SURGICAL HOSPITALS, AND SPECIALTY (EXCEPT PSYCHIATRIC AND SUBSTANCE ABUSE) HOSPITALS"
8192 "MED-PSYCHIATRIC AND SUBSTANCE ABUSE HOSPITALS"
8270 "MED-NURSING CARE FACILITIES (SKILLED NURSING FACILITIES)"
8290 "MED-RESIDENTIAL CARE FACILITIES, EXCEPT SKILLED NURSING FACILITIES"
8370 "SCA-INDIVIDUAL AND FAMILY SERVICES"
8380 "SCA-COMMUNITY FOOD AND HOUSING, AND EMERGENCY SERVICES"
8390 "SCA-VOCATIONAL REHABILITATION SERVICES"
8470 "SCA-CHILD DAY CARE SERVICES"
8561 "ENT-PERFORMING ARTS COMPANIES"
8562 "ENT-SPECTATOR SPORTS"
8563 "ENT-PROMOTERS OF PERFORMING ARTS, SPORTS, AND SIMILAR EVENTS, AGENTS AND MANAGERS FOR ARTISTS, ATHLETES, ENTERTAINERS, AND OTHER PUBLIC FIGURES"
8564 "ENT-INDEPENDENT ARTISTS, WRITERS, AND PERFORMERS"
8570 "ENT-MUSEUMS, ART GALLERIES, HISTORICAL SITES, AND SIMILAR INSTITUTIONS"
8580 "ENT-BOWLING CENTERS"
8590 "ENT-OTHER AMUSEMENT, GAMBLING, AND RECREATION INDUSTRIES"
8660 "ENT-TRAVELER ACCOMMODATION"
8670 "ENT-RECREATIONAL VEHICLE PARKS AND CAMPS, AND ROOMING AND BOARDING HOUSES"
8680 "ENT-RESTAURANTS AND OTHER FOOD SERVICES"
8690 "ENT-DRINKING PLACES, ALCOHOLIC BEVERAGES"
8770 "SRV-AUTOMOTIVE REPAIR AND MAINTENANCE"
8780 "SRV-CAR WASHES"
8790 "SRV-ELECTRONIC AND PRECISION EQUIPMENT REPAIR AND MAINTENANCE"
8870 "SRV-COMMERCIAL AND INDUSTRIAL MACHINERY AND EQUIPMENT REPAIR AND MAINTENANCE"
8891 "SRV-PERSONAL AND HOUSEHOLD GOODS REPAIR AND MAINTENANCE"
8970 "SRV-BARBER SHOPS"
8980 "SRV-BEAUTY SALONS"
8990 "SRV-NAIL SALONS AND OTHER PERSONAL CARE SERVICES"
9070 "SRV-DRYCLEANING AND LAUNDRY SERVICES"
9080 "SRV-FUNERAL HOMES, CEMETERIES AND CREMATORIES"
9090 "SRV-OTHER PERSONAL SERVICES"
9160 "SRV-RELIGIOUS ORGANIZATIONS"
9170 "SRV-CIVIC, SOCIAL, ADVOCACY ORGANIZATIONS, AND GRANTMAKING AND GIVING SERVICES"
9180 "SRV-LABOR UNIONS"
9190 "SRV-BUSINESS, PROFESSIONAL, POLITICAL, AND SIMILAR ORGANIZATIONS"
9290 "SRV-PRIVATE HOUSEHOLDS"
9370 "ADM-EXECUTIVE OFFICES AND LEGISLATIVE BODIES"
9380 "ADM-PUBLIC FINANCE ACTIVITIES"
9390 "ADM-OTHER GENERAL GOVERNMENT AND SUPPORT"
9470 "ADM-JUSTICE, PUBLIC ORDER, AND SAFETY ACTIVITIES"
9480 "ADM-ADMINISTRATION OF HUMAN RESOURCE PROGRAMS"
9490 "ADM-ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS"
9570 "ADM-ADMINISTRATION OF ECONOMIC PROGRAMS AND SPACE RESEARCH"
9590 "ADM-NATIONAL SECURITY AND INTERNATIONAL AFFAIRS"
9670 "MIL-U.S. ARMY"
9680 "MIL-U.S. AIR FORCE"
9690 "MIL-U.S. NAVY"
9770 "MIL-U.S. MARINES"
9780 "MIL-U.S. COAST GUARD"
9790 "MIL-U.S. ARMED FORCES, BRANCH NOT SPECIFIED"
9870 "MIL-MILITARY RESERVES OR NATIONAL GUARD"
9920 "UNEMPLOYED AND LAST WORKED 5 YEARS AGO OR EARLIER OR NEVER WORKED**"
;
#delimit cr
lab var ind3d_18 "Industry, 3-digit"
lab val ind3d_18 ind3d_18
notes ind3d_18: ACS: INDP
notes ind3d_18: Industry recode for 2018 and later based on 2017 IND codes

/*
Copyright 2020 CEPR, John Schmitt, Cherrie Bucknor, Brian Dew, Hye Jin Rho, Hayley Brown

This file is part of the cepr_acs_master.do program. This file and all
programs referenced in it are free software. You can redistribute the
program or modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
USA.
*/