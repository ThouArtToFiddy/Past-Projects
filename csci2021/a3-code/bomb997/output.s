
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b00 <_init>:
  400b00:	48 83 ec 08          	sub    $0x8,%rsp
  400b04:	48 8b 05 ed 34 20 00 	mov    0x2034ed(%rip),%rax        # 603ff8 <__gmon_start__>
  400b0b:	48 85 c0             	test   %rax,%rax
  400b0e:	74 05                	je     400b15 <_init+0x15>
  400b10:	e8 db 01 00 00       	callq  400cf0 <__gmon_start__@plt>
  400b15:	48 83 c4 08          	add    $0x8,%rsp
  400b19:	c3                   	retq   

Disassembly of section .plt:

0000000000400b20 <.plt>:
  400b20:	ff 35 e2 34 20 00    	pushq  0x2034e2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b26:	ff 25 e4 34 20 00    	jmpq   *0x2034e4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b30 <getenv@plt>:
  400b30:	ff 25 e2 34 20 00    	jmpq   *0x2034e2(%rip)        # 604018 <getenv@GLIBC_2.2.5>
  400b36:	68 00 00 00 00       	pushq  $0x0
  400b3b:	e9 e0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b40 <strcasecmp@plt>:
  400b40:	ff 25 da 34 20 00    	jmpq   *0x2034da(%rip)        # 604020 <strcasecmp@GLIBC_2.2.5>
  400b46:	68 01 00 00 00       	pushq  $0x1
  400b4b:	e9 d0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b50 <__errno_location@plt>:
  400b50:	ff 25 d2 34 20 00    	jmpq   *0x2034d2(%rip)        # 604028 <__errno_location@GLIBC_2.2.5>
  400b56:	68 02 00 00 00       	pushq  $0x2
  400b5b:	e9 c0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b60 <strcpy@plt>:
  400b60:	ff 25 ca 34 20 00    	jmpq   *0x2034ca(%rip)        # 604030 <strcpy@GLIBC_2.2.5>
  400b66:	68 03 00 00 00       	pushq  $0x3
  400b6b:	e9 b0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b70 <puts@plt>:
  400b70:	ff 25 c2 34 20 00    	jmpq   *0x2034c2(%rip)        # 604038 <puts@GLIBC_2.2.5>
  400b76:	68 04 00 00 00       	pushq  $0x4
  400b7b:	e9 a0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b80 <write@plt>:
  400b80:	ff 25 ba 34 20 00    	jmpq   *0x2034ba(%rip)        # 604040 <write@GLIBC_2.2.5>
  400b86:	68 05 00 00 00       	pushq  $0x5
  400b8b:	e9 90 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b90 <__stack_chk_fail@plt>:
  400b90:	ff 25 b2 34 20 00    	jmpq   *0x2034b2(%rip)        # 604048 <__stack_chk_fail@GLIBC_2.4>
  400b96:	68 06 00 00 00       	pushq  $0x6
  400b9b:	e9 80 ff ff ff       	jmpq   400b20 <.plt>

0000000000400ba0 <alarm@plt>:
  400ba0:	ff 25 aa 34 20 00    	jmpq   *0x2034aa(%rip)        # 604050 <alarm@GLIBC_2.2.5>
  400ba6:	68 07 00 00 00       	pushq  $0x7
  400bab:	e9 70 ff ff ff       	jmpq   400b20 <.plt>

0000000000400bb0 <close@plt>:
  400bb0:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604058 <close@GLIBC_2.2.5>
  400bb6:	68 08 00 00 00       	pushq  $0x8
  400bbb:	e9 60 ff ff ff       	jmpq   400b20 <.plt>

0000000000400bc0 <read@plt>:
  400bc0:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604060 <read@GLIBC_2.2.5>
  400bc6:	68 09 00 00 00       	pushq  $0x9
  400bcb:	e9 50 ff ff ff       	jmpq   400b20 <.plt>

0000000000400bd0 <__libc_start_main@plt>:
  400bd0:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604068 <__libc_start_main@GLIBC_2.2.5>
  400bd6:	68 0a 00 00 00       	pushq  $0xa
  400bdb:	e9 40 ff ff ff       	jmpq   400b20 <.plt>

0000000000400be0 <fgets@plt>:
  400be0:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604070 <fgets@GLIBC_2.2.5>
  400be6:	68 0b 00 00 00       	pushq  $0xb
  400beb:	e9 30 ff ff ff       	jmpq   400b20 <.plt>

0000000000400bf0 <signal@plt>:
  400bf0:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604078 <signal@GLIBC_2.2.5>
  400bf6:	68 0c 00 00 00       	pushq  $0xc
  400bfb:	e9 20 ff ff ff       	jmpq   400b20 <.plt>

0000000000400c00 <gethostbyname@plt>:
  400c00:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604080 <gethostbyname@GLIBC_2.2.5>
  400c06:	68 0d 00 00 00       	pushq  $0xd
  400c0b:	e9 10 ff ff ff       	jmpq   400b20 <.plt>

0000000000400c10 <__memmove_chk@plt>:
  400c10:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604088 <__memmove_chk@GLIBC_2.3.4>
  400c16:	68 0e 00 00 00       	pushq  $0xe
  400c1b:	e9 00 ff ff ff       	jmpq   400b20 <.plt>

0000000000400c20 <strtol@plt>:
  400c20:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604090 <strtol@GLIBC_2.2.5>
  400c26:	68 0f 00 00 00       	pushq  $0xf
  400c2b:	e9 f0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c30 <fflush@plt>:
  400c30:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604098 <fflush@GLIBC_2.2.5>
  400c36:	68 10 00 00 00       	pushq  $0x10
  400c3b:	e9 e0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c40 <__isoc99_sscanf@plt>:
  400c40:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 6040a0 <__isoc99_sscanf@GLIBC_2.7>
  400c46:	68 11 00 00 00       	pushq  $0x11
  400c4b:	e9 d0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c50 <__printf_chk@plt>:
  400c50:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 6040a8 <__printf_chk@GLIBC_2.3.4>
  400c56:	68 12 00 00 00       	pushq  $0x12
  400c5b:	e9 c0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c60 <fopen@plt>:
  400c60:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 6040b0 <fopen@GLIBC_2.2.5>
  400c66:	68 13 00 00 00       	pushq  $0x13
  400c6b:	e9 b0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c70 <gethostname@plt>:
  400c70:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 6040b8 <gethostname@GLIBC_2.2.5>
  400c76:	68 14 00 00 00       	pushq  $0x14
  400c7b:	e9 a0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c80 <exit@plt>:
  400c80:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 6040c0 <exit@GLIBC_2.2.5>
  400c86:	68 15 00 00 00       	pushq  $0x15
  400c8b:	e9 90 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c90 <connect@plt>:
  400c90:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 6040c8 <connect@GLIBC_2.2.5>
  400c96:	68 16 00 00 00       	pushq  $0x16
  400c9b:	e9 80 fe ff ff       	jmpq   400b20 <.plt>

0000000000400ca0 <__fprintf_chk@plt>:
  400ca0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 6040d0 <__fprintf_chk@GLIBC_2.3.4>
  400ca6:	68 17 00 00 00       	pushq  $0x17
  400cab:	e9 70 fe ff ff       	jmpq   400b20 <.plt>

0000000000400cb0 <sleep@plt>:
  400cb0:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 6040d8 <sleep@GLIBC_2.2.5>
  400cb6:	68 18 00 00 00       	pushq  $0x18
  400cbb:	e9 60 fe ff ff       	jmpq   400b20 <.plt>

0000000000400cc0 <__ctype_b_loc@plt>:
  400cc0:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 6040e0 <__ctype_b_loc@GLIBC_2.3>
  400cc6:	68 19 00 00 00       	pushq  $0x19
  400ccb:	e9 50 fe ff ff       	jmpq   400b20 <.plt>

0000000000400cd0 <__sprintf_chk@plt>:
  400cd0:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 6040e8 <__sprintf_chk@GLIBC_2.3.4>
  400cd6:	68 1a 00 00 00       	pushq  $0x1a
  400cdb:	e9 40 fe ff ff       	jmpq   400b20 <.plt>

0000000000400ce0 <socket@plt>:
  400ce0:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 6040f0 <socket@GLIBC_2.2.5>
  400ce6:	68 1b 00 00 00       	pushq  $0x1b
  400ceb:	e9 30 fe ff ff       	jmpq   400b20 <.plt>

Disassembly of section .plt.got:

0000000000400cf0 <__gmon_start__@plt>:
  400cf0:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 603ff8 <__gmon_start__>
  400cf6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400d00 <_start>:
  400d00:	31 ed                	xor    %ebp,%ebp
  400d02:	49 89 d1             	mov    %rdx,%r9
  400d05:	5e                   	pop    %rsi
  400d06:	48 89 e2             	mov    %rsp,%rdx
  400d09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d0d:	50                   	push   %rax
  400d0e:	54                   	push   %rsp
  400d0f:	49 c7 c0 f0 25 40 00 	mov    $0x4025f0,%r8
  400d16:	48 c7 c1 80 25 40 00 	mov    $0x402580,%rcx
  400d1d:	48 c7 c7 f6 0d 40 00 	mov    $0x400df6,%rdi
  400d24:	e8 a7 fe ff ff       	callq  400bd0 <__libc_start_main@plt>
  400d29:	f4                   	hlt    
  400d2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400d30 <deregister_tm_clones>:
  400d30:	b8 87 4b 60 00       	mov    $0x604b87,%eax
  400d35:	55                   	push   %rbp
  400d36:	48 2d 80 4b 60 00    	sub    $0x604b80,%rax
  400d3c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d40:	48 89 e5             	mov    %rsp,%rbp
  400d43:	76 1b                	jbe    400d60 <deregister_tm_clones+0x30>
  400d45:	b8 00 00 00 00       	mov    $0x0,%eax
  400d4a:	48 85 c0             	test   %rax,%rax
  400d4d:	74 11                	je     400d60 <deregister_tm_clones+0x30>
  400d4f:	5d                   	pop    %rbp
  400d50:	bf 80 4b 60 00       	mov    $0x604b80,%edi
  400d55:	ff e0                	jmpq   *%rax
  400d57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400d5e:	00 00 
  400d60:	5d                   	pop    %rbp
  400d61:	c3                   	retq   
  400d62:	0f 1f 40 00          	nopl   0x0(%rax)
  400d66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d6d:	00 00 00 

0000000000400d70 <register_tm_clones>:
  400d70:	be 80 4b 60 00       	mov    $0x604b80,%esi
  400d75:	55                   	push   %rbp
  400d76:	48 81 ee 80 4b 60 00 	sub    $0x604b80,%rsi
  400d7d:	48 c1 fe 03          	sar    $0x3,%rsi
  400d81:	48 89 e5             	mov    %rsp,%rbp
  400d84:	48 89 f0             	mov    %rsi,%rax
  400d87:	48 c1 e8 3f          	shr    $0x3f,%rax
  400d8b:	48 01 c6             	add    %rax,%rsi
  400d8e:	48 d1 fe             	sar    %rsi
  400d91:	74 15                	je     400da8 <register_tm_clones+0x38>
  400d93:	b8 00 00 00 00       	mov    $0x0,%eax
  400d98:	48 85 c0             	test   %rax,%rax
  400d9b:	74 0b                	je     400da8 <register_tm_clones+0x38>
  400d9d:	5d                   	pop    %rbp
  400d9e:	bf 80 4b 60 00       	mov    $0x604b80,%edi
  400da3:	ff e0                	jmpq   *%rax
  400da5:	0f 1f 00             	nopl   (%rax)
  400da8:	5d                   	pop    %rbp
  400da9:	c3                   	retq   
  400daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400db0 <__do_global_dtors_aux>:
  400db0:	80 3d f1 3d 20 00 00 	cmpb   $0x0,0x203df1(%rip)        # 604ba8 <completed.7594>
  400db7:	75 11                	jne    400dca <__do_global_dtors_aux+0x1a>
  400db9:	55                   	push   %rbp
  400dba:	48 89 e5             	mov    %rsp,%rbp
  400dbd:	e8 6e ff ff ff       	callq  400d30 <deregister_tm_clones>
  400dc2:	5d                   	pop    %rbp
  400dc3:	c6 05 de 3d 20 00 01 	movb   $0x1,0x203dde(%rip)        # 604ba8 <completed.7594>
  400dca:	f3 c3                	repz retq 
  400dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400dd0 <frame_dummy>:
  400dd0:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400dd5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400dd9:	75 05                	jne    400de0 <frame_dummy+0x10>
  400ddb:	eb 93                	jmp    400d70 <register_tm_clones>
  400ddd:	0f 1f 00             	nopl   (%rax)
  400de0:	b8 00 00 00 00       	mov    $0x0,%eax
  400de5:	48 85 c0             	test   %rax,%rax
  400de8:	74 f1                	je     400ddb <frame_dummy+0xb>
  400dea:	55                   	push   %rbp
  400deb:	48 89 e5             	mov    %rsp,%rbp
  400dee:	ff d0                	callq  *%rax
  400df0:	5d                   	pop    %rbp
  400df1:	e9 7a ff ff ff       	jmpq   400d70 <register_tm_clones>

0000000000400df6 <main>:
  400df6:	53                   	push   %rbx
  400df7:	83 ff 01             	cmp    $0x1,%edi
  400dfa:	75 10                	jne    400e0c <main+0x16>
  400dfc:	48 8b 05 8d 3d 20 00 	mov    0x203d8d(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  400e03:	48 89 05 a6 3d 20 00 	mov    %rax,0x203da6(%rip)        # 604bb0 <infile>
  400e0a:	eb 63                	jmp    400e6f <main+0x79>
  400e0c:	48 89 f3             	mov    %rsi,%rbx
  400e0f:	83 ff 02             	cmp    $0x2,%edi
  400e12:	75 3a                	jne    400e4e <main+0x58>
  400e14:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e18:	be 04 26 40 00       	mov    $0x402604,%esi
  400e1d:	e8 3e fe ff ff       	callq  400c60 <fopen@plt>
  400e22:	48 89 05 87 3d 20 00 	mov    %rax,0x203d87(%rip)        # 604bb0 <infile>
  400e29:	48 85 c0             	test   %rax,%rax
  400e2c:	75 41                	jne    400e6f <main+0x79>
  400e2e:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400e32:	48 8b 13             	mov    (%rbx),%rdx
  400e35:	be 06 26 40 00       	mov    $0x402606,%esi
  400e3a:	bf 01 00 00 00       	mov    $0x1,%edi
  400e3f:	e8 0c fe ff ff       	callq  400c50 <__printf_chk@plt>
  400e44:	bf 08 00 00 00       	mov    $0x8,%edi
  400e49:	e8 32 fe ff ff       	callq  400c80 <exit@plt>
  400e4e:	48 8b 16             	mov    (%rsi),%rdx
  400e51:	be 23 26 40 00       	mov    $0x402623,%esi
  400e56:	bf 01 00 00 00       	mov    $0x1,%edi
  400e5b:	b8 00 00 00 00       	mov    $0x0,%eax
  400e60:	e8 eb fd ff ff       	callq  400c50 <__printf_chk@plt>
  400e65:	bf 08 00 00 00       	mov    $0x8,%edi
  400e6a:	e8 11 fe ff ff       	callq  400c80 <exit@plt>
  400e6f:	e8 64 06 00 00       	callq  4014d8 <initialize_bomb>
  400e74:	bf 88 26 40 00       	mov    $0x402688,%edi
  400e79:	e8 f2 fc ff ff       	callq  400b70 <puts@plt>
  400e7e:	bf c8 26 40 00       	mov    $0x4026c8,%edi
  400e83:	e8 e8 fc ff ff       	callq  400b70 <puts@plt>
  400e88:	e8 82 09 00 00       	callq  40180f <read_line>
  400e8d:	48 89 c7             	mov    %rax,%rdi
  400e90:	e8 98 00 00 00       	callq  400f2d <phase_1>
  400e95:	e8 9b 0a 00 00       	callq  401935 <phase_defused>
  400e9a:	bf f8 26 40 00       	mov    $0x4026f8,%edi
  400e9f:	e8 cc fc ff ff       	callq  400b70 <puts@plt>
  400ea4:	e8 66 09 00 00       	callq  40180f <read_line>
  400ea9:	48 89 c7             	mov    %rax,%rdi
  400eac:	e8 98 00 00 00       	callq  400f49 <phase_2>
  400eb1:	e8 7f 0a 00 00       	callq  401935 <phase_defused>
  400eb6:	bf 3d 26 40 00       	mov    $0x40263d,%edi
  400ebb:	e8 b0 fc ff ff       	callq  400b70 <puts@plt>
  400ec0:	e8 4a 09 00 00       	callq  40180f <read_line>
  400ec5:	48 89 c7             	mov    %rax,%rdi
  400ec8:	e8 e8 00 00 00       	callq  400fb5 <phase_3>
  400ecd:	e8 63 0a 00 00       	callq  401935 <phase_defused>
  400ed2:	bf 5b 26 40 00       	mov    $0x40265b,%edi
  400ed7:	e8 94 fc ff ff       	callq  400b70 <puts@plt>
  400edc:	e8 2e 09 00 00       	callq  40180f <read_line>
  400ee1:	48 89 c7             	mov    %rax,%rdi
  400ee4:	e8 6d 02 00 00       	callq  401156 <phase_4>
  400ee9:	e8 47 0a 00 00       	callq  401935 <phase_defused>
  400eee:	bf 28 27 40 00       	mov    $0x402728,%edi
  400ef3:	e8 78 fc ff ff       	callq  400b70 <puts@plt>
  400ef8:	e8 12 09 00 00       	callq  40180f <read_line>
  400efd:	48 89 c7             	mov    %rax,%rdi
  400f00:	e8 be 02 00 00       	callq  4011c3 <phase_5>
  400f05:	e8 2b 0a 00 00       	callq  401935 <phase_defused>
  400f0a:	bf 6a 26 40 00       	mov    $0x40266a,%edi
  400f0f:	e8 5c fc ff ff       	callq  400b70 <puts@plt>
  400f14:	e8 f6 08 00 00       	callq  40180f <read_line>
  400f19:	48 89 c7             	mov    %rax,%rdi
  400f1c:	e8 1f 03 00 00       	callq  401240 <phase_6>
  400f21:	e8 0f 0a 00 00       	callq  401935 <phase_defused>
  400f26:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2b:	5b                   	pop    %rbx
  400f2c:	c3                   	retq   

0000000000400f2d <phase_1>:
  400f2d:	48 83 ec 08          	sub    $0x8,%rsp
  400f31:	be 4c 27 40 00       	mov    $0x40274c,%esi
  400f36:	e8 36 05 00 00       	callq  401471 <strings_not_equal>
  400f3b:	85 c0                	test   %eax,%eax
  400f3d:	74 05                	je     400f44 <phase_1+0x17>
  400f3f:	e8 56 08 00 00       	callq  40179a <explode_bomb>
  400f44:	48 83 c4 08          	add    $0x8,%rsp
  400f48:	c3                   	retq   

0000000000400f49 <phase_2>:
  400f49:	55                   	push   %rbp
  400f4a:	53                   	push   %rbx
  400f4b:	48 83 ec 28          	sub    $0x28,%rsp
  400f4f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400f56:	00 00 
  400f58:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400f5d:	31 c0                	xor    %eax,%eax
  400f5f:	48 89 e6             	mov    %rsp,%rsi
  400f62:	e8 69 08 00 00       	callq  4017d0 <read_six_numbers>
  400f67:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  400f6b:	75 07                	jne    400f74 <phase_2+0x2b>
  400f6d:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
  400f72:	74 05                	je     400f79 <phase_2+0x30>
  400f74:	e8 21 08 00 00       	callq  40179a <explode_bomb>
  400f79:	48 89 e3             	mov    %rsp,%rbx
  400f7c:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
  400f81:	8b 43 04             	mov    0x4(%rbx),%eax
  400f84:	03 03                	add    (%rbx),%eax
  400f86:	39 43 08             	cmp    %eax,0x8(%rbx)
  400f89:	74 05                	je     400f90 <phase_2+0x47>
  400f8b:	e8 0a 08 00 00       	callq  40179a <explode_bomb>
  400f90:	48 83 c3 04          	add    $0x4,%rbx
  400f94:	48 39 eb             	cmp    %rbp,%rbx
  400f97:	75 e8                	jne    400f81 <phase_2+0x38>
  400f99:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400f9e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400fa5:	00 00 
  400fa7:	74 05                	je     400fae <phase_2+0x65>
  400fa9:	e8 e2 fb ff ff       	callq  400b90 <__stack_chk_fail@plt>
  400fae:	48 83 c4 28          	add    $0x28,%rsp
  400fb2:	5b                   	pop    %rbx
  400fb3:	5d                   	pop    %rbp
  400fb4:	c3                   	retq   

0000000000400fb5 <phase_3>:
  400fb5:	48 83 ec 28          	sub    $0x28,%rsp
  400fb9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400fc0:	00 00 
  400fc2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400fc7:	31 c0                	xor    %eax,%eax
  400fc9:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
  400fce:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
  400fd3:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  400fd8:	be 60 27 40 00       	mov    $0x402760,%esi
  400fdd:	e8 5e fc ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  400fe2:	83 f8 02             	cmp    $0x2,%eax
  400fe5:	7f 05                	jg     400fec <phase_3+0x37>
  400fe7:	e8 ae 07 00 00       	callq  40179a <explode_bomb>
  400fec:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
  400ff1:	0f 87 f5 00 00 00    	ja     4010ec <phase_3+0x137>
  400ff7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  400ffb:	ff 24 c5 70 27 40 00 	jmpq   *0x402770(,%rax,8)
  401002:	b8 67 00 00 00       	mov    $0x67,%eax
  401007:	81 7c 24 14 ad 03 00 	cmpl   $0x3ad,0x14(%rsp)
  40100e:	00 
  40100f:	0f 84 e1 00 00 00    	je     4010f6 <phase_3+0x141>
  401015:	e8 80 07 00 00       	callq  40179a <explode_bomb>
  40101a:	b8 67 00 00 00       	mov    $0x67,%eax
  40101f:	e9 d2 00 00 00       	jmpq   4010f6 <phase_3+0x141>
  401024:	b8 69 00 00 00       	mov    $0x69,%eax
  401029:	81 7c 24 14 aa 02 00 	cmpl   $0x2aa,0x14(%rsp)
  401030:	00 
  401031:	0f 84 bf 00 00 00    	je     4010f6 <phase_3+0x141>
  401037:	e8 5e 07 00 00       	callq  40179a <explode_bomb>
  40103c:	b8 69 00 00 00       	mov    $0x69,%eax
  401041:	e9 b0 00 00 00       	jmpq   4010f6 <phase_3+0x141>
  401046:	b8 61 00 00 00       	mov    $0x61,%eax
  40104b:	81 7c 24 14 e3 00 00 	cmpl   $0xe3,0x14(%rsp)
  401052:	00 
  401053:	0f 84 9d 00 00 00    	je     4010f6 <phase_3+0x141>
  401059:	e8 3c 07 00 00       	callq  40179a <explode_bomb>
  40105e:	b8 61 00 00 00       	mov    $0x61,%eax
  401063:	e9 8e 00 00 00       	jmpq   4010f6 <phase_3+0x141>
  401068:	b8 6c 00 00 00       	mov    $0x6c,%eax
  40106d:	81 7c 24 14 c1 01 00 	cmpl   $0x1c1,0x14(%rsp)
  401074:	00 
  401075:	74 7f                	je     4010f6 <phase_3+0x141>
  401077:	e8 1e 07 00 00       	callq  40179a <explode_bomb>
  40107c:	b8 6c 00 00 00       	mov    $0x6c,%eax
  401081:	eb 73                	jmp    4010f6 <phase_3+0x141>
  401083:	b8 74 00 00 00       	mov    $0x74,%eax
  401088:	81 7c 24 14 42 03 00 	cmpl   $0x342,0x14(%rsp)
  40108f:	00 
  401090:	74 64                	je     4010f6 <phase_3+0x141>
  401092:	e8 03 07 00 00       	callq  40179a <explode_bomb>
  401097:	b8 74 00 00 00       	mov    $0x74,%eax
  40109c:	eb 58                	jmp    4010f6 <phase_3+0x141>
  40109e:	b8 6f 00 00 00       	mov    $0x6f,%eax
  4010a3:	81 7c 24 14 85 02 00 	cmpl   $0x285,0x14(%rsp)
  4010aa:	00 
  4010ab:	74 49                	je     4010f6 <phase_3+0x141>
  4010ad:	e8 e8 06 00 00       	callq  40179a <explode_bomb>
  4010b2:	b8 6f 00 00 00       	mov    $0x6f,%eax
  4010b7:	eb 3d                	jmp    4010f6 <phase_3+0x141>
  4010b9:	b8 63 00 00 00       	mov    $0x63,%eax
  4010be:	83 7c 24 14 42       	cmpl   $0x42,0x14(%rsp)
  4010c3:	74 31                	je     4010f6 <phase_3+0x141>
  4010c5:	e8 d0 06 00 00       	callq  40179a <explode_bomb>
  4010ca:	b8 63 00 00 00       	mov    $0x63,%eax
  4010cf:	eb 25                	jmp    4010f6 <phase_3+0x141>
  4010d1:	b8 75 00 00 00       	mov    $0x75,%eax
  4010d6:	81 7c 24 14 43 01 00 	cmpl   $0x143,0x14(%rsp)
  4010dd:	00 
  4010de:	74 16                	je     4010f6 <phase_3+0x141>
  4010e0:	e8 b5 06 00 00       	callq  40179a <explode_bomb>
  4010e5:	b8 75 00 00 00       	mov    $0x75,%eax
  4010ea:	eb 0a                	jmp    4010f6 <phase_3+0x141>
  4010ec:	e8 a9 06 00 00       	callq  40179a <explode_bomb>
  4010f1:	b8 6d 00 00 00       	mov    $0x6d,%eax
  4010f6:	3a 44 24 0f          	cmp    0xf(%rsp),%al
  4010fa:	74 05                	je     401101 <phase_3+0x14c>
  4010fc:	e8 99 06 00 00       	callq  40179a <explode_bomb>
  401101:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  401106:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40110d:	00 00 
  40110f:	74 05                	je     401116 <phase_3+0x161>
  401111:	e8 7a fa ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401116:	48 83 c4 28          	add    $0x28,%rsp
  40111a:	c3                   	retq   

000000000040111b <func4>:
  40111b:	85 ff                	test   %edi,%edi
  40111d:	7e 2b                	jle    40114a <func4+0x2f>
  40111f:	89 f0                	mov    %esi,%eax
  401121:	83 ff 01             	cmp    $0x1,%edi
  401124:	74 2e                	je     401154 <func4+0x39>
  401126:	41 54                	push   %r12
  401128:	55                   	push   %rbp
  401129:	53                   	push   %rbx
  40112a:	89 f5                	mov    %esi,%ebp
  40112c:	89 fb                	mov    %edi,%ebx
  40112e:	8d 7f ff             	lea    -0x1(%rdi),%edi
  401131:	e8 e5 ff ff ff       	callq  40111b <func4>
  401136:	44 8d 64 05 00       	lea    0x0(%rbp,%rax,1),%r12d
  40113b:	8d 7b fe             	lea    -0x2(%rbx),%edi
  40113e:	89 ee                	mov    %ebp,%esi
  401140:	e8 d6 ff ff ff       	callq  40111b <func4>
  401145:	44 01 e0             	add    %r12d,%eax
  401148:	eb 06                	jmp    401150 <func4+0x35>
  40114a:	b8 00 00 00 00       	mov    $0x0,%eax
  40114f:	c3                   	retq   
  401150:	5b                   	pop    %rbx
  401151:	5d                   	pop    %rbp
  401152:	41 5c                	pop    %r12
  401154:	f3 c3                	repz retq 

0000000000401156 <phase_4>:
  401156:	48 83 ec 18          	sub    $0x18,%rsp
  40115a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401161:	00 00 
  401163:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401168:	31 c0                	xor    %eax,%eax
  40116a:	48 89 e1             	mov    %rsp,%rcx
  40116d:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  401172:	be 4f 2a 40 00       	mov    $0x402a4f,%esi
  401177:	e8 c4 fa ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  40117c:	83 f8 02             	cmp    $0x2,%eax
  40117f:	75 0b                	jne    40118c <phase_4+0x36>
  401181:	8b 04 24             	mov    (%rsp),%eax
  401184:	83 e8 02             	sub    $0x2,%eax
  401187:	83 f8 02             	cmp    $0x2,%eax
  40118a:	76 05                	jbe    401191 <phase_4+0x3b>
  40118c:	e8 09 06 00 00       	callq  40179a <explode_bomb>
  401191:	8b 34 24             	mov    (%rsp),%esi
  401194:	bf 05 00 00 00       	mov    $0x5,%edi
  401199:	e8 7d ff ff ff       	callq  40111b <func4>
  40119e:	3b 44 24 04          	cmp    0x4(%rsp),%eax
  4011a2:	74 05                	je     4011a9 <phase_4+0x53>
  4011a4:	e8 f1 05 00 00       	callq  40179a <explode_bomb>
  4011a9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4011ae:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011b5:	00 00 
  4011b7:	74 05                	je     4011be <phase_4+0x68>
  4011b9:	e8 d2 f9 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4011be:	48 83 c4 18          	add    $0x18,%rsp
  4011c2:	c3                   	retq   

00000000004011c3 <phase_5>:
  4011c3:	53                   	push   %rbx
  4011c4:	48 83 ec 10          	sub    $0x10,%rsp
  4011c8:	48 89 fb             	mov    %rdi,%rbx
  4011cb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4011d2:	00 00 
  4011d4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4011d9:	31 c0                	xor    %eax,%eax
  4011db:	e8 73 02 00 00       	callq  401453 <string_length>
  4011e0:	83 f8 06             	cmp    $0x6,%eax
  4011e3:	74 05                	je     4011ea <phase_5+0x27>
  4011e5:	e8 b0 05 00 00       	callq  40179a <explode_bomb>
  4011ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4011ef:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  4011f3:	83 e2 0f             	and    $0xf,%edx
  4011f6:	0f b6 92 b0 27 40 00 	movzbl 0x4027b0(%rdx),%edx
  4011fd:	88 14 04             	mov    %dl,(%rsp,%rax,1)
  401200:	48 83 c0 01          	add    $0x1,%rax
  401204:	48 83 f8 06          	cmp    $0x6,%rax
  401208:	75 e5                	jne    4011ef <phase_5+0x2c>
  40120a:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
  40120f:	be 69 27 40 00       	mov    $0x402769,%esi
  401214:	48 89 e7             	mov    %rsp,%rdi
  401217:	e8 55 02 00 00       	callq  401471 <strings_not_equal>
  40121c:	85 c0                	test   %eax,%eax
  40121e:	74 05                	je     401225 <phase_5+0x62>
  401220:	e8 75 05 00 00       	callq  40179a <explode_bomb>
  401225:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40122a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401231:	00 00 
  401233:	74 05                	je     40123a <phase_5+0x77>
  401235:	e8 56 f9 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  40123a:	48 83 c4 10          	add    $0x10,%rsp
  40123e:	5b                   	pop    %rbx
  40123f:	c3                   	retq   

0000000000401240 <phase_6>:
  401240:	41 55                	push   %r13
  401242:	41 54                	push   %r12
  401244:	55                   	push   %rbp
  401245:	53                   	push   %rbx
  401246:	48 83 ec 68          	sub    $0x68,%rsp
  40124a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401251:	00 00 
  401253:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401258:	31 c0                	xor    %eax,%eax
  40125a:	48 89 e6             	mov    %rsp,%rsi
  40125d:	e8 6e 05 00 00       	callq  4017d0 <read_six_numbers>
  401262:	49 89 e4             	mov    %rsp,%r12
  401265:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40126b:	4c 89 e5             	mov    %r12,%rbp
  40126e:	41 8b 04 24          	mov    (%r12),%eax
  401272:	83 e8 01             	sub    $0x1,%eax
  401275:	83 f8 05             	cmp    $0x5,%eax
  401278:	76 05                	jbe    40127f <phase_6+0x3f>
  40127a:	e8 1b 05 00 00       	callq  40179a <explode_bomb>
  40127f:	41 83 c5 01          	add    $0x1,%r13d
  401283:	41 83 fd 06          	cmp    $0x6,%r13d
  401287:	74 3d                	je     4012c6 <phase_6+0x86>
  401289:	44 89 eb             	mov    %r13d,%ebx
  40128c:	48 63 c3             	movslq %ebx,%rax
  40128f:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  401292:	39 45 00             	cmp    %eax,0x0(%rbp)
  401295:	75 05                	jne    40129c <phase_6+0x5c>
  401297:	e8 fe 04 00 00       	callq  40179a <explode_bomb>
  40129c:	83 c3 01             	add    $0x1,%ebx
  40129f:	83 fb 05             	cmp    $0x5,%ebx
  4012a2:	7e e8                	jle    40128c <phase_6+0x4c>
  4012a4:	49 83 c4 04          	add    $0x4,%r12
  4012a8:	eb c1                	jmp    40126b <phase_6+0x2b>
  4012aa:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4012ae:	83 c0 01             	add    $0x1,%eax
  4012b1:	39 c8                	cmp    %ecx,%eax
  4012b3:	75 f5                	jne    4012aa <phase_6+0x6a>
  4012b5:	48 89 54 74 20       	mov    %rdx,0x20(%rsp,%rsi,2)
  4012ba:	48 83 c6 04          	add    $0x4,%rsi
  4012be:	48 83 fe 18          	cmp    $0x18,%rsi
  4012c2:	75 07                	jne    4012cb <phase_6+0x8b>
  4012c4:	eb 19                	jmp    4012df <phase_6+0x9f>
  4012c6:	be 00 00 00 00       	mov    $0x0,%esi
  4012cb:	8b 0c 34             	mov    (%rsp,%rsi,1),%ecx
  4012ce:	b8 01 00 00 00       	mov    $0x1,%eax
  4012d3:	ba f0 42 60 00       	mov    $0x6042f0,%edx
  4012d8:	83 f9 01             	cmp    $0x1,%ecx
  4012db:	7f cd                	jg     4012aa <phase_6+0x6a>
  4012dd:	eb d6                	jmp    4012b5 <phase_6+0x75>
  4012df:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  4012e4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4012e9:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
  4012ee:	48 89 d9             	mov    %rbx,%rcx
  4012f1:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4012f5:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  4012f9:	48 83 c0 08          	add    $0x8,%rax
  4012fd:	48 89 d1             	mov    %rdx,%rcx
  401300:	48 39 f0             	cmp    %rsi,%rax
  401303:	75 ec                	jne    4012f1 <phase_6+0xb1>
  401305:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  40130c:	00 
  40130d:	bd 05 00 00 00       	mov    $0x5,%ebp
  401312:	48 8b 43 08          	mov    0x8(%rbx),%rax
  401316:	8b 00                	mov    (%rax),%eax
  401318:	39 03                	cmp    %eax,(%rbx)
  40131a:	7d 05                	jge    401321 <phase_6+0xe1>
  40131c:	e8 79 04 00 00       	callq  40179a <explode_bomb>
  401321:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  401325:	83 ed 01             	sub    $0x1,%ebp
  401328:	75 e8                	jne    401312 <phase_6+0xd2>
  40132a:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40132f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401336:	00 00 
  401338:	74 05                	je     40133f <phase_6+0xff>
  40133a:	e8 51 f8 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  40133f:	48 83 c4 68          	add    $0x68,%rsp
  401343:	5b                   	pop    %rbx
  401344:	5d                   	pop    %rbp
  401345:	41 5c                	pop    %r12
  401347:	41 5d                	pop    %r13
  401349:	c3                   	retq   

000000000040134a <fun7>:
  40134a:	48 83 ec 08          	sub    $0x8,%rsp
  40134e:	48 85 ff             	test   %rdi,%rdi
  401351:	74 2b                	je     40137e <fun7+0x34>
  401353:	8b 17                	mov    (%rdi),%edx
  401355:	39 f2                	cmp    %esi,%edx
  401357:	7e 0d                	jle    401366 <fun7+0x1c>
  401359:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40135d:	e8 e8 ff ff ff       	callq  40134a <fun7>
  401362:	01 c0                	add    %eax,%eax
  401364:	eb 1d                	jmp    401383 <fun7+0x39>
  401366:	b8 00 00 00 00       	mov    $0x0,%eax
  40136b:	39 f2                	cmp    %esi,%edx
  40136d:	74 14                	je     401383 <fun7+0x39>
  40136f:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  401373:	e8 d2 ff ff ff       	callq  40134a <fun7>
  401378:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  40137c:	eb 05                	jmp    401383 <fun7+0x39>
  40137e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401383:	48 83 c4 08          	add    $0x8,%rsp
  401387:	c3                   	retq   

0000000000401388 <secret_phase>:
  401388:	53                   	push   %rbx
  401389:	e8 81 04 00 00       	callq  40180f <read_line>
  40138e:	ba 0a 00 00 00       	mov    $0xa,%edx
  401393:	be 00 00 00 00       	mov    $0x0,%esi
  401398:	48 89 c7             	mov    %rax,%rdi
  40139b:	e8 80 f8 ff ff       	callq  400c20 <strtol@plt>
  4013a0:	48 89 c3             	mov    %rax,%rbx
  4013a3:	8d 40 ff             	lea    -0x1(%rax),%eax
  4013a6:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4013ab:	76 05                	jbe    4013b2 <secret_phase+0x2a>
  4013ad:	e8 e8 03 00 00       	callq  40179a <explode_bomb>
  4013b2:	89 de                	mov    %ebx,%esi
  4013b4:	bf 10 41 60 00       	mov    $0x604110,%edi
  4013b9:	e8 8c ff ff ff       	callq  40134a <fun7>
  4013be:	85 c0                	test   %eax,%eax
  4013c0:	74 05                	je     4013c7 <secret_phase+0x3f>
  4013c2:	e8 d3 03 00 00       	callq  40179a <explode_bomb>
  4013c7:	bf c0 27 40 00       	mov    $0x4027c0,%edi
  4013cc:	e8 9f f7 ff ff       	callq  400b70 <puts@plt>
  4013d1:	e8 5f 05 00 00       	callq  401935 <phase_defused>
  4013d6:	5b                   	pop    %rbx
  4013d7:	c3                   	retq   

00000000004013d8 <sig_handler>:
  4013d8:	48 83 ec 08          	sub    $0x8,%rsp
  4013dc:	bf e8 27 40 00       	mov    $0x4027e8,%edi
  4013e1:	e8 8a f7 ff ff       	callq  400b70 <puts@plt>
  4013e6:	bf 03 00 00 00       	mov    $0x3,%edi
  4013eb:	e8 c0 f8 ff ff       	callq  400cb0 <sleep@plt>
  4013f0:	be a9 29 40 00       	mov    $0x4029a9,%esi
  4013f5:	bf 01 00 00 00       	mov    $0x1,%edi
  4013fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4013ff:	e8 4c f8 ff ff       	callq  400c50 <__printf_chk@plt>
  401404:	48 8b 3d 75 37 20 00 	mov    0x203775(%rip),%rdi        # 604b80 <stdout@@GLIBC_2.2.5>
  40140b:	e8 20 f8 ff ff       	callq  400c30 <fflush@plt>
  401410:	bf 01 00 00 00       	mov    $0x1,%edi
  401415:	e8 96 f8 ff ff       	callq  400cb0 <sleep@plt>
  40141a:	bf b1 29 40 00       	mov    $0x4029b1,%edi
  40141f:	e8 4c f7 ff ff       	callq  400b70 <puts@plt>
  401424:	bf 10 00 00 00       	mov    $0x10,%edi
  401429:	e8 52 f8 ff ff       	callq  400c80 <exit@plt>

000000000040142e <invalid_phase>:
  40142e:	48 83 ec 08          	sub    $0x8,%rsp
  401432:	48 89 fa             	mov    %rdi,%rdx
  401435:	be b9 29 40 00       	mov    $0x4029b9,%esi
  40143a:	bf 01 00 00 00       	mov    $0x1,%edi
  40143f:	b8 00 00 00 00       	mov    $0x0,%eax
  401444:	e8 07 f8 ff ff       	callq  400c50 <__printf_chk@plt>
  401449:	bf 08 00 00 00       	mov    $0x8,%edi
  40144e:	e8 2d f8 ff ff       	callq  400c80 <exit@plt>

0000000000401453 <string_length>:
  401453:	80 3f 00             	cmpb   $0x0,(%rdi)
  401456:	74 13                	je     40146b <string_length+0x18>
  401458:	b8 00 00 00 00       	mov    $0x0,%eax
  40145d:	48 83 c7 01          	add    $0x1,%rdi
  401461:	83 c0 01             	add    $0x1,%eax
  401464:	80 3f 00             	cmpb   $0x0,(%rdi)
  401467:	75 f4                	jne    40145d <string_length+0xa>
  401469:	f3 c3                	repz retq 
  40146b:	b8 00 00 00 00       	mov    $0x0,%eax
  401470:	c3                   	retq   

0000000000401471 <strings_not_equal>:
  401471:	41 54                	push   %r12
  401473:	55                   	push   %rbp
  401474:	53                   	push   %rbx
  401475:	48 89 fb             	mov    %rdi,%rbx
  401478:	48 89 f5             	mov    %rsi,%rbp
  40147b:	e8 d3 ff ff ff       	callq  401453 <string_length>
  401480:	41 89 c4             	mov    %eax,%r12d
  401483:	48 89 ef             	mov    %rbp,%rdi
  401486:	e8 c8 ff ff ff       	callq  401453 <string_length>
  40148b:	ba 01 00 00 00       	mov    $0x1,%edx
  401490:	41 39 c4             	cmp    %eax,%r12d
  401493:	75 3c                	jne    4014d1 <strings_not_equal+0x60>
  401495:	0f b6 03             	movzbl (%rbx),%eax
  401498:	84 c0                	test   %al,%al
  40149a:	74 22                	je     4014be <strings_not_equal+0x4d>
  40149c:	3a 45 00             	cmp    0x0(%rbp),%al
  40149f:	74 07                	je     4014a8 <strings_not_equal+0x37>
  4014a1:	eb 22                	jmp    4014c5 <strings_not_equal+0x54>
  4014a3:	3a 45 00             	cmp    0x0(%rbp),%al
  4014a6:	75 24                	jne    4014cc <strings_not_equal+0x5b>
  4014a8:	48 83 c3 01          	add    $0x1,%rbx
  4014ac:	48 83 c5 01          	add    $0x1,%rbp
  4014b0:	0f b6 03             	movzbl (%rbx),%eax
  4014b3:	84 c0                	test   %al,%al
  4014b5:	75 ec                	jne    4014a3 <strings_not_equal+0x32>
  4014b7:	ba 00 00 00 00       	mov    $0x0,%edx
  4014bc:	eb 13                	jmp    4014d1 <strings_not_equal+0x60>
  4014be:	ba 00 00 00 00       	mov    $0x0,%edx
  4014c3:	eb 0c                	jmp    4014d1 <strings_not_equal+0x60>
  4014c5:	ba 01 00 00 00       	mov    $0x1,%edx
  4014ca:	eb 05                	jmp    4014d1 <strings_not_equal+0x60>
  4014cc:	ba 01 00 00 00       	mov    $0x1,%edx
  4014d1:	89 d0                	mov    %edx,%eax
  4014d3:	5b                   	pop    %rbx
  4014d4:	5d                   	pop    %rbp
  4014d5:	41 5c                	pop    %r12
  4014d7:	c3                   	retq   

00000000004014d8 <initialize_bomb>:
  4014d8:	53                   	push   %rbx
  4014d9:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  4014e0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014e7:	00 00 
  4014e9:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  4014f0:	00 
  4014f1:	31 c0                	xor    %eax,%eax
  4014f3:	be d8 13 40 00       	mov    $0x4013d8,%esi
  4014f8:	bf 02 00 00 00       	mov    $0x2,%edi
  4014fd:	e8 ee f6 ff ff       	callq  400bf0 <signal@plt>
  401502:	be 40 00 00 00       	mov    $0x40,%esi
  401507:	48 89 e7             	mov    %rsp,%rdi
  40150a:	e8 61 f7 ff ff       	callq  400c70 <gethostname@plt>
  40150f:	85 c0                	test   %eax,%eax
  401511:	75 16                	jne    401529 <initialize_bomb+0x51>
  401513:	48 8b 3d 66 2e 20 00 	mov    0x202e66(%rip),%rdi        # 604380 <host_table>
  40151a:	bb 88 43 60 00       	mov    $0x604388,%ebx
  40151f:	48 85 ff             	test   %rdi,%rdi
  401522:	75 19                	jne    40153d <initialize_bomb+0x65>
  401524:	e9 81 00 00 00       	jmpq   4015aa <initialize_bomb+0xd2>
  401529:	bf 20 28 40 00       	mov    $0x402820,%edi
  40152e:	e8 3d f6 ff ff       	callq  400b70 <puts@plt>
  401533:	bf 08 00 00 00       	mov    $0x8,%edi
  401538:	e8 43 f7 ff ff       	callq  400c80 <exit@plt>
  40153d:	48 89 e6             	mov    %rsp,%rsi
  401540:	e8 fb f5 ff ff       	callq  400b40 <strcasecmp@plt>
  401545:	85 c0                	test   %eax,%eax
  401547:	0f 84 94 00 00 00    	je     4015e1 <initialize_bomb+0x109>
  40154d:	48 83 c3 08          	add    $0x8,%rbx
  401551:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  401555:	48 85 ff             	test   %rdi,%rdi
  401558:	75 e3                	jne    40153d <initialize_bomb+0x65>
  40155a:	eb 4e                	jmp    4015aa <initialize_bomb+0xd2>
  40155c:	be ca 29 40 00       	mov    $0x4029ca,%esi
  401561:	bf 01 00 00 00       	mov    $0x1,%edi
  401566:	b8 00 00 00 00       	mov    $0x0,%eax
  40156b:	e8 e0 f6 ff ff       	callq  400c50 <__printf_chk@plt>
  401570:	48 83 c3 08          	add    $0x8,%rbx
  401574:	48 8b 53 f8          	mov    -0x8(%rbx),%rdx
  401578:	48 85 d2             	test   %rdx,%rdx
  40157b:	75 df                	jne    40155c <initialize_bomb+0x84>
  40157d:	bf 08 00 00 00       	mov    $0x8,%edi
  401582:	e8 f9 f6 ff ff       	callq  400c80 <exit@plt>
  401587:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  40158c:	be d0 29 40 00       	mov    $0x4029d0,%esi
  401591:	bf 01 00 00 00       	mov    $0x1,%edi
  401596:	b8 00 00 00 00       	mov    $0x0,%eax
  40159b:	e8 b0 f6 ff ff       	callq  400c50 <__printf_chk@plt>
  4015a0:	bf 08 00 00 00       	mov    $0x8,%edi
  4015a5:	e8 d6 f6 ff ff       	callq  400c80 <exit@plt>
  4015aa:	48 89 e2             	mov    %rsp,%rdx
  4015ad:	be 58 28 40 00       	mov    $0x402858,%esi
  4015b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4015b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4015bc:	e8 8f f6 ff ff       	callq  400c50 <__printf_chk@plt>
  4015c1:	bf ea 29 40 00       	mov    $0x4029ea,%edi
  4015c6:	e8 a5 f5 ff ff       	callq  400b70 <puts@plt>
  4015cb:	48 8b 15 ae 2d 20 00 	mov    0x202dae(%rip),%rdx        # 604380 <host_table>
  4015d2:	48 85 d2             	test   %rdx,%rdx
  4015d5:	74 a6                	je     40157d <initialize_bomb+0xa5>
  4015d7:	bb 88 43 60 00       	mov    $0x604388,%ebx
  4015dc:	e9 7b ff ff ff       	jmpq   40155c <initialize_bomb+0x84>
  4015e1:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4015e6:	e8 49 0d 00 00       	callq  402334 <init_driver>
  4015eb:	85 c0                	test   %eax,%eax
  4015ed:	78 98                	js     401587 <initialize_bomb+0xaf>
  4015ef:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  4015f6:	00 
  4015f7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4015fe:	00 00 
  401600:	74 05                	je     401607 <initialize_bomb+0x12f>
  401602:	e8 89 f5 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401607:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  40160e:	5b                   	pop    %rbx
  40160f:	c3                   	retq   

0000000000401610 <initialize_bomb_solve>:
  401610:	f3 c3                	repz retq 

0000000000401612 <blank_line>:
  401612:	55                   	push   %rbp
  401613:	53                   	push   %rbx
  401614:	48 83 ec 08          	sub    $0x8,%rsp
  401618:	48 89 fd             	mov    %rdi,%rbp
  40161b:	eb 17                	jmp    401634 <blank_line+0x22>
  40161d:	e8 9e f6 ff ff       	callq  400cc0 <__ctype_b_loc@plt>
  401622:	48 83 c5 01          	add    $0x1,%rbp
  401626:	48 0f be db          	movsbq %bl,%rbx
  40162a:	48 8b 00             	mov    (%rax),%rax
  40162d:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401632:	74 0f                	je     401643 <blank_line+0x31>
  401634:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401638:	84 db                	test   %bl,%bl
  40163a:	75 e1                	jne    40161d <blank_line+0xb>
  40163c:	b8 01 00 00 00       	mov    $0x1,%eax
  401641:	eb 05                	jmp    401648 <blank_line+0x36>
  401643:	b8 00 00 00 00       	mov    $0x0,%eax
  401648:	48 83 c4 08          	add    $0x8,%rsp
  40164c:	5b                   	pop    %rbx
  40164d:	5d                   	pop    %rbp
  40164e:	c3                   	retq   

000000000040164f <skip>:
  40164f:	53                   	push   %rbx
  401650:	48 63 05 55 35 20 00 	movslq 0x203555(%rip),%rax        # 604bac <num_input_strings>
  401657:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  40165b:	48 c1 e7 04          	shl    $0x4,%rdi
  40165f:	48 81 c7 c0 4b 60 00 	add    $0x604bc0,%rdi
  401666:	48 8b 15 43 35 20 00 	mov    0x203543(%rip),%rdx        # 604bb0 <infile>
  40166d:	be 50 00 00 00       	mov    $0x50,%esi
  401672:	e8 69 f5 ff ff       	callq  400be0 <fgets@plt>
  401677:	48 89 c3             	mov    %rax,%rbx
  40167a:	48 85 c0             	test   %rax,%rax
  40167d:	74 0c                	je     40168b <skip+0x3c>
  40167f:	48 89 c7             	mov    %rax,%rdi
  401682:	e8 8b ff ff ff       	callq  401612 <blank_line>
  401687:	85 c0                	test   %eax,%eax
  401689:	75 c5                	jne    401650 <skip+0x1>
  40168b:	48 89 d8             	mov    %rbx,%rax
  40168e:	5b                   	pop    %rbx
  40168f:	c3                   	retq   

0000000000401690 <send_msg>:
  401690:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401697:	41 89 f8             	mov    %edi,%r8d
  40169a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4016a1:	00 00 
  4016a3:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4016aa:	00 
  4016ab:	31 c0                	xor    %eax,%eax
  4016ad:	8b 35 f9 34 20 00    	mov    0x2034f9(%rip),%esi        # 604bac <num_input_strings>
  4016b3:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4016b6:	48 98                	cltq   
  4016b8:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  4016bc:	48 c1 e2 04          	shl    $0x4,%rdx
  4016c0:	48 81 c2 c0 4b 60 00 	add    $0x604bc0,%rdx
  4016c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4016cc:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4016d3:	48 89 d7             	mov    %rdx,%rdi
  4016d6:	f2 ae                	repnz scas %es:(%rdi),%al
  4016d8:	48 f7 d1             	not    %rcx
  4016db:	48 83 c1 63          	add    $0x63,%rcx
  4016df:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  4016e6:	76 19                	jbe    401701 <send_msg+0x71>
  4016e8:	be 88 28 40 00       	mov    $0x402888,%esi
  4016ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4016f2:	e8 59 f5 ff ff       	callq  400c50 <__printf_chk@plt>
  4016f7:	bf 08 00 00 00       	mov    $0x8,%edi
  4016fc:	e8 7f f5 ff ff       	callq  400c80 <exit@plt>
  401701:	45 85 c0             	test   %r8d,%r8d
  401704:	41 b9 0e 2a 40 00    	mov    $0x402a0e,%r9d
  40170a:	b8 06 2a 40 00       	mov    $0x402a06,%eax
  40170f:	4c 0f 45 c8          	cmovne %rax,%r9
  401713:	52                   	push   %rdx
  401714:	56                   	push   %rsi
  401715:	44 8b 05 58 2c 20 00 	mov    0x202c58(%rip),%r8d        # 604374 <bomb_id>
  40171c:	b9 17 2a 40 00       	mov    $0x402a17,%ecx
  401721:	ba 00 20 00 00       	mov    $0x2000,%edx
  401726:	be 01 00 00 00       	mov    $0x1,%esi
  40172b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401730:	b8 00 00 00 00       	mov    $0x0,%eax
  401735:	e8 96 f5 ff ff       	callq  400cd0 <__sprintf_chk@plt>
  40173a:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
  401741:	00 
  401742:	b9 00 00 00 00       	mov    $0x0,%ecx
  401747:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  40174c:	be 50 43 60 00       	mov    $0x604350,%esi
  401751:	bf 68 43 60 00       	mov    $0x604368,%edi
  401756:	e8 ae 0d 00 00       	callq  402509 <driver_post>
  40175b:	48 83 c4 10          	add    $0x10,%rsp
  40175f:	85 c0                	test   %eax,%eax
  401761:	79 17                	jns    40177a <send_msg+0xea>
  401763:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  40176a:	00 
  40176b:	e8 00 f4 ff ff       	callq  400b70 <puts@plt>
  401770:	bf 00 00 00 00       	mov    $0x0,%edi
  401775:	e8 06 f5 ff ff       	callq  400c80 <exit@plt>
  40177a:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401781:	00 
  401782:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401789:	00 00 
  40178b:	74 05                	je     401792 <send_msg+0x102>
  40178d:	e8 fe f3 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401792:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401799:	c3                   	retq   

000000000040179a <explode_bomb>:
  40179a:	48 83 ec 08          	sub    $0x8,%rsp
  40179e:	bf 23 2a 40 00       	mov    $0x402a23,%edi
  4017a3:	e8 c8 f3 ff ff       	callq  400b70 <puts@plt>
  4017a8:	bf 2c 2a 40 00       	mov    $0x402a2c,%edi
  4017ad:	e8 be f3 ff ff       	callq  400b70 <puts@plt>
  4017b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4017b7:	e8 d4 fe ff ff       	callq  401690 <send_msg>
  4017bc:	bf b0 28 40 00       	mov    $0x4028b0,%edi
  4017c1:	e8 aa f3 ff ff       	callq  400b70 <puts@plt>
  4017c6:	bf 08 00 00 00       	mov    $0x8,%edi
  4017cb:	e8 b0 f4 ff ff       	callq  400c80 <exit@plt>

00000000004017d0 <read_six_numbers>:
  4017d0:	48 83 ec 08          	sub    $0x8,%rsp
  4017d4:	48 89 f2             	mov    %rsi,%rdx
  4017d7:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  4017db:	48 8d 46 14          	lea    0x14(%rsi),%rax
  4017df:	50                   	push   %rax
  4017e0:	48 8d 46 10          	lea    0x10(%rsi),%rax
  4017e4:	50                   	push   %rax
  4017e5:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  4017e9:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  4017ed:	be 43 2a 40 00       	mov    $0x402a43,%esi
  4017f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4017f7:	e8 44 f4 ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  4017fc:	48 83 c4 10          	add    $0x10,%rsp
  401800:	83 f8 05             	cmp    $0x5,%eax
  401803:	7f 05                	jg     40180a <read_six_numbers+0x3a>
  401805:	e8 90 ff ff ff       	callq  40179a <explode_bomb>
  40180a:	48 83 c4 08          	add    $0x8,%rsp
  40180e:	c3                   	retq   

000000000040180f <read_line>:
  40180f:	48 83 ec 08          	sub    $0x8,%rsp
  401813:	b8 00 00 00 00       	mov    $0x0,%eax
  401818:	e8 32 fe ff ff       	callq  40164f <skip>
  40181d:	48 85 c0             	test   %rax,%rax
  401820:	75 6e                	jne    401890 <read_line+0x81>
  401822:	48 8b 05 67 33 20 00 	mov    0x203367(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  401829:	48 39 05 80 33 20 00 	cmp    %rax,0x203380(%rip)        # 604bb0 <infile>
  401830:	75 14                	jne    401846 <read_line+0x37>
  401832:	bf 55 2a 40 00       	mov    $0x402a55,%edi
  401837:	e8 34 f3 ff ff       	callq  400b70 <puts@plt>
  40183c:	bf 08 00 00 00       	mov    $0x8,%edi
  401841:	e8 3a f4 ff ff       	callq  400c80 <exit@plt>
  401846:	bf 73 2a 40 00       	mov    $0x402a73,%edi
  40184b:	e8 e0 f2 ff ff       	callq  400b30 <getenv@plt>
  401850:	48 85 c0             	test   %rax,%rax
  401853:	74 0a                	je     40185f <read_line+0x50>
  401855:	bf 00 00 00 00       	mov    $0x0,%edi
  40185a:	e8 21 f4 ff ff       	callq  400c80 <exit@plt>
  40185f:	48 8b 05 2a 33 20 00 	mov    0x20332a(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  401866:	48 89 05 43 33 20 00 	mov    %rax,0x203343(%rip)        # 604bb0 <infile>
  40186d:	b8 00 00 00 00       	mov    $0x0,%eax
  401872:	e8 d8 fd ff ff       	callq  40164f <skip>
  401877:	48 85 c0             	test   %rax,%rax
  40187a:	75 14                	jne    401890 <read_line+0x81>
  40187c:	bf 55 2a 40 00       	mov    $0x402a55,%edi
  401881:	e8 ea f2 ff ff       	callq  400b70 <puts@plt>
  401886:	bf 00 00 00 00       	mov    $0x0,%edi
  40188b:	e8 f0 f3 ff ff       	callq  400c80 <exit@plt>
  401890:	8b 35 16 33 20 00    	mov    0x203316(%rip),%esi        # 604bac <num_input_strings>
  401896:	48 63 c6             	movslq %esi,%rax
  401899:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40189d:	48 c1 e2 04          	shl    $0x4,%rdx
  4018a1:	48 81 c2 c0 4b 60 00 	add    $0x604bc0,%rdx
  4018a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ad:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4018b4:	48 89 d7             	mov    %rdx,%rdi
  4018b7:	f2 ae                	repnz scas %es:(%rdi),%al
  4018b9:	48 f7 d1             	not    %rcx
  4018bc:	48 83 e9 01          	sub    $0x1,%rcx
  4018c0:	83 f9 4e             	cmp    $0x4e,%ecx
  4018c3:	7e 46                	jle    40190b <read_line+0xfc>
  4018c5:	bf 7e 2a 40 00       	mov    $0x402a7e,%edi
  4018ca:	e8 a1 f2 ff ff       	callq  400b70 <puts@plt>
  4018cf:	8b 05 d7 32 20 00    	mov    0x2032d7(%rip),%eax        # 604bac <num_input_strings>
  4018d5:	8d 50 01             	lea    0x1(%rax),%edx
  4018d8:	89 15 ce 32 20 00    	mov    %edx,0x2032ce(%rip)        # 604bac <num_input_strings>
  4018de:	48 98                	cltq   
  4018e0:	48 6b c0 50          	imul   $0x50,%rax,%rax
  4018e4:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  4018eb:	75 6e 63 
  4018ee:	48 89 b8 c0 4b 60 00 	mov    %rdi,0x604bc0(%rax)
  4018f5:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  4018fc:	2a 2a 00 
  4018ff:	48 89 b8 c8 4b 60 00 	mov    %rdi,0x604bc8(%rax)
  401906:	e8 8f fe ff ff       	callq  40179a <explode_bomb>
  40190b:	83 e9 01             	sub    $0x1,%ecx
  40190e:	48 63 c9             	movslq %ecx,%rcx
  401911:	48 63 c6             	movslq %esi,%rax
  401914:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401918:	48 c1 e0 04          	shl    $0x4,%rax
  40191c:	c6 84 01 c0 4b 60 00 	movb   $0x0,0x604bc0(%rcx,%rax,1)
  401923:	00 
  401924:	8d 46 01             	lea    0x1(%rsi),%eax
  401927:	89 05 7f 32 20 00    	mov    %eax,0x20327f(%rip)        # 604bac <num_input_strings>
  40192d:	48 89 d0             	mov    %rdx,%rax
  401930:	48 83 c4 08          	add    $0x8,%rsp
  401934:	c3                   	retq   

0000000000401935 <phase_defused>:
  401935:	48 83 ec 78          	sub    $0x78,%rsp
  401939:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401940:	00 00 
  401942:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  401947:	31 c0                	xor    %eax,%eax
  401949:	bf 01 00 00 00       	mov    $0x1,%edi
  40194e:	e8 3d fd ff ff       	callq  401690 <send_msg>
  401953:	83 3d 52 32 20 00 06 	cmpl   $0x6,0x203252(%rip)        # 604bac <num_input_strings>
  40195a:	75 6d                	jne    4019c9 <phase_defused+0x94>
  40195c:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401961:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  401966:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  40196b:	be 99 2a 40 00       	mov    $0x402a99,%esi
  401970:	bf b0 4c 60 00       	mov    $0x604cb0,%edi
  401975:	b8 00 00 00 00       	mov    $0x0,%eax
  40197a:	e8 c1 f2 ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  40197f:	83 f8 03             	cmp    $0x3,%eax
  401982:	75 31                	jne    4019b5 <phase_defused+0x80>
  401984:	be a2 2a 40 00       	mov    $0x402aa2,%esi
  401989:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40198e:	e8 de fa ff ff       	callq  401471 <strings_not_equal>
  401993:	85 c0                	test   %eax,%eax
  401995:	75 1e                	jne    4019b5 <phase_defused+0x80>
  401997:	bf d8 28 40 00       	mov    $0x4028d8,%edi
  40199c:	e8 cf f1 ff ff       	callq  400b70 <puts@plt>
  4019a1:	bf 00 29 40 00       	mov    $0x402900,%edi
  4019a6:	e8 c5 f1 ff ff       	callq  400b70 <puts@plt>
  4019ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4019b0:	e8 d3 f9 ff ff       	callq  401388 <secret_phase>
  4019b5:	bf 38 29 40 00       	mov    $0x402938,%edi
  4019ba:	e8 b1 f1 ff ff       	callq  400b70 <puts@plt>
  4019bf:	bf 68 29 40 00       	mov    $0x402968,%edi
  4019c4:	e8 a7 f1 ff ff       	callq  400b70 <puts@plt>
  4019c9:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  4019ce:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4019d5:	00 00 
  4019d7:	74 05                	je     4019de <phase_defused+0xa9>
  4019d9:	e8 b2 f1 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4019de:	48 83 c4 78          	add    $0x78,%rsp
  4019e2:	c3                   	retq   

00000000004019e3 <sigalrm_handler>:
  4019e3:	48 83 ec 08          	sub    $0x8,%rsp
  4019e7:	b9 00 00 00 00       	mov    $0x0,%ecx
  4019ec:	ba 30 33 40 00       	mov    $0x403330,%edx
  4019f1:	be 01 00 00 00       	mov    $0x1,%esi
  4019f6:	48 8b 3d a3 31 20 00 	mov    0x2031a3(%rip),%rdi        # 604ba0 <stderr@@GLIBC_2.2.5>
  4019fd:	b8 00 00 00 00       	mov    $0x0,%eax
  401a02:	e8 99 f2 ff ff       	callq  400ca0 <__fprintf_chk@plt>
  401a07:	bf 01 00 00 00       	mov    $0x1,%edi
  401a0c:	e8 6f f2 ff ff       	callq  400c80 <exit@plt>

0000000000401a11 <rio_readlineb>:
  401a11:	41 56                	push   %r14
  401a13:	41 55                	push   %r13
  401a15:	41 54                	push   %r12
  401a17:	55                   	push   %rbp
  401a18:	53                   	push   %rbx
  401a19:	48 83 ec 10          	sub    $0x10,%rsp
  401a1d:	48 89 fb             	mov    %rdi,%rbx
  401a20:	49 89 f5             	mov    %rsi,%r13
  401a23:	49 89 d6             	mov    %rdx,%r14
  401a26:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a2d:	00 00 
  401a2f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401a34:	31 c0                	xor    %eax,%eax
  401a36:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401a3c:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
  401a40:	48 83 fa 01          	cmp    $0x1,%rdx
  401a44:	77 2c                	ja     401a72 <rio_readlineb+0x61>
  401a46:	eb 6d                	jmp    401ab5 <rio_readlineb+0xa4>
  401a48:	ba 00 20 00 00       	mov    $0x2000,%edx
  401a4d:	48 89 ee             	mov    %rbp,%rsi
  401a50:	8b 3b                	mov    (%rbx),%edi
  401a52:	e8 69 f1 ff ff       	callq  400bc0 <read@plt>
  401a57:	89 43 04             	mov    %eax,0x4(%rbx)
  401a5a:	85 c0                	test   %eax,%eax
  401a5c:	79 0c                	jns    401a6a <rio_readlineb+0x59>
  401a5e:	e8 ed f0 ff ff       	callq  400b50 <__errno_location@plt>
  401a63:	83 38 04             	cmpl   $0x4,(%rax)
  401a66:	74 0a                	je     401a72 <rio_readlineb+0x61>
  401a68:	eb 6c                	jmp    401ad6 <rio_readlineb+0xc5>
  401a6a:	85 c0                	test   %eax,%eax
  401a6c:	74 71                	je     401adf <rio_readlineb+0xce>
  401a6e:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401a72:	8b 43 04             	mov    0x4(%rbx),%eax
  401a75:	85 c0                	test   %eax,%eax
  401a77:	7e cf                	jle    401a48 <rio_readlineb+0x37>
  401a79:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  401a7d:	0f b6 0a             	movzbl (%rdx),%ecx
  401a80:	88 4c 24 07          	mov    %cl,0x7(%rsp)
  401a84:	48 83 c2 01          	add    $0x1,%rdx
  401a88:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  401a8c:	83 e8 01             	sub    $0x1,%eax
  401a8f:	89 43 04             	mov    %eax,0x4(%rbx)
  401a92:	49 83 c5 01          	add    $0x1,%r13
  401a96:	41 88 4d ff          	mov    %cl,-0x1(%r13)
  401a9a:	80 f9 0a             	cmp    $0xa,%cl
  401a9d:	75 0a                	jne    401aa9 <rio_readlineb+0x98>
  401a9f:	eb 14                	jmp    401ab5 <rio_readlineb+0xa4>
  401aa1:	41 83 fc 01          	cmp    $0x1,%r12d
  401aa5:	75 0e                	jne    401ab5 <rio_readlineb+0xa4>
  401aa7:	eb 16                	jmp    401abf <rio_readlineb+0xae>
  401aa9:	41 83 c4 01          	add    $0x1,%r12d
  401aad:	49 63 c4             	movslq %r12d,%rax
  401ab0:	4c 39 f0             	cmp    %r14,%rax
  401ab3:	72 bd                	jb     401a72 <rio_readlineb+0x61>
  401ab5:	41 c6 45 00 00       	movb   $0x0,0x0(%r13)
  401aba:	49 63 c4             	movslq %r12d,%rax
  401abd:	eb 05                	jmp    401ac4 <rio_readlineb+0xb3>
  401abf:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac4:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  401ac9:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  401ad0:	00 00 
  401ad2:	74 22                	je     401af6 <rio_readlineb+0xe5>
  401ad4:	eb 1b                	jmp    401af1 <rio_readlineb+0xe0>
  401ad6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401add:	eb 05                	jmp    401ae4 <rio_readlineb+0xd3>
  401adf:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae4:	85 c0                	test   %eax,%eax
  401ae6:	74 b9                	je     401aa1 <rio_readlineb+0x90>
  401ae8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401aef:	eb d3                	jmp    401ac4 <rio_readlineb+0xb3>
  401af1:	e8 9a f0 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401af6:	48 83 c4 10          	add    $0x10,%rsp
  401afa:	5b                   	pop    %rbx
  401afb:	5d                   	pop    %rbp
  401afc:	41 5c                	pop    %r12
  401afe:	41 5d                	pop    %r13
  401b00:	41 5e                	pop    %r14
  401b02:	c3                   	retq   

0000000000401b03 <submitr>:
  401b03:	41 57                	push   %r15
  401b05:	41 56                	push   %r14
  401b07:	41 55                	push   %r13
  401b09:	41 54                	push   %r12
  401b0b:	55                   	push   %rbp
  401b0c:	53                   	push   %rbx
  401b0d:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  401b14:	49 89 fd             	mov    %rdi,%r13
  401b17:	89 f5                	mov    %esi,%ebp
  401b19:	48 89 14 24          	mov    %rdx,(%rsp)
  401b1d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  401b22:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  401b27:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  401b2c:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  401b33:	00 
  401b34:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
  401b3b:	00 
  401b3c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b43:	00 00 
  401b45:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  401b4c:	00 
  401b4d:	31 c0                	xor    %eax,%eax
  401b4f:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  401b56:	00 
  401b57:	ba 00 00 00 00       	mov    $0x0,%edx
  401b5c:	be 01 00 00 00       	mov    $0x1,%esi
  401b61:	bf 02 00 00 00       	mov    $0x2,%edi
  401b66:	e8 75 f1 ff ff       	callq  400ce0 <socket@plt>
  401b6b:	85 c0                	test   %eax,%eax
  401b6d:	79 50                	jns    401bbf <submitr+0xbc>
  401b6f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401b76:	3a 20 43 
  401b79:	49 89 07             	mov    %rax,(%r15)
  401b7c:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401b83:	20 75 6e 
  401b86:	49 89 47 08          	mov    %rax,0x8(%r15)
  401b8a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401b91:	74 6f 20 
  401b94:	49 89 47 10          	mov    %rax,0x10(%r15)
  401b98:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401b9f:	65 20 73 
  401ba2:	49 89 47 18          	mov    %rax,0x18(%r15)
  401ba6:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  401bad:	65 
  401bae:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  401bb5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401bba:	e9 12 06 00 00       	jmpq   4021d1 <submitr+0x6ce>
  401bbf:	41 89 c4             	mov    %eax,%r12d
  401bc2:	4c 89 ef             	mov    %r13,%rdi
  401bc5:	e8 36 f0 ff ff       	callq  400c00 <gethostbyname@plt>
  401bca:	48 85 c0             	test   %rax,%rax
  401bcd:	75 6b                	jne    401c3a <submitr+0x137>
  401bcf:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401bd6:	3a 20 44 
  401bd9:	49 89 07             	mov    %rax,(%r15)
  401bdc:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401be3:	20 75 6e 
  401be6:	49 89 47 08          	mov    %rax,0x8(%r15)
  401bea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401bf1:	74 6f 20 
  401bf4:	49 89 47 10          	mov    %rax,0x10(%r15)
  401bf8:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401bff:	76 65 20 
  401c02:	49 89 47 18          	mov    %rax,0x18(%r15)
  401c06:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401c0d:	72 20 61 
  401c10:	49 89 47 20          	mov    %rax,0x20(%r15)
  401c14:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  401c1b:	65 
  401c1c:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  401c23:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  401c28:	44 89 e7             	mov    %r12d,%edi
  401c2b:	e8 80 ef ff ff       	callq  400bb0 <close@plt>
  401c30:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c35:	e9 97 05 00 00       	jmpq   4021d1 <submitr+0x6ce>
  401c3a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  401c41:	00 00 
  401c43:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401c4a:	00 00 
  401c4c:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  401c53:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401c57:	48 8b 40 18          	mov    0x18(%rax),%rax
  401c5b:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  401c60:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401c65:	48 8b 30             	mov    (%rax),%rsi
  401c68:	e8 a3 ef ff ff       	callq  400c10 <__memmove_chk@plt>
  401c6d:	66 c1 cd 08          	ror    $0x8,%bp
  401c71:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
  401c76:	ba 10 00 00 00       	mov    $0x10,%edx
  401c7b:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401c80:	44 89 e7             	mov    %r12d,%edi
  401c83:	e8 08 f0 ff ff       	callq  400c90 <connect@plt>
  401c88:	85 c0                	test   %eax,%eax
  401c8a:	79 5d                	jns    401ce9 <submitr+0x1e6>
  401c8c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401c93:	3a 20 55 
  401c96:	49 89 07             	mov    %rax,(%r15)
  401c99:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401ca0:	20 74 6f 
  401ca3:	49 89 47 08          	mov    %rax,0x8(%r15)
  401ca7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401cae:	65 63 74 
  401cb1:	49 89 47 10          	mov    %rax,0x10(%r15)
  401cb5:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401cbc:	68 65 20 
  401cbf:	49 89 47 18          	mov    %rax,0x18(%r15)
  401cc3:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  401cca:	76 
  401ccb:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  401cd2:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  401cd7:	44 89 e7             	mov    %r12d,%edi
  401cda:	e8 d1 ee ff ff       	callq  400bb0 <close@plt>
  401cdf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ce4:	e9 e8 04 00 00       	jmpq   4021d1 <submitr+0x6ce>
  401ce9:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401cf0:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf5:	4c 89 c9             	mov    %r9,%rcx
  401cf8:	48 89 df             	mov    %rbx,%rdi
  401cfb:	f2 ae                	repnz scas %es:(%rdi),%al
  401cfd:	48 f7 d1             	not    %rcx
  401d00:	48 89 ce             	mov    %rcx,%rsi
  401d03:	4c 89 c9             	mov    %r9,%rcx
  401d06:	48 8b 3c 24          	mov    (%rsp),%rdi
  401d0a:	f2 ae                	repnz scas %es:(%rdi),%al
  401d0c:	49 89 c8             	mov    %rcx,%r8
  401d0f:	4c 89 c9             	mov    %r9,%rcx
  401d12:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401d17:	f2 ae                	repnz scas %es:(%rdi),%al
  401d19:	48 f7 d1             	not    %rcx
  401d1c:	48 89 ca             	mov    %rcx,%rdx
  401d1f:	4c 89 c9             	mov    %r9,%rcx
  401d22:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401d27:	f2 ae                	repnz scas %es:(%rdi),%al
  401d29:	4c 29 c2             	sub    %r8,%rdx
  401d2c:	48 29 ca             	sub    %rcx,%rdx
  401d2f:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401d34:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
  401d39:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401d3f:	76 73                	jbe    401db4 <submitr+0x2b1>
  401d41:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401d48:	3a 20 52 
  401d4b:	49 89 07             	mov    %rax,(%r15)
  401d4e:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401d55:	20 73 74 
  401d58:	49 89 47 08          	mov    %rax,0x8(%r15)
  401d5c:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401d63:	74 6f 6f 
  401d66:	49 89 47 10          	mov    %rax,0x10(%r15)
  401d6a:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401d71:	65 2e 20 
  401d74:	49 89 47 18          	mov    %rax,0x18(%r15)
  401d78:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401d7f:	61 73 65 
  401d82:	49 89 47 20          	mov    %rax,0x20(%r15)
  401d86:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401d8d:	49 54 52 
  401d90:	49 89 47 28          	mov    %rax,0x28(%r15)
  401d94:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401d9b:	55 46 00 
  401d9e:	49 89 47 30          	mov    %rax,0x30(%r15)
  401da2:	44 89 e7             	mov    %r12d,%edi
  401da5:	e8 06 ee ff ff       	callq  400bb0 <close@plt>
  401daa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401daf:	e9 1d 04 00 00       	jmpq   4021d1 <submitr+0x6ce>
  401db4:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
  401dbb:	00 
  401dbc:	b9 00 04 00 00       	mov    $0x400,%ecx
  401dc1:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc6:	48 89 d7             	mov    %rdx,%rdi
  401dc9:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401dcc:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401dd3:	48 89 df             	mov    %rbx,%rdi
  401dd6:	f2 ae                	repnz scas %es:(%rdi),%al
  401dd8:	48 89 c8             	mov    %rcx,%rax
  401ddb:	48 f7 d0             	not    %rax
  401dde:	48 83 e8 01          	sub    $0x1,%rax
  401de2:	85 c0                	test   %eax,%eax
  401de4:	0f 84 90 04 00 00    	je     40227a <submitr+0x777>
  401dea:	8d 40 ff             	lea    -0x1(%rax),%eax
  401ded:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
  401df2:	48 89 d5             	mov    %rdx,%rbp
  401df5:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
  401dfc:	00 20 00 
  401dff:	44 0f b6 03          	movzbl (%rbx),%r8d
  401e03:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
  401e07:	3c 35                	cmp    $0x35,%al
  401e09:	77 06                	ja     401e11 <submitr+0x30e>
  401e0b:	49 0f a3 c5          	bt     %rax,%r13
  401e0f:	72 0d                	jb     401e1e <submitr+0x31b>
  401e11:	44 89 c0             	mov    %r8d,%eax
  401e14:	83 e0 df             	and    $0xffffffdf,%eax
  401e17:	83 e8 41             	sub    $0x41,%eax
  401e1a:	3c 19                	cmp    $0x19,%al
  401e1c:	77 0a                	ja     401e28 <submitr+0x325>
  401e1e:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401e22:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e26:	eb 6c                	jmp    401e94 <submitr+0x391>
  401e28:	41 80 f8 20          	cmp    $0x20,%r8b
  401e2c:	75 0a                	jne    401e38 <submitr+0x335>
  401e2e:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401e32:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e36:	eb 5c                	jmp    401e94 <submitr+0x391>
  401e38:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401e3c:	3c 5f                	cmp    $0x5f,%al
  401e3e:	76 0a                	jbe    401e4a <submitr+0x347>
  401e40:	41 80 f8 09          	cmp    $0x9,%r8b
  401e44:	0f 85 a3 03 00 00    	jne    4021ed <submitr+0x6ea>
  401e4a:	45 0f b6 c0          	movzbl %r8b,%r8d
  401e4e:	b9 08 34 40 00       	mov    $0x403408,%ecx
  401e53:	ba 08 00 00 00       	mov    $0x8,%edx
  401e58:	be 01 00 00 00       	mov    $0x1,%esi
  401e5d:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  401e64:	00 
  401e65:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6a:	e8 61 ee ff ff       	callq  400cd0 <__sprintf_chk@plt>
  401e6f:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
  401e76:	00 
  401e77:	88 45 00             	mov    %al,0x0(%rbp)
  401e7a:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
  401e81:	00 
  401e82:	88 45 01             	mov    %al,0x1(%rbp)
  401e85:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
  401e8c:	00 
  401e8d:	88 45 02             	mov    %al,0x2(%rbp)
  401e90:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401e94:	48 83 c3 01          	add    $0x1,%rbx
  401e98:	49 39 de             	cmp    %rbx,%r14
  401e9b:	0f 85 5e ff ff ff    	jne    401dff <submitr+0x2fc>
  401ea1:	e9 d4 03 00 00       	jmpq   40227a <submitr+0x777>
  401ea6:	48 89 da             	mov    %rbx,%rdx
  401ea9:	48 89 ee             	mov    %rbp,%rsi
  401eac:	44 89 e7             	mov    %r12d,%edi
  401eaf:	e8 cc ec ff ff       	callq  400b80 <write@plt>
  401eb4:	48 85 c0             	test   %rax,%rax
  401eb7:	7f 0f                	jg     401ec8 <submitr+0x3c5>
  401eb9:	e8 92 ec ff ff       	callq  400b50 <__errno_location@plt>
  401ebe:	83 38 04             	cmpl   $0x4,(%rax)
  401ec1:	75 12                	jne    401ed5 <submitr+0x3d2>
  401ec3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec8:	48 01 c5             	add    %rax,%rbp
  401ecb:	48 29 c3             	sub    %rax,%rbx
  401ece:	75 d6                	jne    401ea6 <submitr+0x3a3>
  401ed0:	4d 85 ed             	test   %r13,%r13
  401ed3:	79 5f                	jns    401f34 <submitr+0x431>
  401ed5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401edc:	3a 20 43 
  401edf:	49 89 07             	mov    %rax,(%r15)
  401ee2:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401ee9:	20 75 6e 
  401eec:	49 89 47 08          	mov    %rax,0x8(%r15)
  401ef0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401ef7:	74 6f 20 
  401efa:	49 89 47 10          	mov    %rax,0x10(%r15)
  401efe:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  401f05:	20 74 6f 
  401f08:	49 89 47 18          	mov    %rax,0x18(%r15)
  401f0c:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  401f13:	73 65 72 
  401f16:	49 89 47 20          	mov    %rax,0x20(%r15)
  401f1a:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  401f21:	00 
  401f22:	44 89 e7             	mov    %r12d,%edi
  401f25:	e8 86 ec ff ff       	callq  400bb0 <close@plt>
  401f2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f2f:	e9 9d 02 00 00       	jmpq   4021d1 <submitr+0x6ce>
  401f34:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
  401f39:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
  401f40:	00 
  401f41:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  401f46:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  401f4b:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f50:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  401f57:	00 
  401f58:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401f5d:	e8 af fa ff ff       	callq  401a11 <rio_readlineb>
  401f62:	48 85 c0             	test   %rax,%rax
  401f65:	7f 74                	jg     401fdb <submitr+0x4d8>
  401f67:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f6e:	3a 20 43 
  401f71:	49 89 07             	mov    %rax,(%r15)
  401f74:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401f7b:	20 75 6e 
  401f7e:	49 89 47 08          	mov    %rax,0x8(%r15)
  401f82:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401f89:	74 6f 20 
  401f8c:	49 89 47 10          	mov    %rax,0x10(%r15)
  401f90:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  401f97:	66 69 72 
  401f9a:	49 89 47 18          	mov    %rax,0x18(%r15)
  401f9e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401fa5:	61 64 65 
  401fa8:	49 89 47 20          	mov    %rax,0x20(%r15)
  401fac:	48 b8 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rax
  401fb3:	6d 20 73 
  401fb6:	49 89 47 28          	mov    %rax,0x28(%r15)
  401fba:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  401fc1:	65 
  401fc2:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  401fc9:	44 89 e7             	mov    %r12d,%edi
  401fcc:	e8 df eb ff ff       	callq  400bb0 <close@plt>
  401fd1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fd6:	e9 f6 01 00 00       	jmpq   4021d1 <submitr+0x6ce>
  401fdb:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  401fe2:	00 
  401fe3:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  401fe8:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  401fef:	00 
  401ff0:	be 0f 34 40 00       	mov    $0x40340f,%esi
  401ff5:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  401ffc:	00 
  401ffd:	b8 00 00 00 00       	mov    $0x0,%eax
  402002:	e8 39 ec ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  402007:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  40200c:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402013:	0f 84 be 00 00 00    	je     4020d7 <submitr+0x5d4>
  402019:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402020:	00 
  402021:	b9 58 33 40 00       	mov    $0x403358,%ecx
  402026:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40202d:	be 01 00 00 00       	mov    $0x1,%esi
  402032:	4c 89 ff             	mov    %r15,%rdi
  402035:	b8 00 00 00 00       	mov    $0x0,%eax
  40203a:	e8 91 ec ff ff       	callq  400cd0 <__sprintf_chk@plt>
  40203f:	44 89 e7             	mov    %r12d,%edi
  402042:	e8 69 eb ff ff       	callq  400bb0 <close@plt>
  402047:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40204c:	e9 80 01 00 00       	jmpq   4021d1 <submitr+0x6ce>
  402051:	ba 00 20 00 00       	mov    $0x2000,%edx
  402056:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40205d:	00 
  40205e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402063:	e8 a9 f9 ff ff       	callq  401a11 <rio_readlineb>
  402068:	48 85 c0             	test   %rax,%rax
  40206b:	7f 6a                	jg     4020d7 <submitr+0x5d4>
  40206d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402074:	3a 20 43 
  402077:	49 89 07             	mov    %rax,(%r15)
  40207a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402081:	20 75 6e 
  402084:	49 89 47 08          	mov    %rax,0x8(%r15)
  402088:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40208f:	74 6f 20 
  402092:	49 89 47 10          	mov    %rax,0x10(%r15)
  402096:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  40209d:	68 65 61 
  4020a0:	49 89 47 18          	mov    %rax,0x18(%r15)
  4020a4:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4020ab:	66 72 6f 
  4020ae:	49 89 47 20          	mov    %rax,0x20(%r15)
  4020b2:	48 b8 6d 20 73 65 72 	movabs $0x726576726573206d,%rax
  4020b9:	76 65 72 
  4020bc:	49 89 47 28          	mov    %rax,0x28(%r15)
  4020c0:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  4020c5:	44 89 e7             	mov    %r12d,%edi
  4020c8:	e8 e3 ea ff ff       	callq  400bb0 <close@plt>
  4020cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020d2:	e9 fa 00 00 00       	jmpq   4021d1 <submitr+0x6ce>
  4020d7:	80 bc 24 50 20 00 00 	cmpb   $0xd,0x2050(%rsp)
  4020de:	0d 
  4020df:	0f 85 6c ff ff ff    	jne    402051 <submitr+0x54e>
  4020e5:	80 bc 24 51 20 00 00 	cmpb   $0xa,0x2051(%rsp)
  4020ec:	0a 
  4020ed:	0f 85 5e ff ff ff    	jne    402051 <submitr+0x54e>
  4020f3:	80 bc 24 52 20 00 00 	cmpb   $0x0,0x2052(%rsp)
  4020fa:	00 
  4020fb:	0f 85 50 ff ff ff    	jne    402051 <submitr+0x54e>
  402101:	ba 00 20 00 00       	mov    $0x2000,%edx
  402106:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40210d:	00 
  40210e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402113:	e8 f9 f8 ff ff       	callq  401a11 <rio_readlineb>
  402118:	48 85 c0             	test   %rax,%rax
  40211b:	7f 70                	jg     40218d <submitr+0x68a>
  40211d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402124:	3a 20 43 
  402127:	49 89 07             	mov    %rax,(%r15)
  40212a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402131:	20 75 6e 
  402134:	49 89 47 08          	mov    %rax,0x8(%r15)
  402138:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40213f:	74 6f 20 
  402142:	49 89 47 10          	mov    %rax,0x10(%r15)
  402146:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  40214d:	73 74 61 
  402150:	49 89 47 18          	mov    %rax,0x18(%r15)
  402154:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40215b:	65 73 73 
  40215e:	49 89 47 20          	mov    %rax,0x20(%r15)
  402162:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402169:	72 6f 6d 
  40216c:	49 89 47 28          	mov    %rax,0x28(%r15)
  402170:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402177:	65 72 00 
  40217a:	49 89 47 30          	mov    %rax,0x30(%r15)
  40217e:	44 89 e7             	mov    %r12d,%edi
  402181:	e8 2a ea ff ff       	callq  400bb0 <close@plt>
  402186:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40218b:	eb 44                	jmp    4021d1 <submitr+0x6ce>
  40218d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402194:	00 
  402195:	4c 89 ff             	mov    %r15,%rdi
  402198:	e8 c3 e9 ff ff       	callq  400b60 <strcpy@plt>
  40219d:	44 89 e7             	mov    %r12d,%edi
  4021a0:	e8 0b ea ff ff       	callq  400bb0 <close@plt>
  4021a5:	41 0f b6 17          	movzbl (%r15),%edx
  4021a9:	b8 4f 00 00 00       	mov    $0x4f,%eax
  4021ae:	29 d0                	sub    %edx,%eax
  4021b0:	75 15                	jne    4021c7 <submitr+0x6c4>
  4021b2:	41 0f b6 57 01       	movzbl 0x1(%r15),%edx
  4021b7:	b8 4b 00 00 00       	mov    $0x4b,%eax
  4021bc:	29 d0                	sub    %edx,%eax
  4021be:	75 07                	jne    4021c7 <submitr+0x6c4>
  4021c0:	41 0f b6 47 02       	movzbl 0x2(%r15),%eax
  4021c5:	f7 d8                	neg    %eax
  4021c7:	85 c0                	test   %eax,%eax
  4021c9:	0f 95 c0             	setne  %al
  4021cc:	0f b6 c0             	movzbl %al,%eax
  4021cf:	f7 d8                	neg    %eax
  4021d1:	48 8b 8c 24 58 a0 00 	mov    0xa058(%rsp),%rcx
  4021d8:	00 
  4021d9:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4021e0:	00 00 
  4021e2:	0f 84 12 01 00 00    	je     4022fa <submitr+0x7f7>
  4021e8:	e9 08 01 00 00       	jmpq   4022f5 <submitr+0x7f2>
  4021ed:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4021f4:	3a 20 52 
  4021f7:	49 89 07             	mov    %rax,(%r15)
  4021fa:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402201:	20 73 74 
  402204:	49 89 47 08          	mov    %rax,0x8(%r15)
  402208:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40220f:	63 6f 6e 
  402212:	49 89 47 10          	mov    %rax,0x10(%r15)
  402216:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  40221d:	20 61 6e 
  402220:	49 89 47 18          	mov    %rax,0x18(%r15)
  402224:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40222b:	67 61 6c 
  40222e:	49 89 47 20          	mov    %rax,0x20(%r15)
  402232:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402239:	6e 70 72 
  40223c:	49 89 47 28          	mov    %rax,0x28(%r15)
  402240:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402247:	6c 65 20 
  40224a:	49 89 47 30          	mov    %rax,0x30(%r15)
  40224e:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402255:	63 74 65 
  402258:	49 89 47 38          	mov    %rax,0x38(%r15)
  40225c:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  402263:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  402268:	44 89 e7             	mov    %r12d,%edi
  40226b:	e8 40 e9 ff ff       	callq  400bb0 <close@plt>
  402270:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402275:	e9 57 ff ff ff       	jmpq   4021d1 <submitr+0x6ce>
  40227a:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
  402281:	00 
  402282:	48 83 ec 08          	sub    $0x8,%rsp
  402286:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  40228d:	00 
  40228e:	50                   	push   %rax
  40228f:	ff 74 24 20          	pushq  0x20(%rsp)
  402293:	ff 74 24 30          	pushq  0x30(%rsp)
  402297:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
  40229c:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  4022a1:	b9 88 33 40 00       	mov    $0x403388,%ecx
  4022a6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022ab:	be 01 00 00 00       	mov    $0x1,%esi
  4022b0:	48 89 df             	mov    %rbx,%rdi
  4022b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b8:	e8 13 ea ff ff       	callq  400cd0 <__sprintf_chk@plt>
  4022bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022c9:	48 89 df             	mov    %rbx,%rdi
  4022cc:	f2 ae                	repnz scas %es:(%rdi),%al
  4022ce:	48 89 c8             	mov    %rcx,%rax
  4022d1:	48 f7 d0             	not    %rax
  4022d4:	4c 8d 68 ff          	lea    -0x1(%rax),%r13
  4022d8:	48 83 c4 20          	add    $0x20,%rsp
  4022dc:	4c 89 eb             	mov    %r13,%rbx
  4022df:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  4022e6:	00 
  4022e7:	4d 85 ed             	test   %r13,%r13
  4022ea:	0f 85 b6 fb ff ff    	jne    401ea6 <submitr+0x3a3>
  4022f0:	e9 3f fc ff ff       	jmpq   401f34 <submitr+0x431>
  4022f5:	e8 96 e8 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4022fa:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402301:	5b                   	pop    %rbx
  402302:	5d                   	pop    %rbp
  402303:	41 5c                	pop    %r12
  402305:	41 5d                	pop    %r13
  402307:	41 5e                	pop    %r14
  402309:	41 5f                	pop    %r15
  40230b:	c3                   	retq   

000000000040230c <init_timeout>:
  40230c:	85 ff                	test   %edi,%edi
  40230e:	74 22                	je     402332 <init_timeout+0x26>
  402310:	53                   	push   %rbx
  402311:	89 fb                	mov    %edi,%ebx
  402313:	be e3 19 40 00       	mov    $0x4019e3,%esi
  402318:	bf 0e 00 00 00       	mov    $0xe,%edi
  40231d:	e8 ce e8 ff ff       	callq  400bf0 <signal@plt>
  402322:	85 db                	test   %ebx,%ebx
  402324:	bf 00 00 00 00       	mov    $0x0,%edi
  402329:	0f 49 fb             	cmovns %ebx,%edi
  40232c:	e8 6f e8 ff ff       	callq  400ba0 <alarm@plt>
  402331:	5b                   	pop    %rbx
  402332:	f3 c3                	repz retq 

0000000000402334 <init_driver>:
  402334:	55                   	push   %rbp
  402335:	53                   	push   %rbx
  402336:	48 83 ec 28          	sub    $0x28,%rsp
  40233a:	48 89 fd             	mov    %rdi,%rbp
  40233d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402344:	00 00 
  402346:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40234b:	31 c0                	xor    %eax,%eax
  40234d:	be 01 00 00 00       	mov    $0x1,%esi
  402352:	bf 0d 00 00 00       	mov    $0xd,%edi
  402357:	e8 94 e8 ff ff       	callq  400bf0 <signal@plt>
  40235c:	be 01 00 00 00       	mov    $0x1,%esi
  402361:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402366:	e8 85 e8 ff ff       	callq  400bf0 <signal@plt>
  40236b:	be 01 00 00 00       	mov    $0x1,%esi
  402370:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402375:	e8 76 e8 ff ff       	callq  400bf0 <signal@plt>
  40237a:	ba 00 00 00 00       	mov    $0x0,%edx
  40237f:	be 01 00 00 00       	mov    $0x1,%esi
  402384:	bf 02 00 00 00       	mov    $0x2,%edi
  402389:	e8 52 e9 ff ff       	callq  400ce0 <socket@plt>
  40238e:	85 c0                	test   %eax,%eax
  402390:	79 4f                	jns    4023e1 <init_driver+0xad>
  402392:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402399:	3a 20 43 
  40239c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4023a0:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4023a7:	20 75 6e 
  4023aa:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4023ae:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4023b5:	74 6f 20 
  4023b8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4023bc:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4023c3:	65 20 73 
  4023c6:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4023ca:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4023d1:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4023d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023dc:	e9 0c 01 00 00       	jmpq   4024ed <init_driver+0x1b9>
  4023e1:	89 c3                	mov    %eax,%ebx
  4023e3:	bf 20 34 40 00       	mov    $0x403420,%edi
  4023e8:	e8 13 e8 ff ff       	callq  400c00 <gethostbyname@plt>
  4023ed:	48 85 c0             	test   %rax,%rax
  4023f0:	75 68                	jne    40245a <init_driver+0x126>
  4023f2:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4023f9:	3a 20 44 
  4023fc:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402400:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402407:	20 75 6e 
  40240a:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40240e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402415:	74 6f 20 
  402418:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40241c:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402423:	76 65 20 
  402426:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40242a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402431:	72 20 61 
  402434:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402438:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40243f:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402445:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402449:	89 df                	mov    %ebx,%edi
  40244b:	e8 60 e7 ff ff       	callq  400bb0 <close@plt>
  402450:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402455:	e9 93 00 00 00       	jmpq   4024ed <init_driver+0x1b9>
  40245a:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402461:	00 
  402462:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402469:	00 00 
  40246b:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402471:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402475:	48 8b 40 18          	mov    0x18(%rax),%rax
  402479:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40247e:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402483:	48 8b 30             	mov    (%rax),%rsi
  402486:	e8 85 e7 ff ff       	callq  400c10 <__memmove_chk@plt>
  40248b:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
  402492:	ba 10 00 00 00       	mov    $0x10,%edx
  402497:	48 89 e6             	mov    %rsp,%rsi
  40249a:	89 df                	mov    %ebx,%edi
  40249c:	e8 ef e7 ff ff       	callq  400c90 <connect@plt>
  4024a1:	85 c0                	test   %eax,%eax
  4024a3:	79 32                	jns    4024d7 <init_driver+0x1a3>
  4024a5:	41 b8 20 34 40 00    	mov    $0x403420,%r8d
  4024ab:	b9 e0 33 40 00       	mov    $0x4033e0,%ecx
  4024b0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4024b7:	be 01 00 00 00       	mov    $0x1,%esi
  4024bc:	48 89 ef             	mov    %rbp,%rdi
  4024bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c4:	e8 07 e8 ff ff       	callq  400cd0 <__sprintf_chk@plt>
  4024c9:	89 df                	mov    %ebx,%edi
  4024cb:	e8 e0 e6 ff ff       	callq  400bb0 <close@plt>
  4024d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024d5:	eb 16                	jmp    4024ed <init_driver+0x1b9>
  4024d7:	89 df                	mov    %ebx,%edi
  4024d9:	e8 d2 e6 ff ff       	callq  400bb0 <close@plt>
  4024de:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4024e4:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4024e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ed:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4024f2:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4024f9:	00 00 
  4024fb:	74 05                	je     402502 <init_driver+0x1ce>
  4024fd:	e8 8e e6 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  402502:	48 83 c4 28          	add    $0x28,%rsp
  402506:	5b                   	pop    %rbx
  402507:	5d                   	pop    %rbp
  402508:	c3                   	retq   

0000000000402509 <driver_post>:
  402509:	53                   	push   %rbx
  40250a:	4c 89 c3             	mov    %r8,%rbx
  40250d:	85 c9                	test   %ecx,%ecx
  40250f:	74 24                	je     402535 <driver_post+0x2c>
  402511:	be 3c 34 40 00       	mov    $0x40343c,%esi
  402516:	bf 01 00 00 00       	mov    $0x1,%edi
  40251b:	b8 00 00 00 00       	mov    $0x0,%eax
  402520:	e8 2b e7 ff ff       	callq  400c50 <__printf_chk@plt>
  402525:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40252a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40252e:	b8 00 00 00 00       	mov    $0x0,%eax
  402533:	eb 41                	jmp    402576 <driver_post+0x6d>
  402535:	48 85 ff             	test   %rdi,%rdi
  402538:	74 2e                	je     402568 <driver_post+0x5f>
  40253a:	80 3f 00             	cmpb   $0x0,(%rdi)
  40253d:	74 29                	je     402568 <driver_post+0x5f>
  40253f:	41 50                	push   %r8
  402541:	52                   	push   %rdx
  402542:	41 b9 53 34 40 00    	mov    $0x403453,%r9d
  402548:	49 89 f0             	mov    %rsi,%r8
  40254b:	48 89 f9             	mov    %rdi,%rcx
  40254e:	ba 57 34 40 00       	mov    $0x403457,%edx
  402553:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  402558:	bf 20 34 40 00       	mov    $0x403420,%edi
  40255d:	e8 a1 f5 ff ff       	callq  401b03 <submitr>
  402562:	48 83 c4 10          	add    $0x10,%rsp
  402566:	eb 0e                	jmp    402576 <driver_post+0x6d>
  402568:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40256d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402571:	b8 00 00 00 00       	mov    $0x0,%eax
  402576:	5b                   	pop    %rbx
  402577:	c3                   	retq   
  402578:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40257f:	00 

0000000000402580 <__libc_csu_init>:
  402580:	41 57                	push   %r15
  402582:	41 56                	push   %r14
  402584:	41 89 ff             	mov    %edi,%r15d
  402587:	41 55                	push   %r13
  402589:	41 54                	push   %r12
  40258b:	4c 8d 25 7e 18 20 00 	lea    0x20187e(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402592:	55                   	push   %rbp
  402593:	48 8d 2d 7e 18 20 00 	lea    0x20187e(%rip),%rbp        # 603e18 <__init_array_end>
  40259a:	53                   	push   %rbx
  40259b:	49 89 f6             	mov    %rsi,%r14
  40259e:	49 89 d5             	mov    %rdx,%r13
  4025a1:	4c 29 e5             	sub    %r12,%rbp
  4025a4:	48 83 ec 08          	sub    $0x8,%rsp
  4025a8:	48 c1 fd 03          	sar    $0x3,%rbp
  4025ac:	e8 4f e5 ff ff       	callq  400b00 <_init>
  4025b1:	48 85 ed             	test   %rbp,%rbp
  4025b4:	74 20                	je     4025d6 <__libc_csu_init+0x56>
  4025b6:	31 db                	xor    %ebx,%ebx
  4025b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025bf:	00 
  4025c0:	4c 89 ea             	mov    %r13,%rdx
  4025c3:	4c 89 f6             	mov    %r14,%rsi
  4025c6:	44 89 ff             	mov    %r15d,%edi
  4025c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4025cd:	48 83 c3 01          	add    $0x1,%rbx
  4025d1:	48 39 eb             	cmp    %rbp,%rbx
  4025d4:	75 ea                	jne    4025c0 <__libc_csu_init+0x40>
  4025d6:	48 83 c4 08          	add    $0x8,%rsp
  4025da:	5b                   	pop    %rbx
  4025db:	5d                   	pop    %rbp
  4025dc:	41 5c                	pop    %r12
  4025de:	41 5d                	pop    %r13
  4025e0:	41 5e                	pop    %r14
  4025e2:	41 5f                	pop    %r15
  4025e4:	c3                   	retq   
  4025e5:	90                   	nop
  4025e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4025ed:	00 00 00 

00000000004025f0 <__libc_csu_fini>:
  4025f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004025f4 <_fini>:
  4025f4:	48 83 ec 08          	sub    $0x8,%rsp
  4025f8:	48 83 c4 08          	add    $0x8,%rsp
  4025fc:	c3                   	retq   
