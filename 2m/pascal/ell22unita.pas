unit ell22unita;
interface
type A = object 
   private
   priv:integer;
   protected
   prot:integer;
   public
   pub:integer;
procedure setpriv(i : integer);
   function getpriv : integer;
end;   

implementation

   procedure A.setpriv(i : integer);
   begin
      priv := i;
   end;

   function A.getpriv:integer;
   begin 
      getpriv := priv;
   end;

end.			 
