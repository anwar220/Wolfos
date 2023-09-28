# classes2.dex

.class Landroid/opengl/EGLLogWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL11;


# instance fields
.field private mArgCount:I

.field mCheckError:Z

.field private mEgl10:Ljavax/microedition/khronos/egl/EGL10;

.field mLog:Ljava/io/Writer;

.field mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    iput-object p3, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    iput-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1a

    move v1, v2

    :cond_1a
    iput-boolean v1, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    if-lez v0, :cond_d

    const-string v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    :cond_27
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 4

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_a

    const-string v0, "EGL10.EGL_NO_CONTEXT"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_a
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .registers 4

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    if-ne p2, v0, :cond_a

    const-string v0, "EGL10.EGL_DEFAULT_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_a
    sget-object v0, Landroid/opengl/EGLLogWrapper;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne p2, v0, :cond_14

    const-string v0, "EGL10.EGL_NO_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_14
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .registers 4

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v0, :cond_a

    const-string v0, "EGL10.EGL_NO_SURFACE"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_a
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private arg(Ljava/lang/String;[I)V
    .registers 5

    if-nez p2, :cond_8

    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_8

    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    return-void
.end method

.method private checkError()V
    .registers 4

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    move v1, v0

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    if-nez v2, :cond_2a

    goto :goto_30

    :cond_2a
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v1, v0}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_30
    :goto_30
    return-void
.end method

.method private end()V
    .registers 2

    const-string v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    return-void
.end method

.method private flush()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    :goto_a
    return-void
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    invoke-static {p0}, Landroid/opengl/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x300e
    const-string v0, "EGL_CONTEXT_LOST"

    return-object v0

    :pswitch_b  #0x300d
    const-string v0, "EGL_BAD_SURFACE"

    return-object v0

    :pswitch_e  #0x300c
    const-string v0, "EGL_BAD_PARAMETER"

    return-object v0

    :pswitch_11  #0x300b
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    return-object v0

    :pswitch_14  #0x300a
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    return-object v0

    :pswitch_17  #0x3009
    const-string v0, "EGL_BAD_MATCH"

    return-object v0

    :pswitch_1a  #0x3008
    const-string v0, "EGL_BAD_DISPLAY"

    return-object v0

    :pswitch_1d  #0x3007
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    return-object v0

    :pswitch_20  #0x3006
    const-string v0, "EGL_BAD_CONTEXT"

    return-object v0

    :pswitch_23  #0x3005
    const-string v0, "EGL_BAD_CONFIG"

    return-object v0

    :pswitch_26  #0x3004
    const-string v0, "EGL_BAD_ATTRIBUTE"

    return-object v0

    :pswitch_29  #0x3003
    const-string v0, "EGL_BAD_ALLOC"

    return-object v0

    :pswitch_2c  #0x3002
    const-string v0, "EGL_BAD_ACCESS"

    return-object v0

    :pswitch_2f  #0x3001
    const-string v0, "EGL_NOT_INITIALIZED"

    return-object v0

    :pswitch_32  #0x3000
    const-string v0, "EGL_SUCCESS"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x3000
        :pswitch_32  #00003000
        :pswitch_2f  #00003001
        :pswitch_2c  #00003002
        :pswitch_29  #00003003
        :pswitch_26  #00003004
        :pswitch_23  #00003005
        :pswitch_20  #00003006
        :pswitch_1d  #00003007
        :pswitch_1a  #00003008
        :pswitch_17  #00003009
        :pswitch_14  #0000300a
        :pswitch_11  #0000300b
        :pswitch_e  #0000300c
        :pswitch_b  #0000300d
        :pswitch_8  #0000300e
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method private logLine(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private returns(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    return-void
.end method

.method private returns(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, p1, :cond_44

    add-int v3, p3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_37

    if-lt v3, v1, :cond_31

    goto :goto_37

    :cond_31
    aget v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_37
    :goto_37
    const-string v4, "out of bounds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3c
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_44
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, p1, :cond_44

    add-int v3, p3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_37

    if-lt v3, v1, :cond_31

    goto :goto_37

    :cond_31
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_37
    :goto_37
    const-string v4, "out of bounds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3c
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_44
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string v0, "null"

    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .registers 13

    const-string v0, "eglChooseConfig"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    const-string v0, "config_size"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    const-string v1, "configs"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "num_config"

    invoke-direct {p0, v1, p5}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .registers 5

    const-string v0, "eglCopyBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "surface"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const-string v0, "native_pixmap"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 6

    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "share_context"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 5

    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 6

    const-string v0, "eglCreatePixmapSurface"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "native_pixmap"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 6

    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "native_window"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 4

    const-string v0, "eglDestroyContext"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "context"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .registers 4

    const-string v0, "eglDestroySurface"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "surface"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .registers 7

    const-string v0, "eglGetConfigAttrib"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attribute"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    const-string v1, "value"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    const/4 v1, 0x0

    return v1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .registers 7

    const-string v0, "eglGetConfigs"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config_size"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    const-string v1, "configs"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "num_config"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 2

    const-string v0, "eglGetCurrentContext"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 2

    const-string v0, "eglGetCurrentDisplay"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 3

    const-string v0, "eglGetCurrentSurface"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "readdraw"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 3

    const-string v0, "eglGetDisplay"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "native_display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglGetError()I
    .registers 3

    const-string v0, "eglGetError"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .registers 5

    const-string v0, "eglInitialize"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    const-string v1, "major_minor"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 6

    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "draw"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const-string v0, "read"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const-string v0, "context"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .registers 7

    const-string v0, "eglQueryContext"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "context"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    const-string v0, "attribute"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    move-result v0

    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .registers 4

    const-string v0, "eglQueryString"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "name"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .registers 7

    const-string v0, "eglQuerySurface"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "surface"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const-string v0, "attribute"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v0

    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglReleaseThread()Z
    .registers 2

    const-string v0, "eglReleaseThread"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglReleaseThread()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .registers 4

    const-string v0, "eglSwapBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "surface"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .registers 3

    const-string v0, "eglTerminate"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglWaitGL()Z
    .registers 2

    const-string v0, "eglWaitGL"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .registers 4

    const-string v0, "eglWaitNative"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "bindTarget"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    return v0
.end method
