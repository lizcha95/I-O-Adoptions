CREATE OR REPLACE FUNCTION verificar_Usuario(pUsername in varchar, pPassword in varchar)
       RETURN logInTable PIPELINED is
       rec logInType := logInType(NULL);
       BEGIN
         FOR item IN (
           select count(1) as LogIn
                  from usuarios u
                  where u.username = pUsername and u.contrasenia = pPassword)
         LOOP
         rec.resultado := item.LogIn;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
end verificar_Usuario;
