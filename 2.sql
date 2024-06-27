-- Создаем пользователя-админа 
CREATE user 'ia_admin' identified with sha256_password by 'podsadnyy';

-- Выдаем права
GRANT ALL ON *.* TO ia_admin WITH GRANT OPTION;
