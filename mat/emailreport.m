mail = 'hu1fang2zhen3@gmail.com'; %
password = '123456google';  %
smtp='smtp.gmail.com';

%
setpref('Internet','E_mail',mail);
setpref('Internet','SMTP_Server',smtp);
setpref('Internet','SMTP_Username',mail);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');

% 
%%
subject='test';
message='let''s if this is ok';
sendmail(mail,subject,message);
