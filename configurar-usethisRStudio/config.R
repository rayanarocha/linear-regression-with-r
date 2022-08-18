## Configuração do Github no RStudio local ou cloud

#instalar pacote usethis
install.package('usethis')
library(usethis)

# se apresentar pro git
usethis::use_git_config(user.name="user_name", 
                        user.email="user_email")
# editar renviron
usethis::edit_r_environ()

# gera token do github
usethis::create_github_token()

# escreve o token do github
usethis::browse_github_token()

#usar github no rstudio
usethis::use_git()