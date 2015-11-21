enum CHILD {
   TINA = 1,
   JUDY = 0
};

enum COOKIE_JAR {
   EMPTY = -2,
   NOT_ALLOWED = -1,
   ALLOWED = 1
};

struct request_args {
    enum CHILD child;
    enum COOKIE_JAR *cookie_jar
};

program COOKIE_JAR_PRG {
        version COOKIE_JAR_VER {
            void GetMeMyCookie(struct request_args) = 1;
        } = 1;
} = 0x20000101;
