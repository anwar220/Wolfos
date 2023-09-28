# classes2.dex

.class public Landroid/media/audiofx/StreamDefaultEffect;
.super Landroid/media/audiofx/DefaultEffect;


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamDefaultEffect-JAVA"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .registers 13

    invoke-direct {p0}, Landroid/media/audiofx/DefaultEffect;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/audiofx/StreamDefaultEffect;->native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-eqz v1, :cond_70

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when initializing StreamDefaultEffect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StreamDefaultEffect-JAVA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_76

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot initialize effect engine for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_60  #0xfffffffc
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream usage, type uuid, or implementation uuid not supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_68  #0xfffffffb
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Effect library not loaded"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_70
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Landroid/media/audiofx/StreamDefaultEffect;->mId:I

    return-void

    :pswitch_data_76
    .packed-switch -0x5
        :pswitch_68  #fffffffb
        :pswitch_60  #fffffffc
    .end packed-switch
.end method

.method private final native native_release(I)V
.end method

.method private final native native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/audiofx/StreamDefaultEffect;->release()V

    return-void
.end method

.method public release()V
    .registers 2

    iget v0, p0, Landroid/media/audiofx/StreamDefaultEffect;->mId:I

    invoke-direct {p0, v0}, Landroid/media/audiofx/StreamDefaultEffect;->native_release(I)V

    return-void
.end method
