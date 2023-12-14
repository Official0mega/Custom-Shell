CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRCDIR = src
BUILTINSDIR = controllers
INCLUDEDIR = include
ADVANCEDDIR = advanced
HANDLERSDIR = handlers
ENVIRONMENTDIR = environment
HELPERSDIR = helpers
UTILSDIR = utils
OBJDIR = obj
EXEC = simple_shell

SRC := $(shell find $(SRCDIR) -name '*.c')
BUILTINSSRC := $(shell find $(BUILTINSDIR) -name '*.c')
ADVANCEDSRC := $(shell find $(ADVANCEDDIR) -name '*.c')
HANDLERSSRC := $(shell find $(HANDLERSDIR) -name '*.c')
ENVIRONMENTSRC := $(shell find $(ENVIRONMENTDIR) -name '*.c')
HELPERSSRC := $(shell find $(HELPERSDIR) -name '*.c')
UTILSSRC := $(shell find $(UTILSDIR) -name '*.c')

OBJ := $(SRC:.c=$(OBJDIR)/%.o)
BUILTINSOBJ := $(BUILTINSSRC:.c=$(OBJDIR)/%.o)
ADVANCEDOBJ := $(ADVANCEDSRC:.c=$(OBJDIR)/%.o)
HANDLERSOBJ := $(HANDLERSSRC:.c=$(OBJDIR)/%.o)
ENVIRONMENTOBJ := $(ENVIRONMENTSRC:.c=$(OBJDIR)/%.o)
HELPERSOBJ := $(HELPERSSRC:.c=$(OBJDIR)/%.o)
UTILSOBJ := $(UTILSSRC:.c=$(OBJDIR)/%.o)

all: $(EXEC)

$(EXEC): $(OBJ) $(BUILTINSOBJ) $(ADVANCEDOBJ) $(HANDLERSOBJ) $(ENVIRONMENTOBJ) $(HELPERSOBJ) $(UTILSOBJ)
	$(CC) $(CFLAGS) $^ -o $@

$(OBJDIR)/%.o: %.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -I$(INCLUDEDIR) -c $< -o $@

$(OBJDIR)/controllers/%.o: controllers/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -I$(INCLUDEDIR) -c $< -o $@

$(OBJDIR)/advanced/%.o: advanced/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -I$(INCLUDEDIR) -c $< -o $@

$(OBJDIR)/handlers/%.o: handlers/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -I$(INCLUDEDIR) -c $< -o $@

$(OBJDIR)/environment/%.o: environment/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -I$(INCLUDEDIR) -c $< -o $@

$(OBJDIR)/helpers/%.o: helpers/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -I$(INCLUDEDIR) -c $< -o $@

$(OBJDIR)/utils/%.o: utils/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -I$(INCLUDEDIR) -c $< -o $@

clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -f $(EXEC)

re: fclean all

.PHONY: all clean fclean re
