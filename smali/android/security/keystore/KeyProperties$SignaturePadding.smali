# classes3.dex

.class public abstract Landroid/security/keystore/KeyProperties$SignaturePadding;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SignaturePadding"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .registers 4

    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    :cond_6
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_18

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return-object v0

    :cond_19
    :goto_19
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_22

    :pswitch_3  #0x4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported signature padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x5
    const-string v0, "PKCS1"

    return-object v0

    :pswitch_1f  #0x3
    const-string v0, "PSS"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_1f  #00000003
        :pswitch_3  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    :cond_d
    goto :goto_22

    :sswitch_e
    const-string v1, "PKCS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_23

    :sswitch_18
    const-string v1, "PSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_23

    :goto_22
    const/4 v0, -0x1

    :goto_23
    packed-switch v0, :pswitch_data_4e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported signature padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3f  #0x1
    const/4 v0, 0x3

    return v0

    :pswitch_41  #0x0
    const/4 v0, 0x5

    return v0

    nop

    :sswitch_data_44
    .sparse-switch
        0x136b0 -> :sswitch_18
        0x48a75e6 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_3f  #00000001
    .end packed-switch
.end method
