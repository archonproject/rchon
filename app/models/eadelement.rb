class EADElement < ActiveHash::Base
self.data=[ 
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "accessrestrict",:EADElement => "Access Restriction",:ID => 1},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "arrangement",:EADElement => "Arrangement",:ID => 2},
{:TitleLocation => "label",:LineBreakTag => "lb",:EADTag => "origination",:EADElement => "Creator",:ID => 3},
{:TitleLocation => "label",:LineBreakTag => "lb",:EADTag => "physdesc",:EADElement => "Physical Description",:ID => 4},
{:TitleLocation => "label",:LineBreakTag => "lb",:EADTag => "unitid",:EADElement => "UnitID",:ID => 5},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "accruals",:EADElement => "Accruals",:ID => 6},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "acqinfo",:EADElement => "Acquisition Information",:ID => 7},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "altformavail",:EADElement => "Alternate Format",:ID => 8},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "appraisal",:EADElement => "Appraisal Information",:ID => 9},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "custodhist",:EADElement => "Custodial History",:ID => 11},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "odd",:EADElement => "Other Information",:ID => 12},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "originalsloc",:EADElement => "Originals or Copies Note",:ID => 13},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "prefercite",:EADElement => "Preferred Citation",:ID => 14},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "processinfo",:EADElement => "Processing Information",:ID => 15},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "relatedmaterial",:EADElement => "Related Material",:ID => 16},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "userestrict",:EADElement => "Use Restrictions",:ID => 17},
{:TitleLocation => "label",:LineBreakTag => "lb",:EADTag => "materialspec",:EADElement => "Material Specific Details",:ID => 18},
{:TitleLocation => "label",:LineBreakTag => "p",:EADTag => "note",:EADElement => "Note",:ID => 19},
{:TitleLocation => "label",:LineBreakTag => "lb",:EADTag => "extent",:EADElement => "Extent",:ID => 20},
{:TitleLocation => "label",:LineBreakTag => "lb",:EADTag => "dimensions",:EADElement => "Dimensions",:ID => 21},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "bioghist",:EADElement => "Biography or History",:ID => 22},
{:TitleLocation => "label",:LineBreakTag => "lb",:EADTag => "physfacet",:EADElement => "Physical Facet",:ID => 23},
{:TitleLocation => "label",:LineBreakTag => "lb",:EADTag => "langmaterial",:EADElement => "Language of Material",:ID => 24},
{:TitleLocation => "head",:LineBreakTag => "p",:EADTag => "separatedmaterial",:EADElement => "Separated Material",:ID => 25}
]
end