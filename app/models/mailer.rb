class Mailer < ActionMailer::Base
 def mailer(contact_params)
   recipients "edipofederle@gmail.com"
   from  "Admim Site"
   subject "#{contact_params[:assunto]}"
   @nome = contact_params[:nome]
   @mensagem = contact_params[:mensagem]
   end
end
