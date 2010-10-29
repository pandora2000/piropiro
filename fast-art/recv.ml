(* compile with `ocamlc [opts...] unix.cma Uartsmpl.ml' *)
open Unix

type parity_type = ODD | EVEN | NOPARITY
type flowctl_type = XON | NOFLOW
let set_params fd baud bytelen parity stopbits flowctl=
  let attr=tcgetattr fd in
  begin
    attr.c_obaud<-baud;
    attr.c_ibaud<-baud;
    attr.c_csize<-bytelen;
    attr.c_ignbrk<-true;
    attr.c_brkint<-false;
    attr.c_parmrk<-false;
    attr.c_istrip<-false;
    attr.c_inlcr<-false;
    attr.c_igncr<-false;
    attr.c_icrnl<-false;
    attr.c_opost<-false;
    attr.c_cread<-true;
    attr.c_hupcl<-false;
    attr.c_clocal<-true;
    attr.c_isig<-false;
    attr.c_icanon<-false;
    attr.c_noflsh<-false;
    attr.c_echo<-false;
    attr.c_echonl<-false;
    begin
      match parity with
      | ODD -> begin
	  attr.c_parodd<-true;
	  attr.c_parenb<-true;
	  attr.c_inpck<-true
      end
      | EVEN -> begin
	  attr.c_parodd<-false;
	  attr.c_parenb<-true;
	  attr.c_inpck<-true
      end
      | NOPARITY -> begin
	  attr.c_parenb<-false;
	  attr.c_inpck<-false
	end
    end;
    attr.c_cstopb<-stopbits;
    begin
      match flowctl with
      | XON -> begin
	  attr.c_ixon<-true;
	  attr.c_ixoff<-true
      end
      | NOFLOW -> begin
	  attr.c_ixon<-false;
	  attr.c_ixoff<-false
      end
    end;
    tcsetattr fd TCSADRAIN attr
  end

let hex_of_int num = 
  let digit0 = num land 0x0f in
  let digit1 = (num lsr 4) land 0x0f in
  let digit0_chr = String.get "0123456789ABCDEF" digit0 in
  let digit1_chr = String.get "0123456789ABCDEF" digit1 in
  let lst_chr = [digit1_chr; digit0_chr] in
    String.concat "" (List.map (fun ch -> String.make 1 ch) lst_chr)

let _=
  let uartport=openfile "/dev/ttyUSB0" [O_RDONLY] 0 in
  let _=set_params uartport 115200 8 NOPARITY 1 NOFLOW in
  let cnl=in_channel_of_descr uartport in
  let rec monitor_uart _=
    let newint0 = int_of_char (input_char cnl) in 
    let newhex0 = hex_of_int newint0 in
      print_endline newhex0;  
      monitor_uart () in
    try
      monitor_uart ()
    with x->
      close_in cnl;
      raise x
