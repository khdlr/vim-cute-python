" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear pythonOperator

syntax match pythonOperator "\<is\>"

syntax match pyNiceOperator "\<in\>" conceal cchar=∈
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match pyNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=¬
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax match pyNiceOperator "\<\%(torch\.\|np\.\|math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(torch\.\|np\.\|math\.\)\?pi\>" conceal cchar=π

syntax keyword pyNiceVariable y_hat conceal cchar=ŷ

syntax keyword pyNiceVariable alpha conceal cchar=α
syntax keyword pyNiceVariable beta conceal cchar=β
syntax keyword pyNiceVariable gamma conceal cchar=γ
syntax keyword pyNiceVariable Gamma conceal cchar=Γ
syntax keyword pyNiceVariable delta conceal cchar=δ
syntax keyword pyNiceVariable eps conceal cchar=ε
syntax keyword pyNiceVariable epsilon conceal cchar=ε
syntax keyword pyNiceVariable theta conceal cchar=θ
syntax keyword pyNiceVariable sigma conceal cchar=σ
syntax keyword pyNiceVariable phi conceal cchar=φ
syntax keyword pyNiceVariable psi conceal cchar=ψ
syntax keyword pyNiceVariable omega conceal cchar=ω

syntax keyword pyNiceStatement lambda conceal cchar=λ

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi link pyNiceVariable Normal

hi! link Conceal Operator

setlocal conceallevel=1
