# classes2.dex

.class public final Landroid/media/tv/tuner/TunerUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkResourceAccessible(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is inaccessible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkResourceState(Ljava/lang/String;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFilterSubtype(II)I
    .registers 11

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne p0, v8, :cond_19

    packed-switch p1, :pswitch_data_6c

    :pswitch_f  #0x5
    goto :goto_49

    :pswitch_10  #0x9
    return v0

    :pswitch_11  #0x8
    return v1

    :pswitch_12  #0x7
    return v5

    :pswitch_13  #0x6
    return v2

    :pswitch_14  #0x4
    return v3

    :pswitch_15  #0x3
    return v4

    :pswitch_16  #0x2
    return v7

    :pswitch_17  #0x1
    return v8

    :pswitch_18  #0x0
    return v6

    :cond_19
    if-ne p0, v7, :cond_27

    packed-switch p1, :pswitch_data_84

    :pswitch_1e  #0x7, 0x8, 0x9
    goto :goto_49

    :pswitch_1f  #0xa
    return v5

    :pswitch_20  #0x6
    return v1

    :pswitch_21  #0x5
    return v2

    :pswitch_22  #0x4
    return v3

    :pswitch_23  #0x3
    return v4

    :pswitch_24  #0x2
    return v7

    :pswitch_25  #0x1
    return v8

    :pswitch_26  #0x0
    return v6

    :cond_27
    if-ne p0, v4, :cond_33

    sparse-switch p1, :sswitch_data_9e

    goto :goto_49

    :sswitch_2d
    return v3

    :sswitch_2e
    return v4

    :sswitch_2f
    return v5

    :sswitch_30
    return v7

    :sswitch_31
    return v8

    :sswitch_32
    return v6

    :cond_33
    if-ne p0, v0, :cond_3d

    sparse-switch p1, :sswitch_data_b8

    goto :goto_49

    :sswitch_39
    return v7

    :sswitch_3a
    return v5

    :sswitch_3b
    return v8

    :sswitch_3c
    return v6

    :cond_3d
    const/16 v0, 0x10

    if-ne p0, v0, :cond_49

    sparse-switch p1, :sswitch_data_ca

    goto :goto_49

    :sswitch_45
    return v7

    :sswitch_46
    return v5

    :sswitch_47
    return v8

    :sswitch_48
    return v6

    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter types. Main type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subtype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_17  #00000001
        :pswitch_16  #00000002
        :pswitch_15  #00000003
        :pswitch_14  #00000004
        :pswitch_f  #00000005
        :pswitch_13  #00000006
        :pswitch_12  #00000007
        :pswitch_11  #00000008
        :pswitch_10  #00000009
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_25  #00000001
        :pswitch_24  #00000002
        :pswitch_23  #00000003
        :pswitch_22  #00000004
        :pswitch_21  #00000005
        :pswitch_20  #00000006
        :pswitch_1e  #00000007
        :pswitch_1e  #00000008
        :pswitch_1e  #00000009
        :pswitch_1f  #0000000a
    .end packed-switch

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_32
        0x1 -> :sswitch_31
        0xb -> :sswitch_30
        0xc -> :sswitch_2f
        0xd -> :sswitch_2e
        0xe -> :sswitch_2d
    .end sparse-switch

    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_3c
        0x1 -> :sswitch_3b
        0xe -> :sswitch_3a
        0xf -> :sswitch_39
    .end sparse-switch

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_48
        0x1 -> :sswitch_47
        0xe -> :sswitch_46
        0x10 -> :sswitch_45
    .end sparse-switch
.end method

.method public static throwExceptionForResult(ILjava/lang/String;)V
    .registers 5

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    packed-switch p0, :pswitch_data_88

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2a  #0x6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_43  #0x5
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_49  #0x4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4f  #0x3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_55  #0x2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: not initialized. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6e  #0x1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: resource unavailable. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_87  #0x0
    return-void

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_87  #00000000
        :pswitch_6e  #00000001
        :pswitch_55  #00000002
        :pswitch_4f  #00000003
        :pswitch_49  #00000004
        :pswitch_43  #00000005
        :pswitch_2a  #00000006
    .end packed-switch
.end method
