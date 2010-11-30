open Closure

let zreg = Optt.zreg
let hpreg = Optt.hpreg
(*  
let create_array =
  let ar = Id.genid "ar" and num = Id.genid "num" and init = Id.genid "init" in
    { name = (Id.L "min_caml_create_array",
	      Type.Fun ([Type.Int; Type.Int], (Type.Array Type.Int)));
      args = [num, Type.Int; init, Type.Int];
      formal_fv = [];
      body =
	(Let((ar, Type.Array(Type.Int)), Add(zreg, hpreg),
	     Let((hpreg, Type.Int), Add(hpreg, num),
		 Let((Id.gentmp Type.Unit, Type.Unit),
		     AppDir(Id.L "min_caml_init_array", [ar; num; init]),
		     (*TODO:ここで指定するとアセンブラではロードの直後となって無駄*)
		     (*これはemitで簡単に解消できそう*)
		     Add(zreg, ar)))));
    }
  
let fcreate_array =
  let ar = Id.genid "ar" and num = Id.genid "num" and init = Id.genid "init" in
    { name = (Id.L "min_caml_create_float_array",
	      Type.Fun ([Type.Int; Type.Float], (Type.Array Type.Float)));
      args = [num, Type.Int; init, Type.Float];
      formal_fv = [];
      body =
	(Let((ar, Type.Array(Type.Float)), Add(zreg, hpreg),
	     Let((hpreg, Type.Int), Add(hpreg, num),
		 Let((Id.gentmp Type.Unit, Type.Unit),
		     AppDir(Id.L "min_caml_init_float_array", [ar; num; init]),
		     (*TODO:ここで指定するとアセンブラではロードの直後となって無駄*)
		     (*これはemitで簡単に解消できそう*)
		     Add(zreg, ar)))));
    }
      
let init_array =
  let ar = Id.genid "ar" and num = Id.genid "num" and init = Id.genid "init" in
  let nnum = Id.genid "num" and nar = Id.genid "ar" in
  let o = Id.genid "one" in
    { name = (Id.L "min_caml_init_array",
	      Type.Fun ([Type.Array Type.Int; Type.Int; Type.Int], Type.Unit));
      args = [ar, Type.Array Type.Int; num, Type.Int; init, Type.Int];
      formal_fv = [];
      body =
	IfEq(num, zreg, Unit,
	     Let((Id.gentmp Type.Unit, Type.Unit), Put(ar, zreg, init),
		 Let((o, Type.Int), Int(1),
		     Let((nnum, Type.Int), Sub(num, o),
			 Let((nar, Type.Array(Type.Int)), Add(ar, o),
			     AppDir(Id.L "min_caml_init_array", [nar; nnum; init]
				   ))))));
    }
      
let finit_array =
  let ar = Id.genid "ar" and num = Id.genid "num" and init = Id.genid "init" in
  let nnum = Id.genid "num" and nar = Id.genid "ar" in
  let o = Id.genid "one" in
    { name = (Id.L "min_caml_init_float_array",
	      Type.Fun ([Type.Array Type.Int; Type.Int; Type.Float], Type.Unit));
      args = [ar, Type.Array Type.Int; num, Type.Int; init, Type.Float];
      formal_fv = [];
      body =
	IfEq(num, zreg, Unit,
	     Let((Id.gentmp Type.Unit, Type.Unit), Put(ar, zreg, init),
		 Let((o, Type.Int), Int(1),
		     Let((nnum, Type.Int), Sub(num, o),
			 Let((nar, Type.Array(Type.Float)), Add(ar, o),
			     AppDir(Id.L "min_caml_init_float_array", [nar; nnum; init]
				   ))))));
    }
    
	let ri =
	{ name = Id.L "min_caml_read_int"; args = []; fargs = [];
	body = Ans(Ri);
	ret = Type.Int }

	let rf =
	{ name = Id.L "min_caml_read_float"; args = []; fargs = [];
	body = Ans(Rf);
	ret = Type.Float }

	let pi =
	let num = Id.genid "num" in
	{ name = Id.L "min_caml_print_char"; args = [num]; fargs = [];
	body = Ans(Pc num);
	ret = Type.Unit }

	let pf =
	let num = Id.genid "num" in
	{ name = Id.L "min_caml_print_float"; args = []; fargs = [num];
	body = Ans(Pf num);
	ret = Type.Unit }
      *)
