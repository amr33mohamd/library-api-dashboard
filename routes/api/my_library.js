app.get('/api/add-my-library',function(req,res){
    var user_id = req.param('user_id');
    var book_id = req.param('book_id');
    sql.dselect('my_library','user_id',user_id,'book_id',book_id,function(books) {
        if(books.length == 0 ) {
            con.query('insert into my_library(user_id,book_id) values(?,?)',[user_id,book_id],function(err,response){
                if(!err)
                {
                    con.query('select MyLibraryBooksIDs FROM users WHERE id=? LIMIT 1',[user_id],function(err,data){
                        if(!err) {
                            if(data[0]['MyLibraryBooksIDs'].length > 0)
                            {
                                con.query('UPDATE users SET MyLibraryBooksIDs=? WHERE id=?',[data[0]['MyLibraryBooksIDs'].concat("," + String(book_id)), user_id],function(err,data){
                                    if(!err){
                                      res.json({reply:1});
                                    }
                                    else{
                                      res.json({reply:0});
                                    }
                                });
                            }
                            else
                            {
                                con.query('UPDATE users SET MyLibraryBooksIDs=? WHERE id=?',[book_id, user_id],function(err,data){
                                    if(!err){
                                      res.json({reply:1});
                                    }
                                    else{
                                      res.json({reply:0});
                                    }
                                });
                            }
                        }
                        else
                          res.json({reply:0});
                    });
                }
                else
                {
                  res.json({reply:0});
                }
            })
        }
        else
        {
            // already exists
            res.json({reply:-1});
        }
    })
});

app.get('/api/show-my-library',function(req,res){
  var user_id = req.param('user_id');

  sql.select('my_library','user_id',user_id,function(library){
    if(library.length == 0){
      res.json({status:0});
    }
    else{
        data = [];

      for(let counter in library){
        con.query('select id, name AS book_name, image AS book_photo, author_name, category_id FROM books WHERE id=?',[library[counter]['book_id']],function(err,book){

            if(book !== undefined && book.length > 0)
            {
                con.query('select name FROM categories WHERE id=? LIMIT 1', [ book[0]['category_id'] ], function(err,cat) {
                    if(!err && cat.length)
                    {
                        data.push({
                          id: book[0]['id'],
                          book_name : book[0]['book_name'],
                          book_photo : book[0]['book_photo'],
                          author_name : book[0]['author_name'],
                          cat_name: cat[0]['name']
                        });

                        if(counter == library.length-1){
                          res.json({
                            status:1,
                            books:data
                          })
                        }
                    }
                    else {
                        data.push({
                          id: book[0]['id'],
                          book_name : book[0]['book_name'],
                          book_photo : book[0]['book_photo'],
                          author_name : book[0]['author_name'],
                          cat_name: 'غير معرف'
                        });

                        if(counter == library.length-1){
                          res.json({
                            status:1,
                            books:data
                          })
                        }
                    }
                });
      }})

      }
    } //end if there are data
  })

});

app.get('/api/show-my-library-local',function(req,res){
    var ids = con.escape(req.param('ids'));
  var in_clause = `id IN (${ids.substring(1, ids.length-1)})`;
  con.query('select id, name AS book_name, image AS book_photo, author_name FROM books WHERE '+in_clause,function(err,data){

            if(data.length > 0)
            {
                res.json({
                    status:1,
                    books:data
                })
            }
            else {
                res.json({
                    status:0
                })
            }
      })

});
