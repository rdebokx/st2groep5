.global decode

decode:


ret


# this subroutine does nothing
none:	ret


invalid: ret    # instruction is called wich doesnt exist


# everything that has no addres mode , has none as an fetch routine
# if the instruction has an addres mode , give 
# None is for an instrucion that does nothing 
# Invalid is ervoor als de instructie zelfs niet bestaat

# TODO
# Invalid moet nog worden afgemaakt 
# None is al af
# Deze file moet nog in decode worden gemergd!

.long	none		;	.long do_brk	#0x0
.long   fetch_inX	; 	.long do_ora	#0x1
.long	invalid		; 	.long invalid   #0x2
.long   invalid		;	.long invalid	#0x3
.long	invalid		;	.long invalid	#0x4
.long	fetch_zp	;	.long do_ora	#0x5
.long	fetch_zp	;	.long do_asl	#0x6
.long	invalid		;	.long invalid	#0x7
.long	none		;	.long do_php	#0x8
.long	fetch_imm	;	.long do_ora	#0x9
.long	fetch_acc	;	.long do_asl	#0xa
.long	invalid		;	.long invalid	#0xb
.long	invalid		;	.long invalid	#0xc
.long	fetch_abs	;	.long do_ora	#0xd
.long	fetch_abs	;	.long do_asl	#0xe
.long	invalid		;	.long invalid	#0xf
.long	fetch_rel	;	.long do_bpl	#0x10
.long	fetch_inY	;	.long do_ora	#0x11
.long	invalid		;	.long invalid	#0x12
.long	invalid		;	.long invalid	#0x13
.long	invalid		;	.long invalid	#0x14
.long	fetch_zpX	;	.long do_ora	#0x15
.long	fetch_zpX	;	.long do_asl	#0x16
.long	invalid		;	.long invalid	#0x17
.long	none   		;	.long do_clc 	#0x18
.long	fetch_abY	;	.long do_ora	#0x19
.long 	invalid		;	.long invalid	#0x1a
.long	invalid		;	.long invalid	#0x1b
.long	invalid		;	.long invalid	#0x1c
.long	fetch_abX	;	.long do_ora	#0x1d
.long	fetch_abX	;	.long do_asl	#0x1e
.long	invalid		;	.long invalid	#0x1f
.long	fetch_abs	;	.long do_jsr	#0x20
.long	fetch_inX	;	.long do_and	#0x21
.long	invalid		;	.long invalid	#0x22
.long	invalid		;	.long invalid	#0x23
.long	fetch_zp	;	.long do_bit	#0x24
.long	fetch_zp	;	.long do_and	#0x25
.long	fetch_zp	;	.long do_rol	#0x26
.long	invalid		;	.long invalid	#0x27
.long	none		;	.long do_plp	#0x28
.long	fetch_imm	;	.long do_and	#0x29
.long	fetch_acc	;	.long do_rol	#0x2a
.long	invalid		;	.long invalid	#0x2b
.long	fetch_abs	;	.long do_bit	#0x2c
.long	fetch_abs	;	.long do_and	#0x2d
.long	fetch_abs	;	.long do_rol	#0x2e
.long	invalid		;	.long invalid	#0x2f
.long	fetch_rel	;	.long do_bmi	#0x30
.long	fetch_inY	;	.long do_and	#0x31
.long	invalid		;	.long invalid	#0x32
.long	invalid		;	.long invalid	#0x33
.long	invalid		;	.long invalid	#0x34
.long	fetch_zpX	;	.long do_and	#0x35
.long	fetch_zpX	;	.long do_rol	#0x36
.long	invalid		;	.long invalid	#0x37
.long	none		;	.long do_sec	#0x38
.long	fetch_abY	;	.long do_and	#0x39
.long	invalid		;	.long invalid	#0x3a
.long	invalid		;	.long invalid	#0x3b
.long	invalid		;	.long invalid	#0x3c
.long	fetch_abX	;	.long do_and	#0x3d
.long	fetch_abX	;	.long do_rol	#0x3e
.long	invalid		;	.long invalid	#0x3f
.long	none		;	.long do_rti	#0x40
.long	fetch_inX	;	.long do_eor	#0x41
.long	invalid		;	.long invalid	#0x42
.long	invalid		;	.long invalid	#0x43
.long	invalid		;	.long invalid	#0x44
.long	fetch_zp	;	.long do_eor	#0x45
.long	fetch_zp	;	.long do_lsr	#0x46
.long	invalid		;	.long invalid	#0x47
.long	none		;	.long do_pha	#0x48
.long	fetch_imm	;	.long do_eor	#0x49
.long	fetch_acc	;	.long do_lsr	#0x4a
.long	invalid		;	.long invalid	#0x4b
.long	fetch_abs	;	.long do_jmp	#0x4c
.long	fetch_abs	;	.long do_eor	#0x4d
.long	fetch_abs	;	.long do_lsr	#0x4f
.long	fetch_rel	;	.long do_bvc	#0x50
.long	fetch_inY	;	.long do_eor	#0x51
.long	invalid		;	.long invalid	#0x52
.long	invalid		;	.long invalid	#0x53
.long	invalid		;	.long invalid	#0x54
.long	fetch_zpX	;	.long do_eor	#0x55
.long	fetch_zpX	;	.long do_lsr	#0x56
.long	invalid		;	.long invalid	#0x57
.long	none		;	.long do_cli	#0x58
.long	fetch_abY	;	.long do_eor	#0x59
.long	invalid		;	.long invalid	#0x5a
.long	invalid		;	.long invalid	#0x5b
.long	invalid		;	.long invalid	#0x5c
.long	fetch_abX	;	.long do_eor	#0x5d
.long	fetch_abX	;	.long do_lsr	#0x5e
.long	invalid		;	.long invalid	#0x5f
.long	none		;	.long do_rts	#0x60
.long	fetch_inX	;	.long do_adc	#0x61
.long	invalid		;	.long invalid	#0x62
.long	invalid		;	.long invalid	#0x63
.long	invalid		;	.long invalid	#0x64
.long	fetch_zp	;	.long do_adc	#0x65
.long	fetch_zp	;	.long do_ror	#0x66
.long	invalid		;	.long invalid	#0x67
.long	none		;	.long do_pla	#0x68
.long	fetch_imm	;	.long do_adc	#0x69
.long	fetch_acc	;	.long do_ror	#0x6a
.long	invalid		;	.long invalid	#0x6b
.long	fetch_ind	;	.long do_jmp	#0x6c
.long	fetch_abs	;	.long do_adc	#0x6d
.long	fetch_abs	;	.long do_ror	#0x6e
.long	invalid		;	.long invalid	#0x6f
.long	fetch_rel	;	.long do_bvs	#0x70
.long	fetch_inY	;	.long do_adc	#0x71
.long	invalid		;	.long invalid	#0x72
.long	invalid		;	.long invalid	#0x73
.long	invalid		;	.long invalid	#0x74
.long	fetch_zpX	;	.long do_adc 	#0x75
.long	fetch_zpX	;	.long do_ror	#0x76
.long	invalid		;	.long invalid	#0x77
.long	none		;	.long do_sei	#0x78
.long	fetch_abY	;	.long do_adc	#0x79
.long	invalid		;	.long invalid	#0x7a
.long	invalid		;	.long invalid	#0x7b
.long	invalid		;	.long invalid	#0x7c
.long	fetch_abX	;	.long do_adc	#0x7d
.long	fetch_abX	;	.long do_ror	#0x7e
.long	invalid		;	.long invalid	#0x7f
.long	invalid		;	.long invalid	#0x80
.long	fetch_inX	;	.long do_sta	#0x81
.long	invalid		;	.long invalid	#0x82
.long	invalid		;	.long invalid	#0x83
.long	fetch_inY	;	.long do_sta	#0x84
.long	fetch_zp	;	.long do_sta	#0x85
.long	fetch_zp	;	.long do_stx	#0x86
.long 	invalid		;	.long invalid	#0x87
.long 	none		;	.long do_dey	#0x88
.long	invalid		;	.long invalid	#0x89
.long	none		;	.long do_txz	#0x8a
.long	invalid		;	.long invalid	#0x8b
.long	fetch_abs	;	.long do_sty	#0x8c
.long	fetch_abs	;	.long do_sta	#0x8d
.long	fetch_abs	;	.long do_stx	#0x8e
.long	invalid		;	.long invalid	#0x8f
.long	fetch_rel	;	.long do_bcc	#0x90
.long	fetch_inY	;	.long do_sta	#0x91
.long	invalid		;	.long invalid	#0x92
.long	invalid		;	.long invalid	#0x93
.long	fetch_zpX	;	.long do_sty	#0x94
.long	fetch_zpX	;	.long do_sta	#0x95
.long	fetch_zpY	;	.long do_stx	#0x96
.long	invalid		;	.long invalid	#0x97
.long	none		;	.long do_tya	#0x98
.long	fetch_abY	;	.long do_sta	#0x99
.long	none		;	.long do_txs	#0x9a
.long	invalid		;	.long invalid	#0x9b
.long	invalid		;	.long invalid	#0x9c
.long	fetch_abX	;	.long do_sta	#0x9d
.long	invalid		;	.long invalid	#0x9e
.long	invalid		;	.long invalid	#0x9f
.long	fetch_imm	;	.long do_ldy	#0xa0
.long	fetch_inX	;	.long do_lda	#0xa1
.long	fetch_imm	;	.long do_ldx	#0xa2
.long	invalid		;	.long invalid	#0xa3
.long	fetch_zp	;	.long do_ldy	#0xa4
.long	fetch_zp	;	.long do_lda	#0xa5
.long	fetch_zp	;	.long do_ldx	#0xa6
.long	invalid		;	.long invalid	#0xa7
.long	none		;	.long do_tay	#0xa8
.long	fetch_imm	;	.long do_lda	#0xa9
.long	none		;	.long do_tax	#0xaa
.long	invalid		;	.long invalid	#0xab
.long	fetch_abs	;	.long do_ldy	#0xac
.long	fetch_abs	;	.long do_lda	#0xad
.long	fetch_abs	;	.long do_ldx	#0xae
.long	invalid		;	.long invalid	#0xaf
.long	fetch_rel	;	.long do_bcs	#0xb0
.long	fetch_inY	;	.long do_lda	#0xb1
.long	invalid		;	.long invalid	#0xb2
.long	invalid		;	.long invalid	#0xb3
.long	fetch_zpX	;	.long do_ldy	#0xb4
.long	fetch_zpX	;	.long do_lda	#0xb5
.long	fetch_zpY	;	.long do_ldx	#0xb6
.long	invalid		;	.long invalid	#0xb7
.long	none		;	.long do_clv	#0xb8
.long	fetch_abY	;	.long do_lba	#0xb9
.long	none		;	.long do_tsx	#0xba
.long	invalid		;	.long invalid	#0xbb
.long	fetch_abX	;	.long do_ldy	#0xbc
.long	fetch_abX	;	.long do_lsa	#0xbd
.long	fetch_abY	;	.long do_ldx	#0xbe
.long	invalid		;	.long invalid	#0xbf
.long	fetch_imm	;	.long do_cpy	#0xc0
.long	fetch_inX	;	.long do_cmp	#0xc1
.long	invalid		;	.long invalid	#0xc2
.long 	invalid		;	.long invalid	#0xc3
.long	fetch_zp	;	.long do_cpy	#0xc4
.long	fetch_zp	;	.long do_cmp	#0xc5
.long	fetch_zp	;	.long do_dec	#0xc6
.long	invalid		;	.long invalid	#0xc7
.long	none		;	.long do_iny	#0xc8
.long	fetch_imm	;	.long do_cmp	#0xc9
.long	none		;	.long do_dex	#0xca
.long	invalid		;	.long invalid	#0xcb
.long	fetch_abs	;	.long do_cpy	#0xcc
.long	fetch_abs	;	.long do_zmp	#0xcd
.long	fetch_abs	;	.long do_dec	#0xce
.long	invalid	 	;	.long invalid	#0xcf
.long	fetch_rel	;	.long do_bne	#0xd0
.long	fetch_inY	;	.long do_jmp	#0xd1
.long	invalid		;	.long invalid	#0xd2
.long	invalid		;	.long invalid	#0xd3
.long	invalid		;	.long invalid	#0xd4
.long	fetch_zpX	;	.long do_cmp	#0xd5
.long	fetch_zpX	;	.long do_dec	#0xd6
.long	invalid		;	.long invalid	#0xd7
.long	none		;	.long do_cld	#0xd8
.long	fetch_abY	;	.long do_cmp	#0xd9
.long	invalid		;	.long invalid	#0xda
.long	none		;	.long do_stp	#0xdb
.long	invalid		;	.long invalid	#0xdc
.long	fetch_abX	;	.long do_cmp	#0xdd
.long	fetch_abX	;	.long do_dec	#0xde
.long	invalid		;	.long invalid	#0xdf
.long	fetch_imm	;	.long do_cpx	#0xe0
.long	fetch_inX	;	.long do_sbc	#0xe1
.long	invalid		;	.long invalid	#0xe2
.long	invalid		;	.long invalid	#0xe3
.long	fetch_zp	;	.long do_cpx	#0xe4
.long	fetch_zp	;	.long do_sbc	#0xe5
.long	fetch_zp	;	.long do_inc	#0xe6
.long	invalid		;	.long invalid	#0xe7
.long	none		;	.long do_inx	#0xe8
.long	fetch_imm	;	.long do_sbc	#0xe9
.long	none		;	.long do_nop	#0xea
.long	invalid		;	.long invalid	#0xeb
.long	fetch_abs	;	.long do_cpx	#0xec
.long	fetch_abs	;	.long do_sbc	#0xed
.long	fetch_abs	;	.long do_inc	#0xee
.long	invalid		;	.long invalid	#0xef
.long	fetch_rel	;	.long do_bec	#0xf0
.long	fetch_inY	;	.long do_sbc	#0xf1
.long	invalid		;	.long invalid	#0xf2
.long	invalid		;	.long invalid	#0xf3
.long	invalid		;	.long invalid	#0xf4
.long	fetch_zpX	;	.long do_sbc	#0xf5
.long	fetch_zpX	;	.long do_inc	#0xf6
.long	invalid		;	.long invalid	#0xf7
.long	none		;	.long do_sed	#0xf8
.long	fetch_abY	;	.long do_sbc	#0xf9
.long	invalid		;	.long invalid	#0xfa
.long	invalid		;	.long invalid	#0xfb
.long	invalid		;	.long invalid	#0xfc
.long	fetch_abX	;	.long do_sbc	#0xfd
.long	fetch_abX	;	.long do_inc	#0xfe
.long	invalid		;	.long invalid	#0xff
