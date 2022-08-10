CFILES = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isdigit.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OFILES = $(addprefix $(OBJ_DIR)/,$(CFILES:.c=.o))

BCFILES = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isdigit.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

BFILES = $(addprefix $(OBJ_DIRB)/,$(BCFILES:.c=.o))

CC = cc

INC = libft.h

CFLAGS = -c -Wall -Werror -Wextra

INC = includes/libft.h

OBJ_DIR = ./obj

OBJ_DIRB = ./obj_B

SRC_DIR = ./src

NAME = libft.a

$(NAME) : $(OBJ_DIR) $(OFILES)
	@ar -cr $(NAME) $(OFILES)

$(OFILES) : $(OBJ_DIR)/%.o : $(SRC_DIR)/%.c $(INC)
	$(CC) $(CFLAGS) $< -o $@

$(OBJ_DIR) :
	@mkdir obj

$(OBJ_DIRB) :
	@mkdir obj_B

bonus : $(OBJ_DIRB) $(BFILES)
	@ar -cr $(NAME) $(BFILES)

$(BFILES) : $(OBJ_DIRB)/%.o : $(SRC_DIR)/%.c $(INC)
	$(CC) $(CFLAGS) $< -o $@

clean :
	@rm -rf $(OBJ_DIR) $(OBJ_DIRB)

fclean : clean
	@rm -rf $(NAME)

re : fclean all

all : ${NAME}






re : fclean all
