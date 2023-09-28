# classes3.dex

.class public abstract Landroid/security/keystore/KeyProperties$SecurityLevel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SecurityLevel"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromKeymaster(I)I
    .registers 4

    packed-switch p0, :pswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported security level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x2
    const/4 v0, 0x2

    return v0

    :pswitch_1e  #0x1
    const/4 v0, 0x1

    return v0

    :pswitch_20  #0x0
    const/4 v0, 0x0

    return v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1e  #00000001
        :pswitch_1c  #00000002
    .end packed-switch
.end method

.method public static toKeymaster(I)I
    .registers 4

    packed-switch p0, :pswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported security level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x2
    const/4 v0, 0x2

    return v0

    :pswitch_1e  #0x1
    const/4 v0, 0x1

    return v0

    :pswitch_20  #0x0
    const/4 v0, 0x0

    return v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1e  #00000001
        :pswitch_1c  #00000002
    .end packed-switch
.end method
