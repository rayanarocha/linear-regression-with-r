## Configuração do Github no RStudio local ou cloud

#instalar pacote usethis
install.package('usethis')
library(usethis)

# se apresentar pro git
usethis::use_git_config(user.name="Rayana Rocha", 
                        user.email="rayana.azus@gmail.com")
# editar renviron
usethis::edit_r_environ()

# gera token do github
usethis::create_github_token()

# escreve o token do github
usethis::browse_github_token()

#usar github
usethis::use_git()