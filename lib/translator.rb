# require modules here
require 'pry'
require 'yaml'

def load_library(file_name)
  emoticons = YAML.load(File.read(file_name))
  
  emote_hash = {}

  emoticons.each do |key,value|
    emote_hash[key] = {}
    emote_hash[key][:english] = value[0]
    emote_hash[key][:japanese] = value[1]
  end

  emote_hash
end

def get_japanese_emoticon(emote)
 library = load_library(file_path)
 emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, this emote isn't available :("
end


def get_english_meaning
  library = load_library(file_path)
  
end

#{
   #"angel" => [ "O:)", "☜(⌒▽⌒)☞" ],
   #"angry" => [ ">:(", "ヽ(ｏ`皿′ｏ)ﾉ" ],
   #"bored" => [ ":O", "(ΘεΘ;)" ],
   #"confused" => [ "%)", "(゜.゜)" ],
   #"embarrassed" => [ ":$", "(#^.^#)" ],
   #"fish" => [ "><>", ">゜))))彡" ],
   #"glasses" => [ "8D", "(^0_0^)" ],
   #"grinning" => [ "=D", "(￣ー￣)" ],
   #"happy" => [ ":)", "(＾ｖ＾)" ],
   #"kiss" => [ ":*", "(*^3^)/~☆" ],
   #"sad" => [ ":'(", "(Ｔ▽Ｔ)" ],
   #"surprised" => [ ":o", "o_O" ],
   #"wink" => [ ";)", "(^_-)" ]
#}