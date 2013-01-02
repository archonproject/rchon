class CreatorType < ActiveHash::Base
<<<<<<< HEAD
self.data=[ 
{:CreatorType => "Personal Name",:ID => 19},
{:CreatorType => "Family Name",:ID => 20},
{:CreatorType => "Unassigned",:ID => 21},
{:CreatorType => "Corporate Name",:ID => 22},
{:CreatorType => "Name",:ID => 23}
]
=======
  has_many :creators

>>>>>>> ed522209b7a7d483c6edb554e85467529b62ca29
end