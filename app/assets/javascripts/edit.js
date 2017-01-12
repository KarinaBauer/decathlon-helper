var avant = document.createElement('avant');
avant.innerHTML = '
%input{:name => "avantages[][icon]", :type => "hidden", :value => avantage[:icon]}
= f.label 'заголовок'
%input{:name => "avantages[][title]", :type => "text", :value => avantage[:title]}
= f.label 'описание'
%input{:name => "avantages[][description]", :type => "text", :value => avantage[:description]}
'
