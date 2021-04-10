# word = "Hello"
# puts word

#変数
# data = "データ型の種類　string(文字列） text（長い文字列） integer（整数） date（日付） boolean（真理値）(true,false)"
# puts data

#配列
# array = ["Tanaka", "Sato", "Suzuki"]
# p array[2]

# #ハッシュ
# User = {"Tanaka" => 21, "Sato" => 18, "Suzuki" => 23}
# print(User["Tanaka"])
# #ハッシュとは、キー（Tanaka）とバリュー（21)が一緒になったもの。
# #UserというハッシュがTanakaというキーを指定すると21というバリューを取ってくることが可能。出力結果は21

# recipes = ["stew", "sandwich", "steak"]

# recipes.each do |recipe|
#   puts recipe
# end
#recipes.eachは、recipesという配列から一つ一つ値を取り出す。それをrecipeというブロック変数に格納している
#そこから、recipeとして出力している。この場合、シチューが出力されサンドウィッチが出力される。

# (1..100).each do |i|
#   if i%15==0
#     puts "FizzBuzz"
#   elsif i%3==0
#     puts "Fizz"
#   elsif i%5==0
#     puts "Buzz"
#   else
#     puts i
#   end

# end

# class User
#   def initialize(name, password)
#     @name = name
#     @password = password
#   end

#   def name
#     p @name
#   end

#   def password
#     p @password
#   end

# end

# user = User.new("hoge", "1234")

# user.name
# user.password

# #クラス内で定義されたメソッドを使うため、User.newとしてインスタンスを生成する必要がある。
# #インスタンスはものと考える。そしてinitialize methodが呼ばれる。
# #(name,password)は引数と言ってメソッドに渡す値を示す
# #name,passwordはそれぞれ@name@password各変数に代入する（引数の代入）
# #@で始まる変数をインスタンス変数という
# #nameメソッド・passwordメソッドはインスタンス変数によりそれぞれ出力される
# #インスタンス変数は、メソッド間のデータ受け渡しをしたり、ビューへのデータ受け渡しするときに使う。
# #User.newは３つのメソッド（userクラス）呼び出すため。User.newというインスタンスを生成している。
# #それをuserという変数に代入している。そこから２つの引数を与える。nameはhoge、パスは1234が入る。
# #user.nameはnameメソッドが呼び出され、user.passwordはpasswordメソッドが呼び出される。

class User
  def initialize(name, password)
    @name = name
    @password = password
  end

  def name
    p @name
  end

  def password_confirmation(confirmation)
    if password == confirmation
      p "入力されたパスワードは正しいです。"
    else
      p "入力されたパスワードが違います。"
    end
  end

  private
  def password
    p @password
  end

end

user = User.new("hoge", "1234")

user.name
#user.password
user.password_confirmation("4323")
#パスワードメソッドは、クラス内のメソッドでしか呼び出せない。クラスの外から取ってくることは出来ない。
#private直下に書くことで、クラスの外から値を取ってくることが出来ない。
#しかし、privateが書かれていても同一のクラス内メソッドから取ってくることができる
#== 等しい　= 代入する