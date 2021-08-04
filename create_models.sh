
rails generate model shipline name:string
rails generate model country name:string
rails generate model roro title:string
rails generate model container type:string title:string 
rails generate model admin name:string email:string password_digest:string
rails generate model dateupdate datetime:string hour:string minute:string second:string day:string month:string year:string
rails generate model tag name:string
rails generate model pod city:references
rails generate model pol city:references
rails generate model state name:string country:references
rails generate model category title:string roro:references container:references
rails generate model updatechange newprice:float tag:references admin:references category:references shipline:references pol:references pod:references updatechange:references 
rails generate model rateitem price:float tag:references category:references shipline:references pol:references pod:references

