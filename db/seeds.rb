# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html
# http://www.thegeekstuff.com/2012/09/sqlite-command-examples/
#
# bash> sqlite3 company.db < insert-data.sql
#
# Country.create(name: 'Germany', population: 81831000)
#
# country_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]
#
# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end
#
# Generating seeds.rb From Existing Data
#
# Sometimes it can be useful to export the current data pool of a Rails application into a db/seeds.rb
# We create our own little rake task for that. That can be done by creating the file lib/tasks/export.rake
# with the following content:
#
# namespace :export do
#   desc "Prints Country.all in a seeds.rb way."
#   task :seeds_format => :environment do
#     Country.order(:id).all.each do |country|
#       puts "Country.create(#{country.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
#     end
#   end
# end
#
# Then you can call the corresponding rake task with the command rake export:seeds_format:
#
# $ rake export:seeds_format
# Country.create("name"=>"Germany", "population"=>81831000) ...
#
# You can either expand this program so that the output is written directly into the db/seeds.rb or you can simply use the shell:
# $ rake export:seeds_format > db/seeds.rb
#
# If you want to use UTF-8 characters in your db/seeds.rb, then you need to enter the line
# # ruby encoding: utf-8
# at the beginning of the file.
# # ruby encoding: utf-8
# Country.create(name: 'Germany', population: 81831000)
# Country.create(name: 'France', population: 65447374)
# Country.create(name: 'Belgium', population: 10839905)
# Country.create(name: 'Netherlands', population: 16680000)
# Country.create(name: 'Austria', population: 8440465)
# Country.create(name: 'Republika e Shqipërisë', population: 2831741)
#
Micropost.create(
author:     "Irina",
email:      "tourist",
review:     "Спасибо за хорошо организованный отдых в Эмиратах.",
created_at: "2015-03-17 21:15:52.678164",
updated_at: "2015-03-20 10:19:06.210886"
)
Micropost.create(
author:     "Светлана",
email:      "tourist",
review:     "хочу выразить благодарность менеджерам компании Travelonline,помогли найти отличный вариант чартерного билета в Египет,оплатила,забронировали быстро,надёжно!!!Спасибо за сервис и помощь!!!Рекомендую всем туристам!!!",
created_at: "2015-03-18 13:23:02.621097",
updated_at: "2015-03-20 10:19:16.776786"
)
Micropost.create(
author:     "Колесников Д.В.",
email:      "tourist",
review:     "Оперативно подобрали билеты в Анталию на указанные даты. Все четко, быстро, надежно. Особая благодарность Дарье. Развивайтесь и помогайте клиентам!",
created_at: "2015-03-18 14:44:50.144069",
updated_at: "2015-03-20 10:19:27.819026"
)
Micropost.create(
author:     "Елена",
email:      "tourist",
review:     "Девочки, милые! Спасибо Вам, огромное, за ваш прекрасный труд, за ваше чудесное агенство! Вы всегда нам помогаете, делаете волшебное в этот трудный час! Желаю Вам процветания! Успехов! Удачи! Спасибо Вам огромное! С Уважением, Елена",
created_at: "2015-03-20 10:14:50.182710",
updated_at: "2015-03-20 10:19:37.402121"
)
Micropost.create(
author:     "Капранов Олег",
email:      "lugatex@yahoo.com",
review:     "Проверка новой версии Ember 0.18.2 and Ember-source 1.11.1 для Форума. Все хорошо",
created_at: "2015-04-12 12:52:58.600463",
updated_at: "2015-04-30 10:51:45.533493"
)
Micropost.create(
author:     "Галкин Д.В.",
email:      "daimen70@mail.ru",
review:     "В январе-феврале ездили на Шри-Ланку. Отличная работа агентства! Все быстро, оперативно и надежно. Отличная логистика, подбор удобных вариантов  и связь с клиентом. Особая благодарность Дарье Силенко! Рекомендую 100%. Еще будем обращаться. Удачи вам!",
created_at: "2015-04-15 13:04:46.004968",
updated_at: "2015-04-15 13:04:46.004968"
)
Micropost.create(
author:     "Малофеев ю.м.",
email:      "Yurets-2008@ mail.ru",
review:     "Добрый день. Был недавно в Турции сиде, с женой и 2 детьми. Все прошло отлично . отдельное спасибо Дарье силенко за организацию отдыха. Я пользуюсь только вашими услугами и полностью доверяю данной фирме. Спасибо вам огромное!!!",
created_at: "2015-06-15 13:09:34.383513",
updated_at: "2015-06-15 13:09:34.383513"
)
Micropost.create(
author:     "Бартків О. В.",
email:      "obartkiv.most@gmail.com",
review:     "дуже задоволений",
created_at: "2015-08-12 11:23:16.789833",
updated_at: "2015-08-12 11:23:16.789833"
)
Micropost.create(
author:     "Зиньковский Д.",
email:      "dmytrozinkovsky@gmail.com",
review:     "Большое спасибо Ирине за оперативность. Билеты в Турцию на чартер было очень сложно купить, но Ира справилась на отлично.",
created_at: "2015-08-26 07:25:33.803236",
updated_at: "2015-08-26 07:25:33.803236"
)
Micropost.create(
author:     "Игорь",
email:      "igor@gmail.com",
review:     "Громадное спасибо Ирине за очень профессиональный подход! Организация поездки была выполнена эффективно и к тому же было очень приятно общаться. Одним словом - рекомендуем!",
created_at: "2015-08-31 07:42:15.509453",
updated_at: "2015-08-31 07:42:15.509453"
)
Micropost.create(
author:     "Ярослав Ермаков",
email:      "9pukoskar@mail.ru",
review:     "Большое спасибо сотрудникам этой компании за быструю помощь в приобретении билета. Так же спасибо за доброе и мягкое общение. Все супер. Быстро и качественно.",
created_at: "2015-09-14 14:57:19.267263",
updated_at: "2015-09-14 14:57:19.267263"
)
Micropost.create(
author:     "Ольга Падалка",
email:      "helga_padalka@mail.ru",
review:     "Спасибо большое Дарье за терпение, понимание и высокий профессионализм. Всё очень чётко,  быстро  и понятно.",
created_at: "2015-09-16 15:53:42.713665",
updated_at: "2015-09-16 15:53:42.713665"
)
Micropost.create(
author:     "Ирина Палиашвили",
email:      "ipaliashvili@hotmail.com",
review:     "Хочу выразить глубокую благодарность вашей компании за отличный сервис, оба раза со мной работала Даша Силенко. Ей особая благодарность за четкую работу, и за терпеливое и доброе отношение! С удовольствием буду обращаться еще и рекомендовать друзьям!",
created_at: "2015-09-21 10:53:54.430443",
updated_at: "2015-09-21 10:53:54.430443"
)
Micropost.create(
author:     "Геннадий",
email:      "igraa03@mail.ru",
review:     "Уже 4 года пользуюсь услугами данного агенства, всегда бысро и качественно обслуживают и цены ниже чем в других агенствах спасибо за качественный сервис.Геннадий.",
created_at: "2015-09-22 03:29:22.851382",
updated_at: "2015-09-22 03:29:22.851382"
)
Micropost.create(
author:     "Алексей Иванов",
email:      "scripta_manent_@mail.ru",
review:     "Неоднократно обращался к сотрудникам агентства для бронирования авиабилетов, и всегда в очередной раз убеждаюсь в их исключительной ответственности, порядочности и высоком профессионализме. Работают четко, оперативно и, самое главное - результативно.",
created_at: "2015-12-15 14:53:53.470556",
updated_at: "2015-12-15 14:53:53.470556"
)
Micropost.create(
author:     "Алексей Иванов",
email:      "scripta_manent_@mail.ru",
review:     "Предлагают все возможные варианты, грамотно консультируют по всем интересующим вопросам, в общем -демонстрируют сервис европейского уровня. Скажу так: когда другие агентства беспомощно опускают (умывают)",
created_at: "2015-12-22 09:58:03",
updated_at: "2015-12-22 09:58:03"
)
