class Game 
  def initialize
    @score = 0
    @last_question = ''
    @rand_question = ''
    @questions = [['ukub', 'buku'], ['tupin', 'pintu'], ['soka', 'kaos']]
  end

  def run
    input_question
  end

  def input_question
    loop do
      print "Silahkan masukan tambahan kata berupa pertanyaan acak kata dengan jawabannya dahulu! 'acak_kata=jawaban'  [ENTER]\n" if @questions.length == 3
      question = gets.chomp
      question = question.split('=')
      new_question = [question[0], question[1]]
      @questions << new_question

      print "Masukan kata lagi? ketik y/n [ENTER]\n"
      ask = gets.chomp
      if ask == 'n'
        ask_question
        break if @ask_question_next == 'n'
      end
    end
  end

  def ask_question
    loop do
      @rand_question = @questions.sample
      question = @rand_question[0] 
      answare = @rand_question[1]
      print "Tebak kata: #{question}\n"
      print "Jawab: #{new_answare=gets.chomp}\n"

      if answare == new_answare
        print "BENAR point anda : #{@score=@score+1}! Tebak kata: #{question} Jawab: #{new_answare}\n"
        @last_question = @rand_question
      else
        loop do
          print "SALAH! Silakan coba lagi Jawab: \n"
          new_answare=gets.chomp

          if answare == new_answare
            print "BENAR point anda : #{@score=@score+1}! Tebak kata: #{question} Jawab: #{new_answare}\n"
            @last_question = @rand_question
            break
          end
        end
      end
      
      print "Lanjutkan game? ketik y/n [ENTER]\n"
      @ask_question_next = gets.chomp
      if @ask_question_next == 'n'
        print "Selamat score yang anda dapatkan = #{@score}\n"
        break
      end
    end
  end
end

# --------- TO RUN GAME ----------
game = Game.new.run

# --------- EXAMPLE RESULTS ----------
# Silahkan masukan tambahan kata berupa pertanyaan acak kata dengan jawabannya dahulu! 'acak_kata=jawaban'  [ENTER]
# irot=roti
# Masukan kata lagi? ketik y/n [ENTER]
# y
# nakam=makan
# Masukan kata lagi? ketik y/n [ENTER]
# n
# Tebak kata: soka
# kaos
# Jawab: kaos
# BENAR point anda : 1! Tebak kata: soka Jawab: kaos
# Lanjutkan game? ketik y/n [ENTER]
# y
# Tebak kata: ukub
# buku
# Jawab: buku
# BENAR point anda : 2! Tebak kata: ukub Jawab: buku
# Lanjutkan game? ketik y/n [ENTER]
# y
# Tebak kata: soka
# kkkk
# Jawab: kkkk
# SALAH! Silakan coba lagi Jawab: 
# kaos
# BENAR point anda : 3! Tebak kata: soka Jawab: kaos
# Lanjutkan game? ketik y/n [ENTER]
# n
# Selamat score yang anda dapatkan = 3