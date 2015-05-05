unit ell22unitb;
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

type b = object(a)
procedure setprot(i : integer);
   function getprot : integer;
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

   procedure b.setprot(i : integer);
   begin
      prot := i;
   end;
   function b.getprot:integer;
   begin
      getprot:=prot;
   end;

end.			 
