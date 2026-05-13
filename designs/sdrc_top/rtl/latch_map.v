module \$_DLATCH_P_ (E, D, Q);
  input E, D;
  output Q;
  sky130_fd_sc_lp__dlxtp_2 _TECHMAP_REPLACE_ (
    .D(D),
    .GATE(E),
    .Q(Q)
  );
endmodule

module \$_DLATCH_N_ (E, D, Q);
  input E, D;
  output Q;
  sky130_fd_sc_lp__dlxtn_2 _TECHMAP_REPLACE_ (
    .D(D),
    .GATE_N(E),
    .Q(Q)
  );
endmodule