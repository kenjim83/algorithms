var Person = function(name){
  this.name = name
}

kenji = new Person('kenji')


$.ajax({
  url: 'http://jsonplaceholder.typicode.com/posts',
  type: 'GET',
  success: function(data){
    console.log(data)
  }

})
