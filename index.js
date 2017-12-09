require('./core/index');
sql = require('./core/models/sql');
full_admin =  require('./models/full_admin');;
require('./routes/web');

require('./routes/api/homescreen');
require('./routes/api/categories');
require('./routes/api/sub_categories');
require('./routes/api/books_of_cat');
require('./routes/api/books_of_subcat');
require('./routes/api/screenshots_of_book');
require('./routes/api/comments_of_book');
require('./routes/api/desc_of_book');
require('./routes/api/price_of_book');
require('./routes/api/dllink_of_book');
require('./routes/api/my_library.js');
require('./routes/buy/buy-first.js');
require('./routes/buy/buy-second');
require('./routes/api/feedback');
require('./routes/api/set_currency');
require('./routes/api/signin');
require('./routes/api/signup');
require('./routes/api/orders');
require('./routes/api/search');
require('./routes/api/add_comment');

require('./routes/feedbacks');
