local ran_ok,err=pcall(function()local ran_ok,kpse=pcall(require, "kpse")if ran_ok then kpse.set_program_name("luatex")end assert(load("print(os.getenv(\"TEXMF_OUTPUT_DIRECTORY\")or\".\")"))()end)if not ran_ok then local file=io.open("$TEXMF_OUTPUT_DIRECTORY/chap1.luabridge.err","w")if file then file:write(err.."\n")file:close()end print('\\begingroup\\ExplSyntaxOn\\csname msg_error:nnvv\\endcsname{luabridge}{failed-to-execute}{g_luabridge_output_dirname_str}{g_luabridge_error_output_filename_str}\\endgroup')end
